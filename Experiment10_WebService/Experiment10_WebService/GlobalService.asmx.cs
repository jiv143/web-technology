using System;
using System.Web.Services;

namespace Experiment10
{
    [WebService(Namespace = "http://globalexchange.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class GlobalService : System.Web.Services.WebService
    {
        [WebMethod]
        public string GetExchangeData(double usdAmount)
        {
            // Real-time calculation logic
            double rate = 83.50; // Exchange rate USD to INR
            double inr = usdAmount * rate;
            double gst = inr * 0.18; // 18% GST calculation
            double total = inr + gst;

            // This string is the "Data" being exchanged back to the client
            return $"USD ${usdAmount} converts to ₹{inr:N2}. " +
                   $"Plus 18% GST (₹{gst:N2}), the Total is: ₹{total:N2}";
        }
    }
}