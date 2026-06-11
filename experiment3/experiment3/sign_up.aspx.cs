using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace experiment3
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                // CHECK DUPLICATE EMAIL
                string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email=@email";
                SqlCommand checkCmd = new SqlCommand(checkQuery, con);
                checkCmd.Parameters.AddWithValue("@email", txtEmail.Text);

                int count = (int)checkCmd.ExecuteScalar();

                if (count > 0)
                {
                    Response.Write("<script>alert('Email already exists!')</script>");
                }
                else
                {
                    string query = "INSERT INTO Users (FullName, Email, Password) VALUES (@name, @email, @pass)";
                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@pass", txtPassword.Text);

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Signup Successful')</script>");
                }

                con.Close();
            }

            LoadData();
        }

        void LoadData()
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT FullName, Email FROM Users";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();

                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}