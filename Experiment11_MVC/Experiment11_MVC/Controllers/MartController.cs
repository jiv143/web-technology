using Experiment11_MVC.Models;
using System.Collections.Generic;
using System.Web.Mvc;

public class MartController : Controller
{
    public ActionResult Index()
    {
        // Hardcoded list of Electronic Mart items
        var items = new List<Product>
        {
            new Product { ProductID=501, ProductName="iPhone 15", Category="Mobile", Price=79000, Status="In Stock" },
            new Product { ProductID=502, ProductName="Sony Headphones", Category="Audio", Price=15000, Status="In Stock" },
            new Product { ProductID=503, ProductName="MacBook Air", Category="Computers", Price=92000, Status="Limited Stock" }
        };

        return View(items);
    }
}