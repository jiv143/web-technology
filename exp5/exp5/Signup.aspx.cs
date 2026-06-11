using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;
namespace exp5
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Users (FullName, Email, Password) VALUES (@name, @email, @pass)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@pass", txtPassword.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("Signup Successful");
            }
        }
    }
}