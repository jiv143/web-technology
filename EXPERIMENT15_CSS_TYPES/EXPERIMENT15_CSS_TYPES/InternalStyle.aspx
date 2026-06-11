<%@ Page Language="C#" AutoEventWireup="true" %>
<html>
<head>
    <style>
        body { background-color: #f1fcf9; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; font-family: 'Helvetica Neue', Arial; }
        .internal-box { background: white; width: 400px; padding: 35px; border-radius: 12px; box-shadow: 0 10px 20px rgba(0,0,0,0.05); text-align: center; }
        .int-header { color: #10b981; border-bottom: 2px solid #d1fae5; padding-bottom: 10px; }
        .btn-int { background-color: #10b981; color: white; border: none; padding: 10px 40px; border-radius: 50px; font-size: 16px; cursor: pointer; }
    </style>
</head>
<body>
    <div class="internal-box">
        <h2 class="int-header">Internal Style Mart</h2>
        <p style="color: #6b7280;">CSS logic is contained within the head section.</p>
        <button class="btn-int">Explore Mart</button>
    </div>
</body>
</html>