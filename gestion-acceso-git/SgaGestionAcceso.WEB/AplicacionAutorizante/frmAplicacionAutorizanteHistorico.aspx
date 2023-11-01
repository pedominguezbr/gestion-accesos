<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmAplicacionAutorizanteHistorico.aspx.cs" Inherits="SgaGestionAcceso.WEB.AplicacionAutorizante.frmAplicacionAutorizanteHistorico" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Historico de Permisos de Aplicacion por Autorizante</h1>
                         <ajaxToolKit:CalendarExtender ID="cetxtFechaRegistroInicio" runat="server" TargetControlID="txtFechaRegistroInicio"
                        Format="dd/MM/yyyy" />
                    <ajaxToolKit:CalendarExtender ID="cetxtFechaRegistroFin" runat="server" TargetControlID="txtFechaRegistroFin"
                        Format="dd/MM/yyyy" />
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Aplicacion
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlAplicacion" runat="server" Width="200px" 
                                        CssClass="edit rounded" AutoPostBack="True" 
                                       >
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    Autorizante
                                </td>
                                <td>
                                       <asp:DropDownList ID="ddlAutorizante" runat="server" Width="200px" 
                                        CssClass="edit rounded" AutoPostBack="True" 
                                       >
                                    </asp:DropDownList>
                                </td>
                            </tr>
                              <tr>
                                <td>
                                    Fecha Inicio
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaRegistroInicio" runat="server" CssClass="edit rounded editCalendar"
                                        Width="82px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtFechaRegistroInicio" runat="server" ControlToValidate="txtFechaRegistroInicio"
                                        ErrorMessage="<span class='warning'></span>" Display="Static" SetFocusOnError="true"
                                        ValidationGroup="busqueda" ValidationExpression="\d{2}/\d{2}/\d{4}" CssClass="validator"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    Fecha Fin
                                </td>
                                <td>
                                       <asp:TextBox ID="txtFechaRegistroFin" runat="server" CssClass="edit rounded editCalendar"
                                        Width="82px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtFechaRegistroFin" runat="server" ControlToValidate="txtFechaRegistroFin"
                                        ErrorMessage="<span class='warning'></span>" Display="Static" SetFocusOnError="true"
                                        ValidationGroup="busqueda" ValidationExpression="\d{2}/\d{2}/\d{4}" CssClass="validator"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>  <asp:Button ID="btnExportar" runat="server" CssClass="btn rounded btn_search fleft"
                                        Style="margin-right: 0px;" Text="Exportar" Width="150px" 
                                        onclick="btnExportar_Click"  />
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
                    <h2>
                        Resultado de Busqueda</h2>
                    <asp:GridView ID="dgvConsultaAplAutoHisto" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" OnPageIndexChanging="dgvConsultaAplAutoHisto_PageIndexChanging"
                        OnRowCommand="dgvConsultaAplAutoHisto_RowCommand" >
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="IdHistorico" />
                             <asp:TemplateField HeaderText="Aplicacion">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem, "Aplicacion.Nombre")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Autorizante">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem, "Autorizante.NombresCompletos")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Accion" DataField="Accion" />
                            <asp:BoundField HeaderText="Comentario" DataField="Comentario" />
                            <asp:BoundField HeaderText="Usuario Modificacion" DataField="UsuarioModificacion" />
                            <asp:BoundField HeaderText="F. Modificacion" DataField="FechaModificacion" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />
                                                    
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDescargar" runat="server" CommandArgument='<%# Eval("RutaEvidencia") %>'
                                        CommandName="cmdDescargar" CssClass="descargar" ToolTip="Descargar Evidencia">
                            
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
            <asp:PostBackTrigger ControlID="dgvConsultaAplAutoHisto" />
            <asp:PostBackTrigger ControlID="btnExportar" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
