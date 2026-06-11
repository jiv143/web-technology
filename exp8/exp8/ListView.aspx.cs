using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace exp8
{
    public partial class ListViewPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        // LOAD DATA
        void LoadProducts()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
        }

        // INSERT WITH IMAGE UPLOAD
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string imagePath = "";

            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                imagePath = "Images/" + fileName;

                // Save file to folder
                FileUpload1.SaveAs(Server.MapPath(imagePath));
            }

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
                cmd.Parameters.AddWithValue("@img", imagePath);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            // Clear fields
            txtID.Text = "";
            txtName.Text = "";
            txtPrice.Text = "";
            txtDesc.Text = "";

            LoadProducts();
        }
    }
}