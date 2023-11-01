<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmPersona.aspx.cs" Inherits="SgaGestionAcceso.WEB.Persona.frmPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Mantenimiento de Personas</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    ID
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIdPersona" runat="server" CssClass="edit rounded" Width="80px"
                                        MaxLength="10" ReadOnly="True" Enabled="false"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    DNI
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDNI" runat="server" CssClass="edit rounded" Width="80px" MaxLength="8"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    Nombres
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNombres" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="100"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="rfvNombres" runat="server" ControlToValidate="txtNombres"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Apellido Paterno
                                </td>
                                <td>
                                    <asp:TextBox ID="txtApePaterno" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="100"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="rfvApePaterno" runat="server" ControlToValidate="txtApePaterno"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    Apellido Materno
                                </td>
                                <td>
                                    <asp:TextBox ID="txtApeMaterno" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="100"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Correo Electronico
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCorreoElectronico" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="100"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        ControlToValidate="txtCorreoElectronico" ErrorMessage="<span class='warning'></span>" CssClass="validator" ValidationGroup="validacionDatos"></asp:RegularExpressionValidator>

                                </td>
                                <td>
                                    Estado
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkEstado" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" />
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnGrabar" runat="server" CssClass="btn rounded btn_save fleft" OnClick="btnGrabar_Click"
                                        Text="Registrar" ValidationGroup="validacionDatos" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
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
                    <%--    <h2>
                        Resultado de Busqueda</h2>--%>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
