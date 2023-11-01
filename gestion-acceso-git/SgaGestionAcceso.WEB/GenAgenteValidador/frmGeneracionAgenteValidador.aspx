<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmGeneracionAgenteValidador.aspx.cs" Inherits="SgaGestionAcceso.WEB.GenAgenteValidador.frmGeneracionAgenteValidador" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Generar Agente Validador</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Nro. Solicitud
                                </td>
                                <td>
                                    <asp:TextBox ID="txtnroSolicitud" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="50" Enabled="False" Text="CRQ00000000"></asp:TextBox>
                                </td>
                                <td>
                                    Tipo de Acceso
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTipoAcceso" runat="server" CssClass="edit rounded" Width="200px"
                                        ReadOnly="True" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Solicitante
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSolicitante" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Nro. Usuarios
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNumUsuarios" runat="server" CssClass="edit rounded" Width="50px"
                                        MaxLength="10" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Autorizante
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAutorizante" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Nro. Equipos
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNumEquipos" runat="server" CssClass="edit rounded" Width="50px"
                                        MaxLength="10" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAgencia" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSucursal" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fecha Registro
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaRegistro" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Fecha Validación
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaValidacion" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Estado Solicitud
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEstado" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>Estado Generación
                                </td>
                                <td>  <asp:TextBox ID="txtEstadoGeneracion" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True">PENDIENTE</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="btnGenerar" runat="server" Text="Generar" CssClass="btn rounded btn_check fright"
                                        OnClick="btnGenerar_Click" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <div class="clear">
                    </div>
                    <h2>
                        Detalle de Solicitud</h2>
                    <asp:GridView ID="dgvdetalleSol" DataKeyNames="IdGenAgenteValidador" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        CssClass="Size700" OnPageIndexChanging="dgvdetalleSol_PageIndexChanging" 
                        OnRowCommand="dgvdetalleSol_RowCommand" >
                        <Columns>
                            <asp:TemplateField HeaderText="Item">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex +1%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Codigo" DataField="CodGenerado" />
                            <asp:BoundField HeaderText="Activador" DataField="Activador" Visible="false" />
                            <asp:BoundField HeaderText="Fecha Registro" DataField="FechaCreacion" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />
                            <asp:BoundField HeaderText="Fecha Caducidad" DataField="FechaCaducidad" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Estado.Nombre ")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDescargar" runat="server" CommandArgument='<%# Eval("IdDetAgenValidador") %>'
                                        CommandName="cmdDescargar" CssClass="descargar" ToolTip="Descargar Validador">
                            
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
            <asp:PostBackTrigger ControlID="dgvdetalleSol" />
        </Triggers>
        
    </asp:UpdatePanel>
    <asp:HiddenField ID="hdfIdAgente" runat="server">
        </asp:HiddenField>
</asp:Content>
