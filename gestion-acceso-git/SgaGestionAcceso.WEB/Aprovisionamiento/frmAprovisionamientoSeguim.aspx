<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmAprovisionamientoSeguim.aspx.cs" Inherits="SgaGestionAcceso.WEB.Aprovisionamiento.frmAprovisionamientoSeguim" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Seguimiento de Aprovisionamiento</h1>
                    <ajaxToolKit:CalendarExtender ID="cetxtFechaRegistroInicio" runat="server" TargetControlID="txtFechaRegistroInicio"
                        Format="dd/MM/yyyy" />
                    <ajaxToolKit:CalendarExtender ID="cetxtFechaRegistroFin" runat="server" TargetControlID="txtFechaAtencion"
                        Format="dd/MM/yyyy" />
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Nro. Solicitud
                                </td>
                                <td>
                                    <asp:TextBox ID="txtnroSolicitud" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="10"></asp:TextBox>
                                </td>
                                <td>
                                    Agencia
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlAgencia" runat="server" Width="200px" CssClass="edit rounded"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlAgencia_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Solicitante
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSolicitante" runat="server" CssClass="edit rounded" Width="150px"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td>
                                    Sucursal
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSucursal" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fecha Registro
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaRegistroInicio" runat="server" CssClass="edit rounded editCalendar"
                                        Width="82px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtFechaRegistroInicio" runat="server" ControlToValidate="txtFechaRegistroInicio"
                                        ErrorMessage="<span class='warning'></span>" Display="Static" SetFocusOnError="true"
                                        ValidationGroup="busqueda" ValidationExpression="\d{2}/\d{2}/\d{4}" CssClass="validator"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    Fecha Atención
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaAtencion" runat="server" CssClass="edit rounded editCalendar"
                                        Width="82px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtFechaRegistroFin" runat="server" ControlToValidate="txtFechaAtencion"
                                        ErrorMessage="<span class='warning'></span>" Display="Static" SetFocusOnError="true"
                                        ValidationGroup="busqueda" ValidationExpression="\d{2}/\d{2}/\d{4}" CssClass="validator"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Autorizante</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAutorizante" runat="server" CssClass="edit rounded" Width="150px"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td>
                                    Estado
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlEstado" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tipo Acceso
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlTipoAcceso" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn rounded btn_search fleft"
                                        Style="margin-right: 0px;" Text="Buscar" Width="150px" OnClick="btnBuscar_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    &nbsp;</td>
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
                    <%--<h2>
                        Detalle de Solicitud</h2>--%>
                    <asp:GridView ID="dgvSolicitudAcceso" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" OnPageIndexChanging="dgvSolicitudAcceso_PageIndexChanging"
                        OnRowCommand="dgvSolicitudAcceso_RowCommand" OnRowDataBound="dgvSolicitudAcceso_RowDataBound">
                        <Columns>
                            <asp:BoundField HeaderText="Nro Solicitud" DataField="NumeroSolicitud" />
                            <asp:TemplateField HeaderText="Solicitante">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Solicitante.NombresCompletos")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Autorizante">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem, "Autorizante.NombresCompletos")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Agencia">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Agencia.Nombre")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="F. Solicitud" DataField="FechaRegistro" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />
                            <asp:TemplateField HeaderText="Tipo Acceso">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TipoAcceso.Nombre")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Especialista" DataField="" Visible="false" />
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Estado.Nombre")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdSolicitud") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle de Solicitud">
                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>                           
                            
                        </Columns>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
