<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmDetalleSolicitud.aspx.cs" Inherits="SgaGestionAcceso.WEB.Solicitud.frmDetalleSolicitud" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Registro de Detalle de Solicitud de Acceso</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    DNI
                                </td>
                                <td>
                                    <div class="requiredInput">
                                        
                                        <asp:TextBox ID="txtDNI" runat="server" CssClass="edit rounded" Width="100px" MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtDNI" runat="server" ControlToValidate="txtDNI"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacion"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btBuscar" runat="server" Text="Buscar" CssClass="btn rounded btn_search"
                                            ValidationGroup="validacion" OnClick="btBuscar_Click" />
                                    </div>
                                </td>
                                <td>
                            </tr>
                            <tr>
                                <td>
                                    Nombres y Apellidos
                                </td>
                                <td colspan="2">
                                    <div class="requiredInput">
                                      
                                        <asp:TextBox ID="txtNombresApellidos" runat="server" CssClass="edit rounded" Width="350px"
                                            MaxLength="50" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtNombresApellidos" runat="server" ControlToValidate="txtNombresApellidos"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionGrabar"></asp:RequiredFieldValidator></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Aplicación
                                </td>
                                <td>
                                    <div class="requiredInput">
                                      
                                        <asp:DropDownList ID="ddlAplicacion" runat="server" Width="200px" CssClass="edit rounded"
                                            AutoPostBack="True" OnSelectedIndexChanged="ddlAplicacion_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvddlAplicacion" runat="server" ControlToValidate="ddlAplicacion"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDet"></asp:RequiredFieldValidator>
                                    </div>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Puesto
                                </td>
                                <td>
                                    <div class="requiredInput">
                                      
                                        <asp:DropDownList ID="ddlPuesto" runat="server" Width="200px" CssClass="edit rounded">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvddlPuesto" runat="server" ControlToValidate="ddlPuesto"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDet"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" CssClass="btn rounded btn_add"
                                            ValidationGroup="validacionDet" OnClick="btnAdicionar_Click" />
                                    </div>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnGrabar" runat="server" Text="Registrar" CssClass="btn rounded btn_save fleft"
                                        ValidationGroup="validacionGrabar" OnClick="btnGrabar_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fright"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            <div>
                <div class="clear">
                </div>
                <h2>
                    Detalle</h2>
                <asp:GridView ID="dgvAplicaciones" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                    CssClass="Size700" OnRowDataBound="dgvAplicaciones_RowDataBound" 
                    OnRowCommand="dgvAplicaciones_RowCommand" 
                    onpageindexchanging="dgvAplicaciones_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField HeaderText="Item">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItemIndex +1%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Aplicación">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Aplicacion.Nombre")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Puesto">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Puesto.Nombre")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdDetSolApliPuesto") %>'
                                    CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar">
                           
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle CssClass="pager" />
                </asp:GridView>
            </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlAplicacion" EventName="SelectedIndexChanged" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
