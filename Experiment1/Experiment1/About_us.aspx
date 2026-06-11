<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" 
AutoEventWireup="true" CodeFile="About_us.aspx.cs" 
Inherits="Experiment1.About_us" %> 
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 

    <style> 

        .about-container { 
            display: flex; 
            align-items: center; 
            justify-content: center; 
            gap: 50px; 
            padding: 70px 20px; 
            max-width: 1100px; 
            margin: auto; 
            flex-wrap: wrap; 
        } 

        /* Image Styling */
        .about-img { 
            width: 100%; 
            max-width: 500px; 
            border-radius: 20px; 
            height: 600px; 
            object-fit: cover;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
            transition: 0.4s;
        } 

        .about-img:hover {
            transform: scale(1.03);
        }

        /* Text Section */
        .about-text { 
            flex: 1; 
            text-align: left; 
            background: rgba(255,255,255,0.9);
            padding: 35px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
            backdrop-filter: blur(10px);
        } 

        .about-text h1 { 
            color: #0d6efd; 
            font-weight: 600;
            margin-bottom: 15px;
        } 

        .about-text h2 { 
            color: #6610f2; 
            margin-top: 20px;
            font-size: 22px;
        } 

        .about-text p {
            color: #555;
            line-height: 1.6;
        }

        /* List Styling */
        .about-text ul { 
            list-style: none; 
            padding: 0; 
            margin-top: 10px;
        } 

        .about-text ul li { 
            padding: 8px 0;
            font-weight: 500;
        }

        .about-text ul li::before { 
            content: "✔ "; 
            color: #0d6efd; 
            font-weight: bold; 
            margin-right: 5px;
        } 

        /* Section animation */
        .about-text, .about-img {
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .about-img {
                height: 350px;
            }
        }

    </style> 

    <div class="about-container"> 

        <!-- Image --> 
        <div> 
            <img src="Images/about0.jpg" class="about-img" /> 
        </div> 

        <!-- Text Content --> 
        <div class="about-text"> 

            <h1>About Electronics Mart</h1> 

            <p>Welcome to <strong>Electronics Mart</strong>, your one-stop destination for the latest and most reliable electronic gadgets.</p> 

            <h2>Our Story</h2> 
            <p>Founded with a passion for technology, Electronics Mart has grown into a trusted platform for delivering high-quality electronic products to customers.</p> 

            <h2>Our Mission</h2> 
            <p>We aim to provide cutting-edge technology at affordable prices, making modern gadgets accessible to everyone.</p> 

            <h2>Why Choose Us?</h2> 
            <ul> 
                <li> Latest Smartphones & Gadgets</li> 
                <li> High-Quality & Trusted Brands</li> 
                <li> Fast & Reliable Delivery</li> 
                <li> Excellent Customer Support</li> 
            </ul> 

        </div> 

    </div> 

</asp:Content>