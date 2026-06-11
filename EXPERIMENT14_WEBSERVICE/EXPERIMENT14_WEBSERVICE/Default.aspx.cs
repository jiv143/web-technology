using System;

namespace EXPERIMENT14_WEBSERVICE
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. Create an instance of the Web Service "Bridge"
                MyMartService.MartServiceSoapClient client = new MyMartService.MartServiceSoapClient();

                double price = Convert.ToDouble(txtPrice.Text);

                // 2. Call the methods from the Web Service
                double taxResult = client.GetTax(price);
                double totalResult = client.GetTotal(price);

                // 3. Display the results
                lblTax.Text = taxResult.ToString("N2");
                lblTotal.Text = totalResult.ToString("N2");
            }
            catch (Exception)
            {
                lblTotal.Text = "Invalid Input";
            }
        }
    }
}