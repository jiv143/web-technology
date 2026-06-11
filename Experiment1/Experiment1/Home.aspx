<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" 
AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Experiment1.Home" %> 
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

<style>

/* Section Title */
.featured {
    text-align: center;
    padding: 60px 20px;
}

.featured h2 {
    font-size: 32px;
    font-weight: 600;
    margin-bottom: 40px;
    color: #333;
}

/* Product Layout */
.product-list {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
}

/* Product Card */
.product {
    width: 250px;
    text-align: center;
    overflow: hidden;
    position: relative;
}

/* Product Image */
.product img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 12px;
    transition: transform 0.4s ease;
}

/* Image Zoom Effect */
.product:hover img {
    transform: scale(1.1);
}

/* Product Title */
.product h3 {
    margin-top: 15px;
    font-size: 20px;
    font-weight: 500;
}

/* Add subtle glow effect */
.product:hover {
    box-shadow: 0 10px 25px rgba(13,110,253,0.2);
}

/* Hero improvements */
.hero h1 {
    animation: fadeInDown 1s ease-in-out;
}

.hero p {
    animation: fadeInUp 1.2s ease-in-out;
}

/* Animations */
@keyframes fadeInDown {
    from {
        opacity: 0;
        transform: translateY(-30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Button hover improvement */
.hero .btn {
    display: inline-block;
    margin-top: 25px;
}

</style>

</asp:Content> 
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 

    <!-- Hero Section --> 
    <section class="hero"> 
        <h1>Upgrade to Smart Electronics</h1> 
        <p>Discover the latest gadgets at unbeatable prices</p> 
        <a href="#" class="btn">Shop Now</a> 
    </section> 

    <!-- Featured Products --> 
    <section class="featured"> 
        <h2>Top Selling Electronics</h2> 
        <div class="product-list"> 

            <div class="product"> 
                <img src="Images/smartphone.png" alt="Smartphone"> 
                <h3>Smartphones</h3> 
            </div> 

            <div class="product"> 
                <img src="Images/laptop.jpg" alt="Laptop"> 
                <h3>Laptops</h3> 
            </div> 

            <div class="product"> 
                <img src="Images/headphone.jpg" alt="Headphones"> 
                <h3>Headphones</h3> 
            </div> 

        </div> 
    </section> 

</asp:Content>