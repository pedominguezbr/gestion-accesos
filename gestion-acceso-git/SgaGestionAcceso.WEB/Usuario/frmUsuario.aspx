<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true" CodeBehind="frmUsuario.aspx.cs" Inherits="SgaGestionAcceso.WEB.Usuario.frmUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="panel">
            <h1 class="rounded">Detalle del 
                Usuario</h1>
            <br/>
              <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                <tbody>
                    <tr>
                        <td><asp:Label ID="lbTituloCodigo" runat="server">Código</asp:Label></td>
                        <td>
                               <asp:TextBox ID="txtid" runat="server" CssClass="edit rounded" 
                                Width="50px" MaxLength="14" ReadOnly="True"></asp:TextBox>   
                        </td>
                    </tr>
                    <tr>
                        <td>Codigo</td>
                        <td>
                               <asp:TextBox ID="txtcodigo" runat="server" CssClass="edit rounded" 
                                Width="100px" MaxLength="10"></asp:TextBox>   
                               <asp:RequiredFieldValidator id="rfvtxtcodigo" runat="server"
                                ControlToValidate="txtcodigo"
                                ErrorMessage="<span class='warning'></span>"
                                Display="Static"
                                InitialValue="" CssClass="validator" ValidationGroup="validacion"></asp:RequiredFieldValidator>                           
                                
                        </td>
                    </tr>
                      <tr>
                        <td>Clave</td>
                        <td>
                               <asp:TextBox ID="txtClave" runat="server" CssClass="edit rounded" 
                                Width="100px" MaxLength="10"></asp:TextBox>   
                               <asp:RequiredFieldValidator id="rfvtxtClave" runat="server"
                                ControlToValidate="txtClave"
                                ErrorMessage="<span class='warning'></span>"
                                Display="Static"
                                InitialValue="" CssClass="validator" ValidationGroup="validacion"></asp:RequiredFieldValidator>                           
                                
                        </td>
                    </tr>
                   
                 
   

                    <tr>
                        <td>Persona</td>
                        <td>    
                             <div class="requiredInput">
                                    <asp:DropDownList ID="ddlPersona" runat="server" Width="250px" 
                                            CssClass="edit rounded">
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlPersona"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>    
                            
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
