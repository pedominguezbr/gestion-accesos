<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmAgenciaConsulta.aspx.cs" Inherits="SgaGestionAcceso.WEB.AgenciaSucursal.frmAgenciaConsulta" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  
  
    <script type="text/javascript" src="../Recursos/script/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=imgOrdersShow]").each(function () {
                if ($(this)[0].src.indexOf("minus") != -1) {
                    $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>");
                    $(this).next().remove();
                }
            });
            $("[id*=imgProductsShow]").each(function () {
                if ($(this)[0].src.indexOf("minus") != -1) {
                    $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>");
                    $(this).next().remove();
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Consultar Agencia y Sucursal</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Codigo Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCodigoAgencia" runat="server" CssClass="edit rounded" Width="80px"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td>
                                    Codigo Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCodigoSucursal" runat="server" CssClass="edit rounded" Width="80px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nombre Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNombreAgencia" runat="server" CssClass="edit rounded" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    Nombre Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNombreSucursal" runat="server" CssClass="edit rounded" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    RUC Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRucAgencia" runat="server" CssClass="edit rounded" Width="80px"></asp:TextBox>
                                </td>
                                <td>
                                    Direccion Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDireccionSucursal" runat="server" CssClass="edit rounded" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Representante Legal Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRepresentanteLegal" runat="server" CssClass="edit rounded" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    Departamento Sucursal
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlDepartamento" runat="server" Width="200px" CssClass="edit rounded"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlDepartamento_SelectedIndexChanged">
                                        <asp:ListItem Value="-1">--Todos--</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                    Provincia Sucursal
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlProvincia" runat="server" Width="200px" CssClass="edit rounded"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                                        <asp:ListItem Value="-1">--Todos--</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                    Distrito Sucursal
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlDistrito" runat="server" Width="200px" CssClass="edit rounded">
                                        <asp:ListItem Value="-1">--Todos--</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn rounded btn_search fleft"
                                        OnClick="btnBuscar_Click" Style="margin-right: 0px;" Text="Buscar" Width="150px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnNuevaAgencia" runat="server" Text="Nueva Agencia" CssClass="btn rounded btn_add fleft"
                                         OnClick="btnNuevaAgencia_Click" />
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                                 <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnNuevaSucursal" runat="server" Text="Nueva Sucursal" CssClass="btn rounded btn_add fleft"
                                         OnClick="btnNuevaSucursal_Click" />
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
                        Resultado de Agencia</h2>
                    <asp:GridView ID="dgvListaAgencias" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        CssClass="Size700" OnPageIndexChanging="dgvListaAgencias_PageIndexChanging" OnRowCommand="dgvListaAgencias_RowCommand"
                        DataKeyNames="IdAgencia">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgOrdersShow" runat="server" OnClick="Show_Hide_SucursalGrid"
                                        ImageUrl="~/Recursos/images/common/plus.png" CommandArgument="Show" />
                                    <asp:Panel ID="pnlOrders" runat="server" Visible="false" Style="position: relative">
                                        <asp:GridView ID="dgvListaSucursal" runat="server" AutoGenerateColumns="false" OnRowCommand="dgvListaSucursal_RowCommand"
                                            CssClass="Size700" Width="99%">
                                            <Columns>
                                                <asp:BoundField HeaderText="IdSuc." DataField="IdSucursal" />
                                                <asp:BoundField HeaderText="Nombre Sucursal" DataField="Nombre" />
                                                <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
                                                <asp:TemplateField HeaderText="Departamento">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Ubigeo.Departamento")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Provincia">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Ubigeo.Provincia")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Distrito">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Ubigeo.Distrito")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdSucursal") %>'
                                                            CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle de la Sucursal">
                            
                                                        </asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdSucursal") %>'
                                                            CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar datos de la Sucursal">
                           
                                                        </asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdSucursal") %>'
                                                            CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar Sucursal">
                           
                                                        </asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="IdAgencia" HeaderText="ID AGENCIA" />
                            <asp:BoundField DataField="Nombre" HeaderText="NOMBRE AGENCIA" />
                            <asp:TemplateField HeaderText="REPRESENTANTE LEGAL">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RepresentanteLegal")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="RUC" HeaderText="RUC" />
                            <asp:BoundField DataField="NemonicoAg" HeaderText="NEMOTECNICO" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdAgencia") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle de la Agencia">
                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdAgencia") %>'
                                        CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar datos de la Agencia">
                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdAgencia") %>'
                                        CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar Agencia">
                           
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
            <asp:PostBackTrigger ControlID="dgvListaAgencias" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
