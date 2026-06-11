<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewReport.aspx.cs" Inherits="experiment_9.ViewReport" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Experiment 9 - Inventory Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <CR:CrystalReportViewer 
    ID="CrystalReportViewer1" 
    runat="server" 
    AutoDataBind="true" 
    ToolPanelView="None" 
    BestFitPage="True" 
    Width="100%" />
        </div>
    </form>
</body>
</html>