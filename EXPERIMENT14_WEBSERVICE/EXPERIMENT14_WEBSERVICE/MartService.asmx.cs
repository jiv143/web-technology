using System;
using System.Web.Services;

namespace EXPERIMENT14_WEBSERVICE
{
    [WebService(Namespace = "http://electronicmart.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class MartService : System.Web.Services.WebService
    {
        [WebMethod]
        public double GetTax(double amount)
        {
            return amount * 0.18; // 18% GST
        }

        [WebMethod]
        public double GetTotal(double amount)
        {
            return amount + (amount * 0.18);
        }
    }
}