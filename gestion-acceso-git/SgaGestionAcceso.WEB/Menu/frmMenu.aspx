<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmMenu.aspx.cs" Inherits="SgaGestionAcceso.WEB.Menu.frmMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="panel">
            <h1 class="rounded">Detalle del 
                Menu</h1>
            <br/>
              <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                <tbody>
                    <tr>
                        <td><asp:Label ID="lbTituloCodigo" runat="server">Código</asp:Label></td>
                        <td>
                               <asp:TextBox ID="txtCodigo" runat="server" CssClass="edit rounded" 
                                Width="100px" MaxLength="14"></asp:TextBox>   
                        </td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td>
                               <asp:TextBox ID="txtNombre" runat="server" CssClass="edit rounded" 
                                Width="300px" MaxLength="50"></asp:TextBox>   
                               <asp:RequiredFieldValidator id="rfvTxtRol" runat="server"
                                ControlToValidate="txtNombre"
                                ErrorMessage="<span class='warning'></span>"
                                Display="Static"
                                InitialValue="" CssClass="validator" ValidationGroup="validacion"></asp:RequiredFieldValidator>                           
                                
                        </td>
                    </tr>
                    <tr>
                        <td>Descripción</td>
                        <td>
                       
                               <asp:TextBox ID="txtDescripcion" runat="server" CssClass="edit rounded" 
                                Width="300px" MaxLength="150" Height="90px" TextMode="MultiLine"></asp:TextBox>   
                               <asp:RequiredFieldValidator id="rfvTxtDescripcion" runat="server"
                                ControlToValidate="txtDescripcion"
                                ErrorMessage="<span class='warning'></span>"
                                Display="Static"
                                InitialValue="" CssClass="validator" ValidationGroup="validacion"></asp:RequiredFieldValidator>                           
                                
                        </td>
                    </tr>
                    <tr>
                        <td>Etiqueta</td>
                        <td>
                        
                               <asp:TextBox ID="txtEtiqueta" runat="server" CssClass="edit rounded" 
                                Width="300px" MaxLength="50"></asp:TextBox>   
                               <asp:RequiredFieldValidator id="rfvTxtEtiqueta" runat="server"
                                ControlToValidate="txtEtiqueta"
                                ErrorMessage="<span class='warning'></span>"
                                Display="Static"
                                InitialValue="" CssClass="validator" ValidationGroup="validacion"></asp:RequiredFieldValidator>                           
                                
                        </td>
                    </tr>
   

                    <tr>
                        <td>Objeto Padre</td>
                        <td>    
                            <asp:DropDownList ID="ddlObjetoPadre" runat="server" Width="305px" 
                                CssClass="edit rounded">
                            </asp:DropDownList>
                            
                        </td>                        
                    </tr>
                  
                    <tr>
                        <td><asp:Label ID="Label1" runat="server">URL</asp:Label></td>
                        <td>
                               <asp:TextBox ID="txtURL" runat="server" CssClass="edit rounded" 
                                Width="300px" MaxLength="60"></asp:TextBox>   
                          
                        </td>
                    </tr> 
                     <tr>
                        <td>Estado</td>
                        <td>     
                            <asp:CheckBox ID="chkEstado" runat="server" />      
                        </td>              
                            
                    </tr>
                     <tr>
                        <td colspan="2">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
                                CssClass="btn rounded btn_save" ValidationGroup="validacion" 
                                onclick="btnGuardar_Click" Width="100px"/>
                          
                            
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
