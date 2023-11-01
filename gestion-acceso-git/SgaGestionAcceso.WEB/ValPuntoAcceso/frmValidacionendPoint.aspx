<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmValidacionendPoint.aspx.cs" Inherits="SgaGestionAcceso.WEB.ValPuntoAcceso.frmValidacionendPoint" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
        <asp:HiddenField ID="hdValidaCheck" runat="server">
        </asp:HiddenField>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Validación de Punto de Acceso</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAgencia" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ></asp:TextBox>
                                </td>
                                <td>
                                    Sucursal
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSucursal" runat="server" CssClass="edit rounded" Width="200px"
                                        ReadOnly="True" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Equipo
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEquipo" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Fecha Escaneo
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaescaneo" runat="server" CssClass="edit rounded" Width="80px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Usuario
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    Arquitectura
                                </td>
                                <td>
                                    <asp:TextBox ID="txtArquitectura" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Sistema Ope.
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsitemaOperativo" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                    <asp:CheckBox ID="chkSO" runat="server" />
                                </td>
                                <td>
                                    Service Pack.
                                </td>
                                <td>
                                    <asp:TextBox ID="txtServicePack" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   Procesador
                                </td>
                                <td>
                                    <asp:TextBox ID="txtProcesador" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                    <asp:CheckBox ID="chkProc" runat="server" />
                                </td>
                                <td>
                                    Memoria
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMemoria" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="50" Enabled="False" ReadOnly="True"></asp:TextBox>
                                    <asp:CheckBox ID="chkMemory" runat="server" />
                                </td>
                            </tr>
                            
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="btnValidar" runat="server" Text="Validar Sistema" 
                                        CssClass="btn rounded btn_check fright" onclick="btnValidar_Click" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <div class="clear">
                    </div>
                    <h2>
                        Lista de Aplicacion a Validar</h2>
                    <asp:GridView ID="dgvAplicacionValidar" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        CssClass="Size700" OnPageIndexChanging="dgvAplicacionValidar_PageIndexChanging" OnRowCommand="dgvAplicacionValidar_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="ITEM">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex +1%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="NOMBRE">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="VERSION">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Version")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FABRICANTE">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Publisher")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField DataField="InstallDate" HeaderText="FECHA INSTALACIÓN" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />--%>
                            <asp:TemplateField HeaderText="FECHA INSTALACIÓN">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "InstallDate")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>
                </div>
                
                
                <asp:HiddenField ID="hdPcId" runat="server" />
            </div>
        </ContentTemplate>
        
    </asp:UpdatePanel>
</asp:Content>
