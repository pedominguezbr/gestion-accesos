<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="SgaGestionAcceso.WEB.Reporte" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="panel">
            <h1 class="rounded"><label>Reporte de Solicitudes</label></h1>
            <ajaxToolKit:CalendarExtender ID="cetxtFechaRegistroInicio" runat="server" TargetControlID="txtFecSolIni"
                        Format="dd/MM/yyyy" />
                        <ajaxToolKit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFecSolFin"
                        Format="dd/MM/yyyy" />
                        <ajaxToolKit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtFecCieIni"
                        Format="dd/MM/yyyy" />
                        <ajaxToolKit:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtFecCieFin"
                        Format="dd/MM/yyyy" />
            <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                <tbody>
                    <tr>
                        <td>
                            Solicitante
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSolicitante" runat="server" />
                        </td>
                        <td>
                            Autorizante
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAutorizante" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Especialista
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlEspecialista" runat="server" />
                        </td>
                        <td>
                            Agencia
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAgencia" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Fecha Registro Inicial
                        </td>
                        <td>
                            <asp:TextBox ID="txtFecSolini" runat="server" CssClass="edit rounded editCalendar" />
                        </td>
                        <td>
                            Fecha Registro Final
                        </td>
                        <td>
                            <asp:TextBox ID="txtFecSolFin" runat="server" CssClass="edit rounded editCalendar" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Fecha Cierre Inicial
                        </td>
                        <td>
                            <asp:TextBox ID="txtFecCieIni" runat="server" CssClass="edit rounded editCalendar" />
                        </td>
                        <td>
                            Fecha Cierre Final
                        </td>
                        <td>
                            <asp:TextBox ID="txtFecCieFin" runat="server" CssClass="edit rounded editCalendar" />
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            Estado
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlEstado" runat="server" />
                        </td>
                        <td>
                                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn rounded btn_search fleft"
                                        Style="margin-right: 0px;" Text="Buscar" Width="150px" 
                                        onclick="btnBuscar_Click" />
                                </td>
                        <td><asp:Button ID="btnReporte" runat="server" CssClass="btn rounded btn_search fleft"
                                        Style="margin-right: 0px;" Text="Reporte" Width="150px" 
                                onclick="btnReporte_Click" /></td>
                        
                        
                    </tr>
                </tbody>
            </table>
            <div>
                    <div class="clear">
                    </div>
                    <%--<h2>
                        Detalle de Solicitud</h2>--%>
                    <div style="height:600; overflow:auto;" class="size700">
                    <asp:GridView ID="dgvSolicitudAcceso" runat="server" AutoGenerateColumns="False"
                        AllowPaging="True" CssClass="Size700" OnPageIndexChanging="dgvSolicitudAcceso_PageIndexChanging"
                         >
                        <Columns>
                            <asp:BoundField HeaderText="Nro Solicitud" DataField="NroSolicitud" />
                            <asp:BoundField HeaderText="Fecha Registro" DataField="FechaRegistro" DataFormatString="{0:d}" />
                            <asp:BoundField HeaderText="Fecha Cierre" DataField="FechaCierre" DataFormatString="{0:d}" />
                            <asp:BoundField HeaderText="Estado" DataField="NombreEstado" />
                            <asp:BoundField HeaderText="Atencion(dias)" DataField="Atención" />
                            <asp:BoundField HeaderText="Solicitante" DataField="Solicitante" />
                            <asp:BoundField HeaderText="Autorizante" DataField="Autorizante" />
                            <asp:BoundField HeaderText="Agencia" DataField="NombreAgencia" />
                            <asp:BoundField HeaderText="Departamento" DataField="Departamento" />
                            <asp:BoundField HeaderText="Provincia" DataField="Provincia" />
                            <asp:BoundField HeaderText="Distrito" DataField="Distrito" />
                            <asp:BoundField HeaderText="Especialista" DataField="Especialista" />
                            <asp:BoundField HeaderText="Mes" DataField="Mes" />
                            <asp:BoundField HeaderText="Año" DataField="Año" />
                        </Columns>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>
                    </div>
                </div>
        </div>
    </div>
    <asp:UpdatePanel ID="up" runat="server">
    </asp:UpdatePanel>
</asp:Content>
