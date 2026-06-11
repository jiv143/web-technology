using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Experiment1
{
    public partial class Contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Contact (FullName, Email, Phone, Message) VALUES (@name, @email, @phone, @msg)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@msg", txtMessage.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Message Sent Successfully!')</script>");

                // Clear fields
                txtName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtMessage.Text = "";
            }
        }
    }
}