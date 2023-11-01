<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmAutorizante.aspx.cs" Inherits="SgaGestionAcceso.WEB.Autorizante.frmAutorizante" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Mantenimiento de Autorizante</h1>
                          <ajaxToolKit:CalendarExtender ID="cetxtFechaIngrese" runat="server" TargetControlID="txtFechaIngrese"
                        Format="dd/MM/yyyy" />
                    <ajaxToolKit:CalendarExtender ID="cetxtFechaCese" runat="server" TargetControlID="txtFechaCese"
                        Format="dd/MM/yyyy" />

                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Id Autoriznate
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIdAutorizante" runat="server" CssClass="edit rounded" Width="20px"
                                        MaxLength="10" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                   Persona 
                                </td>
                                <td>
                                    <div class="requiredInput">
                                    <asp:DropDownList ID="ddlPersona" runat="server" Width="250px" 
                                            CssClass="edit rounded">
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlPersona"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>        </td>
                            </tr>
                             <tr>
                                <td>
                                    Fecha Ingreso
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaIngrese" runat="server" CssClass="edit rounded editCalendar"
                                        Width="82px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtFechaIngrese" runat="server" ControlToValidate="txtFechaIngrese"
                                        ErrorMessage="<span class='warning'></span>" Display="Static" SetFocusOnError="true"
                                        ValidationGroup="validacionDatos" ValidationExpression="\d{2}/\d{2}/\d{4}" CssClass="validator"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    Fecha Cese
                                </td>
                                <td>
                                       <asp:TextBox ID="txtFechaCese" runat="server" CssClass="edit rounded editCalendar"
                                        Width="82px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtFechaCese" runat="server" ControlToValidate="txtFechaCese"
                                        ErrorMessage="<span class='warning'></span>" Display="Static" SetFocusOnError="true"
                                        ValidationGroup="validacionDatos" ValidationExpression="\d{2}/\d{2}/\d{4}" CssClass="validator"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Codigo de Autorizador
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCodigoAutorizador" runat="server" CssClass="edit rounded" Width="100px" MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtxtCodigoAutorizador" runat="server" ControlToValidate="txtCodigoAutorizador"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    Jefatura
                                </td>
                                <td>
                                <asp:TextBox ID="txtJefatura" runat="server" CssClass="edit rounded" Width="200px" 
                                        MaxLength="10"></asp:TextBox>
                                  
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Gerencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGerencia" runat="server" CssClass="edit rounded" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                Dirección
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="edit rounded" 
                                        Width="200px"></asp:TextBox>
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
                                Estado
                                </td>
                                <td>
                                   <asp:CheckBox ID="chkEstadoActivo" runat="server" Checked="True" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                       <asp:Button ID="btnSalir" runat="server" Text="Volver" CssClass="btn rounded btn_salir fleft"
                                        Style="margin-right: 0px;" OnClick="btnSalir_Click" /></td>
                                <td>
                                </td>
                                <td>
                                    
                                    <asp:Button ID="btnGrabar" runat="server" CssClass="btn rounded btn_save fleft" 
                                        OnClick="btnGrabar_Click" Text="Registrar"  ValidationGroup="validacionDatos"  />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
