<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmSolicitudAcceso.aspx.cs" Inherits="SgaGestionAcceso.WEB.Solicitud.frmSolicitudAcceso" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Actualizar Solicitud de Acceso</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Nro. Solicitud
                                </td>
                                <td>
                                    <asp:TextBox ID="txtnroSolicitud" runat="server" CssClass="edit rounded" Width="100px"
                                        MaxLength="50" Enabled="False" Text="CRQ00000000"></asp:TextBox>
                                    <asp:HiddenField ID="hdiIDSolicitudAcceso" runat="server" />
                                </td>
                                <td>
                                    Fecha Registro
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaRegistroInicio" runat="server" CssClass="edit rounded" Width="82px"
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
                                    Tipo Acceso
                                </td>
                                <td>
                                 <div class="requiredInput">
                                    <asp:DropDownList ID="ddlTipoAcceso" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvTipoAcceso" runat="server" ControlToValidate="ddlTipoAcceso"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Agencia
                                </td>
                                <td>
                                 <div class="requiredInput">
                                    <asp:DropDownList ID="ddlAgencia" runat="server" Width="200px" 
                                        CssClass="edit rounded" AutoPostBack="True" 
                                        onselectedindexchanged="ddlAgencia_SelectedIndexChanged">
                                    </asp:DropDownList>

                                       <asp:RequiredFieldValidator ID="rfvAgencia" runat="server" ControlToValidate="ddlAgencia"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                                <td>
                                    Sucursal
                                </td>
                                <td>
                                 <div class="requiredInput">
                                    <asp:DropDownList ID="ddlSucursal" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvSucursal" runat="server" ControlToValidate="ddlSucursal"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Estaciones</td>
                                <td>
                                    <asp:TextBox ID="txtEstaciones" runat="server" Width="100px" MaxLength="5" CssClass="edit rounded"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEstaciones" runat="server" ControlToValidate="txtEstaciones"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnGrabar" runat="server" Text="Registrar" CssClass="btn rounded btn_save fleft"
                                        ValidationGroup="validacionDatos" OnClick="btnGrabar_Click" />
                                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn rounded btn_cancel fleft"
                                        ValidationGroup="validacion" />
                                        <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo Detalle" CssClass="btn rounded btn_add fright"
                                        Style="margin-right: 0px;" OnClick="btnNuevo_Click" />
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
                    <asp:GridView ID="dgvdetalleSol" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        CssClass="Size700" onpageindexchanging="dgvdetalleSol_PageIndexChanging" 
                        onrowcommand="dgvdetalleSol_RowCommand" 
                        onrowdatabound="dgvdetalleSol_RowDataBound" 
                        onselectedindexchanged="dgvdetalleSol_SelectedIndexChanged" 
                        onselectedindexchanging="dgvdetalleSol_SelectedIndexChanging" 
                        onrowdeleted="dgvdetalleSol_RowDeleted" 
                        onrowdeleting="dgvdetalleSol_RowDeleting">
                        <Columns>
                            <asp:TemplateField HeaderText="Item">
                                <ItemTemplate> 
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex +1%>'></asp:Label>
                                </ItemTemplate>
                             
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombres">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Persona.Nombres")%>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellidos">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Persona.Apellidos")%>'></asp:Label>
                                </ItemTemplate>
                              
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DNI">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Persona.DNI")%>'></asp:Label>
                                </ItemTemplate>
                            
                            </asp:TemplateField>                           

                            <asp:TemplateField HeaderText="Aplicaciones">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TotalAplicaciones")%>'></asp:Label>
                                </ItemTemplate>
                            
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Estado.Nombre ")%>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkConsultar" runat="server" CommandArgument='<%# Eval("IdDetalleSolicitud") %>'
                                        CommandName="cmdConsultar" CssClass="consultar" ToolTip="Ver Aplicaciones">
                            
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkModificar" runat="server" CommandArgument='<%# Eval("IdDetalleSolicitud") %>'
                                        CommandName="cmdModificar" CssClass="modificar" ToolTip="Editar">
                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAnular" runat="server" CommandArgument='<%# Eval("IdDetalleSolicitud") %>'
                                        CommandName="cmdAnular" CssClass="anular" ToolTip="Borrar">
                           
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>
                </div>
            </div>
            <ajaxToolKit:ModalPopupExtender ID="mpeDetalleSolicitud" runat="server" TargetControlID="BtnOK"
                    PopupControlID="pnlDetalleSolicitud" OkControlID="BtnOK" CancelControlID="BtnCancel"
                    BackgroundCssClass="mpeBackground">
                </ajaxToolKit:ModalPopupExtender>
            <asp:Panel ID="pnlDetalleSolicitud" runat="server" CssClass="pnlModal" Width="510px"  Style="display: none;">
                    <div class="efecto-borde rounded">
                        <h2>Detalle Solicitud</h2>
                        <asp:Button ID="BtnOK" runat="server" CssClass="btn rounded fleft" Text="Aceptar"
                            Style="display: none;" />
                        <asp:Button ID="BtnCancel" runat="server" CssClass="btn rounded btn_salir fright"
                            Text="Cerrar" />
                    </div>
            </asp:Panel>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlAgencia" 
                EventName="SelectedIndexChanged" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
