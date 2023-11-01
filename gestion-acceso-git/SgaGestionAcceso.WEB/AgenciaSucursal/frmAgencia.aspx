<%@ Page Title="" Language="C#" MasterPageFile="~/SgaGestionAcceso.Master" AutoEventWireup="true"
    CodeBehind="frmAgencia.aspx.cs" Inherits="SgaGestionAcceso.WEB.AgenciaSucursal.frmAgencia" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="upGrilla" runat="server">
        <ContentTemplate>
            <div>
                <div class="panel">
                    <h1 class="rounded">
                        Actualizacion de Agencia</h1>
                    <table border="0" cellpadding="0" cellspacing="0" class="fix rounded size700">
                        <tbody>
                            <tr>
                                <td>
                                    Id Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIdAgencia" runat="server" CssClass="edit rounded" Width="20px"
                                        MaxLength="10" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                   Nombre Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAgencia" runat="server" CssClass="edit rounded" Width="200px"
                                        MaxLength="10"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="rfvAgencia" runat="server" ControlToValidate="txtAgencia"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    RUC
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRUC" runat="server" CssClass="edit rounded" Width="100px" MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvRUC" runat="server" ControlToValidate="txtRUC"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue=""
                                            CssClass="validator" ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    Representante
                                </td>
                                <td>
                                <div class="requiredInput">
                                    <asp:DropDownList ID="ddlRepresentante" runat="server" Width="200px" CssClass="edit rounded">
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvRepresentante" runat="server" ControlToValidate="ddlRepresentante"
                                            ErrorMessage="<span class='warning'></span>" Display="Static" InitialValue="-1"
                                            ValidationGroup="validacionDatos"></asp:RequiredFieldValidator>
                                             </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nemo Tecnico Agencia
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNemotecnico" runat="server" CssClass="edit rounded" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:HiddenField ID="hdiidAgencia" runat="server" />
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
                <div>
                    <div class="clear">
                    </div>
                    <h2>
                        Lista de Sucursales
                    </h2>
                    <asp:GridView ID="dgvSucursales" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        CssClass="Size700" OnPageIndexChanging="dgvSucursales_PageIndexChanging" OnRowCommand="dgvSucursales_RowCommand"
                        OnRowDataBound="dgvSucursales_RowDataBound">
                        <Columns>
                            <asp:BoundField HeaderText="IdSucursal" DataField="IdSucursal" />
                            <asp:BoundField HeaderText="Nombre Sucursal" DataField="Nombre" />
                            <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
                              <asp:TemplateField HeaderText="Departamento">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Ubigeo.Departamento")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Provincia">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Ubigeo.Provincia")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Distrito">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Ubigeo.Distrito")%>'></asp:Label>
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
