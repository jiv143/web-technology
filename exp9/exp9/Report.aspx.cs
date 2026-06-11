using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;

namespace exp9
{
    public partial class Report : System.Web.UI.Page
    {
        ReportDocument rpt;

        protected void Page_Init(object sender, EventArgs e)
        {
            LoadReport();
        }

        void LoadReport()
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    con.Open();   // 🔥 important

                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products", con);
                    DataTable dt = new DataTable();

                    da.Fill(dt);   // 🔥 error will show here if problem

                    rpt = new ReportDocument();
                    rpt.Load(Server.MapPath("~/CrystalReport1.rpt"));

                    rpt.SetDataSource(dt);

                    CrystalReportViewer1.ReportSource = rpt;
                    CrystalReportViewer1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<h2>ERROR:</h2> " + ex.Message);
                }
            }
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            if (rpt != null)
            {
                rpt.Close();
                rpt.Dispose();
            }
        }
    }
}