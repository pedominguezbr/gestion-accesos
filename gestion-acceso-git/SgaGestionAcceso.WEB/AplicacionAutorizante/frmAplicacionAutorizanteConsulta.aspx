<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmAplicacionAutorizanteConsulta.aspx.cs" Inherits="SgaGestionAcceso.WEB.AplicacionAutorizante.frmAplicacionAutorizanteConsulta" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Consulta de Aplicacion por Autorizante</h1>
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
                                </td>
                                <td>
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
                                    <asp:Button ID="btnnuevoAplAutorizancion" runat="server" 
                                        Text="Nuevo" CssClass="btn rounded btn_add fleft" 
                                        onclick="btnnuevoAplAutorizancion_Click" Width="150px"
                                         />
                                </td>
                                <td>
                                   <asp:Button ID="btnConsultarHistorico" runat="server" Text="Ver Historico" 
                                        CssClass="btn rounded btn_search fleft" 
                                        onclick="btnConsultarHistorico_Click" Width="150px"  />
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
                    <asp:GridView ID="dgvConsultaAplAutorizacion" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" OnPageIndexChanging="dgvConsultaAplAutorizacion_PageIndexChanging"
                        OnRowCommand="dgvConsultaAplAutorizacion_RowCommand" >
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="IdAplicacionAutorizante" />
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
                             <asp:BoundField HeaderText="Comentario" DataField="Comentario" />
                            <asp:BoundField HeaderText="Usuario Creacion" DataField="UsuarioCreacion" />
                            <asp:BoundField HeaderText="F. Creacion" DataField="FechaCreacion" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />
                            <asp:TemplateField HeaderText="Estado Activo">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkEstadoActivo" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "Estado")%>'
                                        Enabled='false' />
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDescargar" runat="server" CommandArgument='<%# Eval("RutaEvidencia") %>'
                                        CommandName="cmdDescargar" CssClass="descargar" ToolTip="Descargar Evidencia">
                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdAplicacionAutorizante") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle">                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdAplicacionAutorizante") %>'
                                        CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar datos">                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdAplicacionAutorizante") %>'
                                        CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar Datos">                           
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
            <asp:PostBackTrigger ControlID="dgvConsultaAplAutorizacion" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
