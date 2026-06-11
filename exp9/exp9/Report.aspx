<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="exp9.Report" %>

<%@ Register Assembly="CrystalDecisions.Web" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Electronics Mart Report</title>
</head>
<body>

<form id="form1" runat="server">

    <CR:CrystalReportViewer 
        ID="CrystalReportViewer1" 
        runat="server"
        AutoDataBind="true"
        Width="100%" 
        Height="700px"
        EnableDatabaseLogonPrompt="false"
        EnableParameterPrompt="false" />

</form>

</body>
</html>