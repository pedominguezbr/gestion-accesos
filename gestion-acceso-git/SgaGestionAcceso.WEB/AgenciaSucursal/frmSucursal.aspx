<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmSucursal.aspx.cs" Inherits="SgaGestionAcceso.WEB.AgenciaSucursal.frmSucursal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Actualizacion de Sucursales</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Id Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIdSucursal" runat="server" CssClass="edit rounded" Width="20px"
                                        MaxLength="10" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Nombre Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSucursal" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtSucursal" runat="server" ControlToValidate="txtSucursal"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Direccion
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="edit rounded" Width="250px" MaxLength="10"></asp:TextBox>
                                </td>
                                <td>
                                    Agencia
                                </td>
                                <td>
                                <div class="requiredInput">
                                    <asp:DropDownList ID="ddlAgencia" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvAgencia" runat="server" ControlToValidate="ddlAgencia"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Departamento
                                </td>
                                <td>
                                    
                                    <div class="requiredInput">
                                   <asp:DropDownList ID="ddlDepartamento" runat="server" Width="200px" 
                                         CssClass="edit rounded" AutoPostBack="True" 
                                         onselectedindexchanged="ddlDepartamento_SelectedIndexChanged">
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvDepartamento" runat="server" ControlToValidate="ddlDepartamento"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                                <td>Provincia
                                </td>
                                <td>
                                 <div class="requiredInput">
                                   <asp:DropDownList ID="ddlProvincia" runat="server" Width="200px" 
                                        CssClass="edit rounded" AutoPostBack="True" 
                                        onselectedindexchanged="ddlProvincia_SelectedIndexChanged">
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Distrito
                                </td>
                                <td> <div class="requiredInput">
                                     <asp:DropDownList ID="ddlDistrito" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDistrito" runat="server" ControlToValidate="ddlDistrito"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                                <td>
                                </td>
                                <td>
                                     <asp:HiddenField ID="hdiidAgencia" runat="server" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                </td>
                                <td>
                                   <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" /></td>
                                <td>
                                </td>
                                <td>
                                   
                                    <asp:Button ID="btnGrabar" runat="server" CssClass="btn rounded btn_save fleft" 
                                        OnClick="btnGrabar_Click" Text="Registrar" ValidationGroup="validacionDatos" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <div class="clear">
                    </div>
                    
                    
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
