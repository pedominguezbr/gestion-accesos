<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmRol.aspx.cs" Inherits="SgaGestionAcceso.WEB.Rol.frmRol" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Detalle del Rol</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size500">
                        <tbody>
                            <tr>
                                <td>
                                    Id Rol
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIdRol" runat="server" CssClass="edit rounded" Width="40px"
                                        MaxLength="10" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nombre
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNombre" runat="server" CssClass="edit rounded" Width="300px" 
                                        MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvRUC" runat="server" ControlToValidate="txtNombre"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Descripcion</td>
                                <td>
                                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="edit rounded" 
                                        Width="300px" Height="87px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                              <tr>
                                <td>
                                    Estado</td>
                                <td>
                                 
                                    <asp:CheckBox ID="chkEstado" runat="server" Checked="True" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                       <asp:Button ID="btnGrabar" runat="server" CssClass="btn rounded btn_save fleft" 
                                           OnClick="btnGrabar_Click" Text="Registrar" ValidationGroup="validacionDatos" />
                                       <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
