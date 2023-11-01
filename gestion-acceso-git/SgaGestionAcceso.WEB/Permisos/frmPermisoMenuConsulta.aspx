﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmPermisoMenuConsulta.aspx.cs" Inherits="SgaGestionAcceso.WEB.Permisos.frmPermisoMenuConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="panel">
            <h1 class="rounded">
                Búsqueda de PERMISOS DE MENU</h1>
            <br />
            <table border="0" cellpadding="0" cellspacing="0" class="fix rounded Size700" width="700">
                <tbody>
                    <tr>
                        <td>
                            Rol
                        </td>
                        <td>
                            <div class="requiredInput">
                                <asp:DropDownList ID="ddlRol" runat="server" CssClass="edit rounded">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvddlrol" runat="server" ControlToValidate="ddlRol"
                                    ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                    ValidationGroup="validacion" Width="20px"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn rounded  btn_search"
                                ValidationGroup="validacion" OnClick="btnBuscar_Click" />
                            <asp:Label ID="lbResultados" runat="server" CssClass="infoResultado rounded" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <asp:Button ID="btnNuevo" runat="server" Text="Nuevo Permiso" CssClass="btn rounded fright btn_add"
                Style="margin-right: 0px;" OnClick="btnNuevo_Click" Width="150px" />
            <div class="clear">
            </div>
            <h2>
                Listado de PERMISOS DE MENU</h2>
            <div class="sub-panel">
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn rounded btn_cancel"
                    OnClick="btnEliminar_Click" />
                <br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TreeView ID="tvPermisosObjeto" runat="server" ImageSet="XPFileExplorer" NodeIndent="45"
                            ShowLines="True" AutoGenerateDataBindings="False" PopulateNodesFromClient="true"
                            ExpandDepth="0" ShowExpandCollapse="true" CssClass="tvSize rounded">
                            <ParentNodeStyle Font-Bold="False" />
                            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px"
                                VerticalPadding="0px" />
                            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px"
                                NodeSpacing="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>