<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmValPuntoAccesoSeguim.aspx.cs" Inherits="SgaGestionAcceso.WEB.ValPuntoAcceso.frmValPuntoAccesoSeguim" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Validar Estación de Acceso</h1>
                          <ajaxToolKit:CalendarExtender ID="cetxtFechaRegistroInicio" runat="server" TargetControlID="txtfechaInicio"
                        Format="dd/MM/yyyy" />
                         <ajaxToolKit:CalendarExtender ID="cetxtFechaRegistroFin" runat="server" TargetControlID="txtfechafin"
                        Format="dd/MM/yyyy" />
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                   Fecha Inicio
                                </td>
                                <td>
                                    <asp:TextBox ID="txtfechaInicio" runat="server" CssClass="edit rounded" Width="80px"
                                        MaxLength="50" ></asp:TextBox>
                                </td>
                                <td>
                                    Fecha Termino
                                </td>
                                <td>
                                    <asp:TextBox ID="txtfechafin" runat="server" CssClass="edit rounded" Width="80px"
                                        ></asp:TextBox>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    Agencia
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlAgencia" runat="server" Width="200px" CssClass="edit rounded"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlAgencia_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    Sucursal
                                </td>
                                <td>
                                     <asp:DropDownList ID="ddlSucursal" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Estado
                                </td>
                                <td>
                                     <asp:DropDownList ID="ddlEstado" runat="server" Width="200px" CssClass="edit rounded">
                                         <asp:ListItem Selected="True">--Todos--</asp:ListItem>
                                         <asp:ListItem>INCOMPLETO</asp:ListItem>
                                         <asp:ListItem>NO VALIDADO</asp:ListItem>
                                         <asp:ListItem>VALIDADO</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                </td>
                                <td>   <asp:Button ID="btnBuscar" runat="server" CssClass="btn rounded btn_search fleft"
                                        Style="margin-right: 0px;" Text="Buscar" Width="150px" OnClick="btnBuscar_Click" />
                              
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
                    <asp:GridView ID="dgvListaAgencias" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        CssClass="Size700" OnPageIndexChanging="dgvListaAgencias_PageIndexChanging" 
                        OnRowCommand="dgvListaAgencias_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="FechaRegistro" HeaderText="FECHA SOLICITUD" DataFormatString="{0:dd/MM/yyyy}"
                                HtmlEncode="False" />
                            <asp:TemplateField HeaderText="# SOLICITUD">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NroSolicitud")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="AGENCIA">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NombreAgencia")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="SUCURSAL">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NombreSucursal")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="#EQUIPOS">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NumEquiposEsc")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TOTAL">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NumEquipos")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ESTADO">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "EstadoVal")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("NroSolicitud") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Aplicaciones">
                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>
                </div>
                <ajaxToolKit:ModalPopupExtender ID="mpeDetalleAgenteValidacion" runat="server" TargetControlID="BtnOK"
                    PopupControlID="pnlDetalleAgenteValidacion" OkControlID="BtnOK" CancelControlID="BtnCancel"
                    BackgroundCssClass="mpeBackground">
                </ajaxToolKit:ModalPopupExtender>
                <asp:Panel ID="pnlDetalleAgenteValidacion" runat="server" CssClass="pnlModal" Width="510px"  Style="display: none;">
                    <div class="efecto-borde rounded">
                        <h2>
                            Detalle Agente Validación</h2>
                        <asp:Button ID="BtnOK" runat="server" CssClass="btn rounded fleft" Text="Aceptar"
                            Style="display: none;" />
                        <asp:Button ID="BtnCancel" runat="server" CssClass="btn rounded btn_salir fright"
                            Text="Cerrar" />
                        <div>
                            <asp:GridView ID="dgvDetalleAgenteValidacion" runat="server" AutoGenerateColumns="False"
                                CssClass="size500" onrowcommand="dgvDetalleAgenteValidacion_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Item">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItemIndex +1%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:BoundField DataField="fsolicitud" HeaderText="FECHA" DataFormatString="{0:HH:mm ss tt}"
                                HtmlEncode="False" />
                                    <asp:TemplateField HeaderText="AGENTE">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "idagente")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ESTADO">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "estado")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkValidar" runat="server" CommandArgument='<%# Eval("idagente") %>'
                                        CommandName="cmdValidar" CssClass="validar" ToolTip="Validar">
                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <span>&nbsp;</span>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
