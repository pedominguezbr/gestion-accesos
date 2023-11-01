<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmAutorizanteConsulta.aspx.cs" Inherits="SgaGestionAcceso.WEB.Autorizante.frmAutorizanteConsulta" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Consulta de Autorizante</h1>
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
                                    CIP
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCIP" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="10"></asp:TextBox>
                                </td>
                                <td>
                                    
                                </td>
                                <td>
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
                                    <asp:Button ID="btnNuevaPersona" runat="server" Text="Nuevo Autorizador" CssClass="btn rounded btn_add fleft"
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
                    <asp:GridView ID="dgvConsultaAutorizante" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" 
                        onpageindexchanging="dgvConsultaAutorizante_PageIndexChanging" 
                        onrowcommand="dgvConsultaAutorizante_RowCommand" >
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="IdPersona" />
                            <asp:BoundField HeaderText="CIP" DataField="CIP" />
                            <asp:BoundField HeaderText="Codigo" DataField="CodAutorizador" />
                            <asp:TemplateField HeaderText="DNI">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Persona.DNI") %>'></asp:Label>
                                </ItemTemplate>
                             
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Nombres" DataField="NombresCompletos" />
                                        <asp:TemplateField HeaderText="Correo">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Persona.Correo") %>'></asp:Label>
                                            </ItemTemplate>
                                         
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="F. Ingreso" DataField="FechaIngreso" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />
                            <asp:TemplateField HeaderText="Estado Activo">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkEstadoActivo" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "Estado")%>'
                                        Enabled='false' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdAutorizante") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Detalle de la Autorizante">                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdAutorizante") %>'
                                        CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar datos de la Autorizante">                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdAutorizante") %>'
                                        CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar Autorizante">                           
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
