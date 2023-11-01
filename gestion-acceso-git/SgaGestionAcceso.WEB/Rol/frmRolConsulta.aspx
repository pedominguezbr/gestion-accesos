<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmRolConsulta.aspx.cs" Inherits="SgaGestionAcceso.WEB.Rol.frmRolConsulta" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Consulta de Roles</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Rol
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="edit rounded" Width="300px"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn rounded btn_search fleft"
                                        OnClick="btnBuscar_Click" Style="margin-right: 0px;" Text="Buscar" Width="150px" />
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnnuevoAplAutorizancion" runat="server" Text="Nuevo" CssClass="btn rounded btn_add fright"
                                        OnClick="btnnuevo" Width="150px" />
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
                    <asp:GridView ID="dgvRol" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" 
                        onpageindexchanging="dgvRol_PageIndexChanging" onrowcommand="dgvRol_RowCommand" 
                        >
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="IdRol" />
                            <asp:BoundField HeaderText="Nombre" DataField="NombreRol" />
                            <asp:BoundField HeaderText="Descripcion" DataField="DescripcionRol" />
                            <asp:TemplateField HeaderText="Estado Activo">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkEstadoActivo" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "EstadoRol")%>'
                                        Enabled='false' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdRol") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle">                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdRol") %>'
                                        CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar datos">                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdRol") %>'
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
    </asp:UpdatePanel>
</asp:Content>
