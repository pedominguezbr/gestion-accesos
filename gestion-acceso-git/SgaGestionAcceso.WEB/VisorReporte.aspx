﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisorReporte.aspx.cs" Inherits="SgaGestionAcceso.WEB.VisorReporte" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" DocumentMapWidth="50%" Height="800px">
    </rsweb:ReportViewer>

   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </form>
</body>
</html>
