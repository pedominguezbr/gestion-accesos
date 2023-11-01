<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmPermisoMenu.aspx.cs" Inherits="SgaGestionAcceso.WEB.Permisos.frmPermisoMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel">
            <h1 class="rounded">NUEVO PERMISO OBJETO</h1>
            <br/>
              <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                <tbody>
                  
                    <tr>
                        <td>Rol</td>
                        <td>
                        <div class="requiredInput">
                            <div class="requiredBlock">
                            </div>
                            <asp:DropDownList ID="ddlRol" runat="server" Width="305px" 
                                CssClass="edit rounded" AutoPostBack="True" 
                                onselectedindexchanged="ddlRol_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator id="rfvDdlRol" runat="server"
                              ControlToValidate="ddlRol"
                              ErrorMessage="<span class='warning'></span>"
                              Display="Static"
                              InitialValue="-1" ValidationGroup="validacion"></asp:RequiredFieldValidator>
                              </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Objeto</td>
                        <td>
                        <div class="requiredInput">
                            <div class="requiredBlock">
                            </div>
                            <asp:DropDownList ID="ddlObjeto" runat="server" Width="305px" 
                                CssClass="edit rounded">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator id="rfvDdlObjeto" runat="server"
                              ControlToValidate="ddlObjeto"
                              ErrorMessage="<span class='warning'></span>"
                              Display="Static"
                              InitialValue="-1" ValidationGroup="validacion"></asp:RequiredFieldValidator>
                              </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Agregar Permiso a todos
                            <br />
                            los Sub Objetos</td>
                        <td>
                               <asp:CheckBox ID="chkPermisoSubObjetos" runat="server" 
                                   EnableViewState="False" Checked="True" />
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
                                CssClass="btn rounded btn_add" ValidationGroup="validacion" 
                                onclick="btnGuardar_Click"/>
                        </td>
                        
                    </tr>
                </tbody>
            </table>
            <asp:Button ID="btnSalir" runat="server" Text="Salir" 
                CssClass="btn rounded btn_salir fright" style="margin-right:0px;" 
                onclick="btnSalir_Click" Width="100px"/>
            <div class="clear"></div> 
        </div>
</asp:Content>
