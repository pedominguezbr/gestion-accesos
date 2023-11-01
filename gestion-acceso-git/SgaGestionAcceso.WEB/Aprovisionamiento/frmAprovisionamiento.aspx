<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmAprovisionamiento.aspx.cs" Inherits="SgaGestionAcceso.WEB.Aprovisionamiento.frmAprovisionamiento" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Aprovisionar Datos Para Solicitud de Acceso</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Nro. Solicitud
                                </td>
                                <td>
                                    <asp:TextBox ID="txtnroSolicitud" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="50" Enabled="False" Text="CRQ00000000"></asp:TextBox>
                                </td>
                                <td>
                                    Tipo de Acceso
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTipoAcceso" runat="server" CssClass="edit rounded" Width="200px"
                                        ReadOnly="True" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Solicitante
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSolicitante" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Autorizante
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAutorizante" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAgencia" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSucursal" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fecha Registro
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaRegistro" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Fecha Validación
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaValidacion" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Estado
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEstado" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="btnAprovisionar" runat="server" Text="Aprovisionar" 
                                        CssClass="btn rounded btn_check fright" onclick="btnAprovisionar_Click"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <div class="clear">
                    </div>
                    <h2>
                        Detalle de Solicitud</h2>
                    <asp:GridView ID="dgvdetalleSol" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        CssClass="Size700" OnPageIndexChanging="dgvdetalleSol_PageIndexChanging" OnRowCommand="dgvdetalleSol_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Item">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex +1%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombres">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Persona.Nombres")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellidos">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Persona.Apellidos")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DNI">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Persona.DNI")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Aplicaciones">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TotalAplicaciones")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Estado.Nombre ")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdDetalleSolicitud") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Aplicaciones">
                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>
                </div>
                <ajaxToolKit:ModalPopupExtender ID="mpeDetalleAplicacion" runat="server" TargetControlID="BtnOK"
                    PopupControlID="pnlDetalleAplicacion" OkControlID="BtnOK" CancelControlID="BtnCancel"
                    BackgroundCssClass="mpeBackground">
                </ajaxToolKit:ModalPopupExtender>
                <asp:Panel ID="pnlDetalleAplicacion" runat="server" CssClass="pnlModal" Width="510px" Style="display: none;">
                    <div class="efecto-borde rounded">
                        <h2>
                            Detalle de Aplicación</h2>
                        <asp:Button ID="BtnOK" runat="server" CssClass="btn rounded fleft" Text="Aceptar"
                            Style="display: none;" />
                        <asp:Button ID="BtnCancel" runat="server" CssClass="btn rounded btn_salir fright"
                            Text="Cerrar" />
                        <div>
                            <asp:GridView ID="dgvAplicacioneValidar" runat="server" AutoGenerateColumns="False"
                                CssClass="size500">
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
                                </Columns>
                            </asp:GridView>
                            <span>&nbsp;</span>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
