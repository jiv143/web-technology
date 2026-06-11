using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace exp4
{
    public partial class Registration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // 🔥 MANUAL EVENT BINDING (THIS FIXES YOUR ISSUE)
            ddlCountry.SelectedIndexChanged += ddlCountry_SelectedIndexChanged;
            ddlState.SelectedIndexChanged += ddlState_SelectedIndexChanged;

            if (!IsPostBack)
            {
                LoadCountry();

                ddlState.Items.Insert(0, new ListItem("--Select State--", "0"));
                ddlCity.Items.Insert(0, new ListItem("--Select City--", "0"));
            }
        }

        void LoadCountry()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Country", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlCountry.DataSource = dt;
                ddlCountry.DataTextField = "CountryName";
                ddlCountry.DataValueField = "CountryID";
                ddlCountry.DataBind();

                ddlCountry.Items.Insert(0, new ListItem("--Select Country--", "0"));
            }
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            ddlCity.Items.Clear();

            if (ddlCountry.SelectedValue == "0")
            {
                ddlState.Items.Insert(0, new ListItem("--Select State--", "0"));
                return;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM State WHERE CountryID=@cid", con);
                cmd.Parameters.AddWithValue("@cid", ddlCountry.SelectedValue);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlState.DataSource = dt;
                ddlState.DataTextField = "StateName";
                ddlState.DataValueField = "StateID";
                ddlState.DataBind();

                ddlState.Items.Insert(0, new ListItem("--Select State--", "0"));
            }
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();

            if (ddlState.SelectedValue == "0")
            {
                ddlCity.Items.Insert(0, new ListItem("--Select City--", "0"));
                return;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM City WHERE StateID=@sid", con);
                cmd.Parameters.AddWithValue("@sid", ddlState.SelectedValue);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlCity.DataSource = dt;
                ddlCity.DataTextField = "CityName";
                ddlCity.DataValueField = "CityID";
                ddlCity.DataBind();

                ddlCity.Items.Insert(0, new ListItem("--Select City--", "0"));
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Registration VALUES (@name,@email,@country,@state,@city)", con);

                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@country", ddlCountry.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@state", ddlState.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@city", ddlCity.SelectedItem.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Registration Successful')</script>");
            }
        }
    }
}