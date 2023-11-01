<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmPersonaConsulta.aspx.cs" Inherits="SgaGestionAcceso.WEB.Persona.frmPersonaConsulta" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Consulta de Personas</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Nombres
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNombres" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="10"></asp:TextBox>
                                </td>
                                <td>
                                    DNI
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDNI" runat="server" CssClass="edit rounded" Width="100px" MaxLength="10"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Apellido Paterno
                                </td>
                                <td>
                                    <asp:TextBox ID="txtApePaterno" runat="server" CssClass="edit rounded" Width="150px"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td>
                                    Apellido Materno
                                </td>
                                <td>
                                    <asp:TextBox ID="txtApeMaterno" runat="server" CssClass="edit rounded" Width="150px"
                                        MaxLength="50"></asp:TextBox>
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
                                    <asp:Button ID="btnNuevaPersona" runat="server" Text="Nueva Persona" CssClass="btn rounded btn_add fleft"
                                        OnClick="btnNuevaPersona_Click" />
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
                    <h2>
                        Resultado de Busqueda</h2>
                    <asp:GridView ID="dgvConsultaPersona" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" OnPageIndexChanging="dgvConsultaPersona_PageIndexChanging"
                        OnRowCommand="dgvConsultaPersona_RowCommand" OnRowDataBound="dgvConsultaPersona_RowDataBound">
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="IdPersona" />
                            <asp:BoundField HeaderText="DNI" DataField="DNI" />
                            <asp:BoundField HeaderText="Nombres" DataField="Nombres" />
                            <asp:BoundField HeaderText="Apellido Paterno" DataField="ApellidoPaterno" />
                            <asp:BoundField HeaderText="Apellido Materno" DataField="ApellidoMaterno" />
                            <asp:BoundField HeaderText="Correo" DataField="Correo" />
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
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdPersona") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle de la Persona">                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdPersona") %>'
                                        CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar datos de la Persona">                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdPersona") %>'
                                        CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar Persona">                           
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
