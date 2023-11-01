<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmAplicacionAutorizante.aspx.cs" Inherits="SgaGestionAcceso.WEB.AplicacionAutorizante.frmAplicacionAutorizante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Mantenimiento de Aplicacion Autorizante</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    ID
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIdAplicacionAutorizante" runat="server" CssClass="edit rounded" Width="80px"
                                        MaxLength="10" ReadOnly="True" Enabled="false"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Aplicacion
                                </td>
                                <td>
                                    <div class="requiredInput">
                                    <asp:DropDownList ID="ddlAplicacion" runat="server" Width="200px" 
                                        CssClass="edit rounded" 
                                       >
                                    </asp:DropDownList>

                                       <asp:RequiredFieldValidator ID="rfvAplicacion" runat="server" ControlToValidate="ddlAplicacion"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                                <td>
                                    Autorizante
                                </td>
                                <td>
                                   <div class="requiredInput">
                                    <asp:DropDownList ID="ddlAutorizante" runat="server" Width="200px" 
                                        CssClass="edit rounded">
                                    </asp:DropDownList>

                                       <asp:RequiredFieldValidator ID="rfvAutorizante" runat="server" ControlToValidate="ddlAutorizante"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    Cargar Evidencia
                                </td>
                                <td>
                                   <div class="requiredInput">
                                    <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="edit rounded" 
                                           Width="300px"/>
                                   <asp:RequiredFieldValidator ID="rfvFileUploadControl" runat="server" ControlToValidate="FileUploadControl"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                                <td>
                                    Comentarios
                                </td>
                                <td>
                                    <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" CssClass="edit rounded"
                                        Height="100px" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Estado
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkEstado" runat="server" />
                                </td>
                                <td>
                                    
                                </td>
                                <td>
                                   
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
        <Triggers>
            <asp:PostBackTrigger ControlID="btnGrabar" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
