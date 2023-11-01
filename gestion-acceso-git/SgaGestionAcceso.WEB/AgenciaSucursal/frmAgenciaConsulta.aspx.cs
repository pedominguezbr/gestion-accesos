using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.Negocio;
using SgaGestionAcceso.Entidad;
using System.Web.Configuration;
using SgaGestionAcceso.Negocio.BL;

namespace SgaGestionAcceso.WEB.AgenciaSucursal
{
    public partial class frmAgenciaConsulta : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    //CargarListas();
                    CargarSoloDepartamento();
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);

                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }

        }

        public void CargarListas()
        {
            BLUbigeo blUbigeo = new BLUbigeo();
            Herramienta.CargarDropDownListItemTodos(ddlDepartamento, blUbigeo.ListarUbigeo("PERU"), "codDepartamento", "Departamento");
        }

        public void CargarSoloDepartamento()
        {
            BLUbigeo blUbigeo = new BLUbigeo();
            BEUbigeoList beUbigeoList = null;
            beUbigeoList = blUbigeo.ListarUbigeo("PERU");

            Session[Constantes.SESION_LISTA_UBIGEO] = null;
            Session.Add(Constantes.SESION_LISTA_UBIGEO, beUbigeoList);
            var queryAllDepartamentos = (from d in beUbigeoList
                                         select new
                                         {
                                             codDepartamento = d.codDepartamento,
                                             departamento = d.Departamento
                                         })
                 .Distinct();

            Herramienta.CargarDropDownListItemTodos(ddlDepartamento, queryAllDepartamentos.ToList(), "codDepartamento", "Departamento");
        }

        public void CargarSoloProvincias(string codDepartamento)
        {
            BEUbigeoList beUbigeoList = null;
            if (this.Session[Constantes.SESION_LISTA_UBIGEO] != null)
            {

                beUbigeoList = (BEUbigeoList)Session[Constantes.SESION_LISTA_UBIGEO];
                var queryAllProvincia = (from d in beUbigeoList
                                         where d.codDepartamento == codDepartamento
                                         select new
                                         {
                                             codProvincia = d.codProvincia,
                                             Provincia = d.Provincia
                                         })
                .Distinct();

                Herramienta.CargarDropDownListItemTodos(ddlProvincia, queryAllProvincia.ToList(), "codProvincia", "Provincia");
            }
        }

        public void CargarSoloDistrito(string codDepartamento, string codProvincia)
        {
            BEUbigeoList beUbigeoList = null;
            if (this.Session[Constantes.SESION_LISTA_UBIGEO] != null)
            {

                beUbigeoList = (BEUbigeoList)Session[Constantes.SESION_LISTA_UBIGEO];
                var queryAllDistrito = (from d in beUbigeoList
                                        where d.codProvincia == codProvincia && d.codDepartamento == codDepartamento
                                        select new
                                        {
                                            codDistrito = d.codDistrito,
                                            Distrito = d.Distrito
                                        })
                .Distinct();

                Herramienta.CargarDropDownListItemTodos(ddlDistrito, queryAllDistrito.ToList(), "codDistrito", "Distrito");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            busquedaAgencia();
        }

        public void busquedaAgencia()
        {
            BLAgencia blAgencia = new BLAgencia();
            BEBusquedaAgencia beBusquedaAgencia = new BEBusquedaAgencia();
            BEAgenciaList beAgenciaList = null;

            beBusquedaAgencia.Agencia = new BEAgencia();
            beBusquedaAgencia.Agencia.RUC = txtRucAgencia.Text;
            beBusquedaAgencia.Agencia.Nombre = string.Concat("%", txtNombreAgencia.Text.Trim(), "%");
            beBusquedaAgencia.NombresRepresentante = string.Concat("%", txtRepresentanteLegal.Text.Trim(), "%");

            if (txtCodigoAgencia.Text.Trim() != string.Empty)
            { beBusquedaAgencia.Agencia.IdAgencia = Convert.ToInt32(txtCodigoAgencia.Text); }
            else { beBusquedaAgencia.Agencia.IdAgencia = -1; }

            beBusquedaAgencia.Sucursal = new BESucursal();
            beBusquedaAgencia.Sucursal.Nombre = string.Concat("%", txtNombreSucursal.Text.Trim(), "%");
            beBusquedaAgencia.Sucursal.Direccion = string.Concat("%", txtDireccionSucursal.Text.Trim(), "%");
            if (txtCodigoSucursal.Text.Trim() != string.Empty)
            { beBusquedaAgencia.Sucursal.IdSucursal = Convert.ToInt32(txtCodigoSucursal.Text); }
            else { beBusquedaAgencia.Sucursal.IdSucursal = -1; }

            beBusquedaAgencia.Sucursal.Ubigeo = new BEUbigeo();
            beBusquedaAgencia.Sucursal.Ubigeo.codDepartamento = ddlDepartamento.SelectedValue.ToString();
            beBusquedaAgencia.Sucursal.Ubigeo.codProvincia = ddlProvincia.SelectedValue.ToString();
            beBusquedaAgencia.Sucursal.Ubigeo.codDistrito = ddlDistrito.SelectedValue.ToString();
            

            beAgenciaList = blAgencia.BuscarAgencia(beBusquedaAgencia);
            
            var queryAllDepartamentos = (from a in beAgenciaList
                                         select new
                                         {
                                             IdAgencia = a.IdAgencia,
                                             Nombre = a.Nombre,
                                             NemonicoAg = a.NemonicoAg,
                                             RepresentanteLegal = a.RepresentanteLegal.NombresCompletos,
                                             RUC = a.RUC,
                                             Estado = a.Estado
                                         }).Distinct();


            Session[Constantes.SESION_AGENCIAS] = null;
            Session.Add(Constantes.SESION_AGENCIAS, queryAllDepartamentos.ToList());

            dgvListaAgencias.DataSource = queryAllDepartamentos.ToList();
            dgvListaAgencias.DataBind();

            if (beAgenciaList.ToList().Count == 0)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda");
            }
        }

        protected void btnNuevaAgencia_Click(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_LISTA_SUCURSAL);
            Session.Remove(Constantes.SESION_AGENCIA);
            Response.Redirect("~/AgenciaSucursal/frmAgencia.aspx?modo=NUEVO");
        }

        protected void dgvListaAgencias_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_AGENCIAS] != null)
            {
                BEAgenciaList beAgenciaList = null;
                beAgenciaList = (BEAgenciaList)Session[Constantes.SESION_AGENCIAS];

                this.dgvListaAgencias.PageIndex = e.NewPageIndex;

                this.dgvListaAgencias.DataSource = beAgenciaList;
                this.dgvListaAgencias.DataBind();
            }
        }

        protected void dgvListaAgencias_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandArgument.ToString() == "Hide" || e.CommandArgument.ToString() == "Show")
            {
                return;
            }

            int idAgencia = Convert.ToInt32(e.CommandArgument);
            //int idAgencia = 0;//dgvListaAgencias.DataKeys[e.].Value.ToString();
            //Validar si ya fue grabado
            if (idAgencia == Constantes.VALOR_CERO)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GUARDARDETALLE_ELIMINAR]);
                return;
            }

            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                if (idAgencia > 0)
                {
                    try
                    {
                        BLAgencia blAgencia = new BLAgencia();
                        if (blAgencia.EliminarAgencia(idAgencia))
                        {
                            busquedaAgencia();
                        }
                    }
                    catch (Exception ex)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_AGENCIA_ELIMINAR]);
             
                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            {
                Response.Redirect(String.Format("~/AgenciaSucursal/frmAgencia.aspx?modo=EDITAR&idAgencia={0}", idAgencia));

            }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                Response.Redirect(String.Format("~/AgenciaSucursal/frmAgencia.aspx?modo=CONSULTAR&idAgencia={0}", idAgencia));
            }
        }

        protected void ddlDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDepartamento.SelectedIndex > 0)
            {
                CargarSoloProvincias(ddlDepartamento.SelectedValue);
                ddlDistrito.Items.Clear();
                ddlDistrito.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
            }
            else
            {
                ddlProvincia.Items.Clear();
                ddlDistrito.Items.Clear();

                ddlProvincia.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
                ddlDistrito.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
            }

        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDepartamento.SelectedIndex > 0)
            {
                CargarSoloDistrito(ddlDepartamento.SelectedValue, ddlProvincia.SelectedValue);
            }
            else
            {
                ddlDistrito.Items.Clear();
                ddlDistrito.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
            }
        }

        protected void Show_Hide_SucursalGrid(object sender, EventArgs e)
        {
            ImageButton imgShowHide = (sender as ImageButton);
            GridViewRow row = (imgShowHide.NamingContainer as GridViewRow);
            if (imgShowHide.CommandArgument == "Show")
            {
                row.FindControl("pnlOrders").Visible = true;
                imgShowHide.CommandArgument = "Hide";
                imgShowHide.ImageUrl = "~/Recursos/images/common/minus.png";
                string idAgencia = dgvListaAgencias.DataKeys[row.RowIndex].Value.ToString();
                GridView dgvListaSucursal = row.FindControl("dgvListaSucursal") as GridView;
                BindSucursales(idAgencia, dgvListaSucursal);
            }
            else
            {
                row.FindControl("pnlOrders").Visible = false;
                imgShowHide.CommandArgument = "Show";
                imgShowHide.ImageUrl = "~/Recursos/images/common/plus.png";
            }
        }

        private void BindSucursales(string idAgencia, GridView dgvListaSucursal)
        {
            BLSucursal blSucursal = new BLSucursal();
            BESucursalList beSucursalList = null;

            beSucursalList = blSucursal.ListarSucursal(Convert.ToInt32(idAgencia));

            dgvListaSucursal.ToolTip = idAgencia;
            dgvListaSucursal.DataSource = beSucursalList;
            dgvListaSucursal.DataBind();
        }

        protected void dgvListaSucursal_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idSucursal = Convert.ToInt32(e.CommandArgument);

            //Validar si ya fue grabado
            if (idSucursal == Constantes.VALOR_CERO)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GUARDARDETALLE_ELIMINAR]);
                return;
            }

            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                if (idSucursal > 0)
                {
                    try
                    {
                        BLSucursal blSucursal = new BLSucursal();
                        if (blSucursal.EliminarSucursal(idSucursal))
                        {
                            busquedaAgencia();
                        }
                    }
                    catch (Exception ex)
                    {
                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            {
                Response.Redirect(String.Format("~/AgenciaSucursal/frmSucursal.aspx?modo=EDITAR&idSucursal={0}", idSucursal));

            }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                Response.Redirect(String.Format("~/AgenciaSucursal/frmSucursal.aspx?modo=CONSULTAR&idSucursal={0}", idSucursal));
            }
        }

        protected void btnNuevaSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgenciaSucursal/frmSucursal.aspx?modo=NUEVO");
        }
    }
}