<%@ Page Title="" Language="C#" MasterPageFile="~/SgaLoginGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="SgaGestionAcceso.WEB.Login.frmLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="loginBox" style="min-height:300px;">
        <table border="0" cellpadding="0" cellspacing="0" class="fix rounded" >
            <thead>
                <tr>
                <th colspan="3">Login</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Usuario</td>
                    <td><asp:TextBox ID="txtUsuario" runat="server" CssClass="edit rounded" 
                            Width="170px" MaxLength="14"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator id="rfvTxtUsuario" runat="server"
                            ControlToValidate="txtUsuario"
                            ErrorMessage="<span class='warning'></span>"
                            Display="Static"
                            InitialValue="" CssClass="validator"></asp:RequiredFieldValidator>        
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="edit rounded" 
                            TextMode="Password" Width="170px" MaxLength="10"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator id="rfvTxtPassword" runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="<span class='warning'></span>"
                            Display="Static"
                            InitialValue="">
                        </asp:RequiredFieldValidator>       
                    </td>
                </tr>
                  
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" 
                            CssClass="btn rounded" onclick="btnIngresar_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMensaje" runat="server" class="mensaje"></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
