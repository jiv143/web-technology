using System;

namespace Experiment10
{
    public partial class ExchangeUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnInvoke_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. Create a local instance of the Web Service
                GlobalService serviceClient = new GlobalService();

                // 2. Capture the input from the TextBox
                double amount = Convert.ToDouble(txtUSD.Text);

                // 3. Exchange data: Call the Web Method and store the response
                string response = serviceClient.GetExchangeData(amount);

                // 4. Update the UI with the data received from the service
                lblResult.Text = response;
            }
            catch (Exception ex)
            {
                lblResult.Text = "Error: Please enter a valid numerical amount.";
                lblResult.Style["color"] = "red";
            }
        }
    }
}