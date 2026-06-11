using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace exp7
{
    public partial class GridViewPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        // ================= LOAD DATA =================
        void LoadProducts()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        // ================= INSERT DATA =================
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"INSERT INTO Products 
                                (ProductID, ProductName, Price, Description, Images)
                                VALUES 
                                (@id, @name, @price, @desc, @img)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@id", txtID.Text);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                cmd.Parameters.AddWithValue("@desc", txtDesc.Text);
                cmd.Parameters.AddWithValue("@img", txtImage.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            // clear inputs
            txtID.Text = "";
            txtName.Text = "";
            txtPrice.Text = "";
            txtDesc.Text = "";
            txtImage.Text = "";

            // refresh table
            LoadProducts();
        }
    }
}