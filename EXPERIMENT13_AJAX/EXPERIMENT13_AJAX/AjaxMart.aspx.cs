using System;
using System.Web.UI;

namespace EXPERIMENT13_AJAX
{
    public partial class AjaxMart : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initial load logic can go here
        }

        protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            // When the user selects an item, the Value (Price) is assigned to the label
            if (ddlProducts.SelectedValue != "0")
            {
                lblPrice.Text = ddlProducts.SelectedValue;
            }
            else
            {
                lblPrice.Text = "0";
            }
        }
    }
}