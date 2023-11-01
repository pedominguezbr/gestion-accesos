<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmUsuarioConsulta.aspx.cs" Inherits="SgaGestionAcceso.WEB.Usuario.frmUsuarioConsulta" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Consulta de Usuarios</h1>
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
                                    Codigo
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="10"></asp:TextBox>
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
                                    <asp:Button ID="btnnuevoUsuario" runat="server" Text="Nuevo Usuario" CssClass="btn rounded btn_add fleft"
                                        OnClick="btnnuevoUsuario_Click" />
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
                    <asp:GridView ID="dgvConsultaUsuario" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" OnPageIndexChanging="dgvConsultaUsuario_PageIndexChanging"
                        OnRowCommand="dgvConsultaUsuario_RowCommand" OnRowDataBound="dgvConsultaUsuario_RowDataBound">
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="IdUsuario" />
                            <asp:BoundField HeaderText="Codigo" DataField="CodUsuario" />
                            <asp:TemplateField HeaderText="Nombres">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Persona.Nombres") %>'></asp:Label>
                                </ItemTemplate>
                             
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellido Paterno">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Persona.ApellidoPaterno") %>'></asp:Label>
                                </ItemTemplate>
                              
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellido Materno">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Persona.ApellidoMaterno") %>'></asp:Label>
                                </ItemTemplate>
                               
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="F. Creacion" DataField="FechaCreacion" 
                                DataFormatString="{0:dd/MM/yyyy}" HtmlEncode="False" />
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkEstadoActivo" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "EstadoActivo")%>'
                                        Enabled='false' />
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificarPermiso" runat="server" CommandArgument='<%# Eval("IdUsuario") %>'
                                        CommandName="cmdModificarPermiso" CssClass="modificarPermisos" ToolTip="Modificar Permisos" >                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                               <ItemStyle CssClass="fixWidthDgvCmd" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdUsuario") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle del Usuario">                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdUsuario") %>'
                                        CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar datos del Usuario">                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdUsuario") %>'
                                        CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar Usuario">                           
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
