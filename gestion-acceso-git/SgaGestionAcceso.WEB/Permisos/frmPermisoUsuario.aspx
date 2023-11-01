<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmPermisoUsuario.aspx.cs" Inherits="SgaGestionAcceso.WEB.Permisos.frmPermisoUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="panel">
            <h1 class="rounded">
                Búsqueda de Permisos de Usuario</h1>
            <br />
            <table border="0" cellpadding="0" cellspacing="0" class="fix rounded Size700" width="99%">
                <tbody>
                    <tr>
                        <td class="style2">
                            Nombre de Usuario
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="edit rounded" Width="250px"
                                MaxLength="50" ReadOnly="True" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="style3">
                            Código
                        </td>
                        <td>
                            <asp:TextBox ID="txtCodigo" runat="server" CssClass="edit rounded" Width="100px"
                                MaxLength="50" ReadOnly="True" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Copiar permisos de
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtCodigoUsuarioCopiar" runat="server" CssClass="edit rounded" Width="100px"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td class="style3">
                            <asp:Button ID="btnCopiar" runat="server" Text="Copiar" CssClass="btn rounded btn_check"
                                ValidationGroup="valPol" OnClick="btnCopiar_Click" Width="100px" />
                        </td>
                        <td>
                            &nbsp
                        </td>
                    </tr>
                    <tr>
                        <td class="">
                        </td>
                        <td>
                            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn rounded fleft btn_add"
                                OnClick="btnAceptar_Click" Width="100px" />
                            <asp:HiddenField ID="hdiUsuPermiso" runat="server" />
                        </td>
                        <td colspan="2">
                            <asp:Button ID="btnLimpiar" runat="server" Text="Cerrar" CssClass="btn rounded fleft btn_flag"
                                OnClick="btnLimpiar_Click" Width="100px" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <div class="clear">
            </div>
            <br />
            <asp:GridView ID="dgvRoles" runat="server" AutoGenerateColumns="False" CssClass="Size700">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "TieneAccesoRol") %>'
                                ID="chkTieneAcceso"></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="IdRol" DataField="IdRol">
                        <HeaderStyle CssClass="ColumnaOculta" />
                        <ItemStyle CssClass="ColumnaOculta" />
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "IdPermisoUsuario")%>'
                                ID="lblIdPermisoUsuario" Visible="False">
                            </asp:Label>
                        </ItemTemplate>
                        <HeaderStyle CssClass="ColumnaOculta" />
                        <ItemStyle CssClass="ColumnaOculta" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rol">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("NombreRol") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Descripcion">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("DescripcionRol") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle CssClass="pager" />
            </asp:GridView>
        </div>
</asp:Content>
