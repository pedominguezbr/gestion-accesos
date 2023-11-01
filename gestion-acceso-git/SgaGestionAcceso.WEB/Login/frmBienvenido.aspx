<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmBienvenido.aspx.cs" Inherits="SgaGestionAcceso.WEB.Login.frmBienvenido" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
    <ContentTemplate>

    <span class="MsjBienvenida">
        Bienvenido 
        <asp:Label ID="lbNombreUsuario" runat="server" Text="Juan Pérez" CssClass="MsjNombre"></asp:Label>
    </span>
    
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
