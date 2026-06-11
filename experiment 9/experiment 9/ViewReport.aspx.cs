using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;

namespace experiment_9
{
    public partial class ViewReport : System.Web.UI.Page
    {
        // Define the report object at the class level
        ReportDocument rpt = new ReportDocument();

        protected void Page_Init(object sender, EventArgs e)
        {
            try
            {
                // 1. Get connection string from Web.config
                string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    // 2. Fetch data from the new database
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    // 3. Load the report file
                    string reportPath = Server.MapPath("~/CrystalReport1.rpt");

                    // ADD THIS CHECK: It will print the path on your screen if the file is missing
                    if (!System.IO.File.Exists(reportPath))
                    {
                        Response.Write("REPORT FILE NOT FOUND AT: " + reportPath);
                        return;
                    }

                    rpt.Load(reportPath);

                    // 4. Send the data to the report
                    rpt.SetDataSource(dt);
                    // This will force the report to download as a PDF instead of showing on the page
                    //rpt.ExportToHttpResponse(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, Response, false, "ExportedReport");

                    // 5. Link the report to the Viewer on the screen
                    CrystalReportViewer1.ReportSource = rpt;
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        // Clean up memory when the user closes the page
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