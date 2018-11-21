using System;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Data;

namespace Lojinha
{
    public partial class _Default : Page
    {

        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=compraki;User Id=root;password=root");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string login = txtlogin.Text;
            string senha = txtsenha.Text;
            int tipo;

            con.Open();

            //Comando Para Pegar Usuário
            MySqlCommand comando_login = con.CreateCommand();
            comando_login.CommandType = CommandType.Text;
            comando_login.CommandText = "SELECT * FROM usuarios WHERE login='" + login + "' AND senha='" + senha + "'";
            comando_login.ExecuteNonQuery();

            //Comando Para Pegar o Tipo
            MySqlCommand comando_tipo = con.CreateCommand();
            comando_tipo.CommandType = CommandType.Text;
            comando_tipo.CommandText = "SELECT tipo FROM usuarios WHERE login='" + login + "' AND senha='" + senha + "'";
            comando_tipo.ExecuteNonQuery();
            object codprod = comando_tipo.ExecuteScalar();
            tipo = Convert.ToInt32(codprod);

            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(comando_login);
            da.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                Session["login"] = dr[1].ToString();
                if (tipo == 1)
                {
                    Response.Redirect("produtos.aspx");
                } else if(tipo == 2)
                {
                    Response.Redirect("sistema.aspx");
                } else
                {
                    con.Close();
                }
            }

            lblMensagem.Text = "Usuário ou Senha Inválida!";
        }
    }
}