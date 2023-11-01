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

namespace SgaGestionAcceso.WEB.Solicitud
{
    public partial class frmSolicitudAccesoSeguim : System.Web.UI.Page
    {
        string Modo = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Modo = Request.QueryString["modo"] != null ? Request.QueryString["modo"] : "";
                if (!IsPostBack)
                {
                    CargarDatosUsuario();
                    this.dgvSolicitudAcceso.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA]);

                    if (Modo == "Consultar")
                    {
                        btnNuevaSolicitud.Visible = false;
                    }
                    //Cargamos los datos de los controles de la pantalla
                    //lbTituloPanel.Text = Constantes.ACCION_NUEVO;
                    CargarListas();
                    //ddlEstado.Items.FindByText("EN PROCESO");
                    BuscarSolicitudes();
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);

                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }
        public void CargarDatosUsuario()
        {
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
            //sesion persona
            if (Session[Constantes.SESION_USUARIO] != null)
            {
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
                txtSolicitante.Text = string.Format("{0} {1} {2}", beUsuarioSistema.Nombres.ToUpper(), beUsuarioSistema.ApellidoPaterno.ToUpper(), beUsuarioSistema.ApellidoMaterno.ToUpper());

            }
            else
            {
                txtSolicitante.Text = WebConfigurationManager.AppSettings[Constantes.NOMBRE_USUARIO_NOLOGIN];
            }
        }
        protected void btnNuevaSolicitud_Click(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_PROCESANDO_SOLICITUD);
            Session.Remove(Constantes.SESION_SOLICITUD_ACCESO);
            Response.Redirect("~/Solicitud/frmSolicitudAcceso.aspx?modo=NUEVO");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Solicitud/frmSolicitudAcceso.aspx?modo=EDITAR&IdSolicitudAcceso=20");
            // Response.Redirect("~/Solicitud/frmSolicitudAcceso.aspx?modo=CONSULTAR&IdSolicitudAcceso=20");
            BuscarSolicitudes();
        }

        public void BuscarSolicitudes()
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BEBusquedaSolicitud beBusquedaSolicitud = new BEBusquedaSolicitud();
            BESolicitudAccesoList beSolicitanteList = null;

            beBusquedaSolicitud.NroSolicitud = string.Concat(txtnroSolicitud.Text.Trim(), "%");

            beBusquedaSolicitud.TipoAcceso = new BETipoAcceso();
            beBusquedaSolicitud.TipoAcceso.IdTipoAcceso = Convert.ToInt32(ddlTipoAcceso.SelectedValue);

            beBusquedaSolicitud.Estado = new BEEstado();
            beBusquedaSolicitud.Estado.IdEstado = Convert.ToInt32(ddlEstado.SelectedValue);

            beBusquedaSolicitud.Agencia = new BEAgencia();
            beBusquedaSolicitud.Agencia.IdAgencia = Convert.ToInt32(ddlAgencia.SelectedValue);

            beBusquedaSolicitud.Sucursal = new BESucursal();
            beBusquedaSolicitud.Sucursal.IdSucursal = Convert.ToInt32(ddlSucursal.SelectedValue);

            if (txtFechaRegistroInicio.Text.Trim() != string.Empty)
            {
                beBusquedaSolicitud.FechaRegistro = Convert.ToDateTime(txtFechaRegistroInicio.Text);
            }
            else
            {
                beBusquedaSolicitud.FechaRegistro = DateTime.MinValue;
            }

            beBusquedaSolicitud.Solicitante = string.Concat("%", txtSolicitante.Text.Trim(), "%");

            beBusquedaSolicitud.Autorizante = string.Concat("%",txtAutorizante.Text.Trim(), "%");

            beSolicitanteList = blSolicitudAcceso.BuscarSolicitud(beBusquedaSolicitud);


            Session[Constantes.SESION_BUSQUEDA_SOLICITUD] = null;
            Session.Add(Constantes.SESION_BUSQUEDA_SOLICITUD, beSolicitanteList);

            //if (beSolicitanteList.Count == Constantes.VALOR_CERO)
            //{
            //    BESolicitudAcceso beSolicitudAcceso = new BESolicitudAcceso();
            //    beSolicitanteList.Add(beSolicitudAcceso);
            //}

            dgvSolicitudAcceso.DataSource = beSolicitanteList;
            dgvSolicitudAcceso.DataBind();

            if (beSolicitanteList.ToList().Count == 0) {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda");
            }


        }

        public void CargarListas()
        {

            BLAgencia blAgencia = new BLAgencia();
            BLTipoAcceso blTipoAcceso = new BLTipoAcceso();
            BLEstado blEstado = new BLEstado();

            Herramienta.CargarDropDownListItemTodos(ddlAgencia, blAgencia.ListarAgencia(), "IdAgencia", "Nombre");
            Herramienta.CargarDropDownListItemTodos(ddlTipoAcceso, blTipoAcceso.ListarTipoAcceso(), "IdTipoAcceso", "Nombre");
            Herramienta.CargarDropDownListItemTodos(ddlEstado, blEstado.ListarEstado(), "IdEstado", "Nombre");
            CargarSucursalLista(0);

        }

        public void CargarSucursalLista(int idAgencia)
        {
            BLSucursal blSucursal = new BLSucursal();
            Herramienta.CargarDropDownListItemTodos(ddlSucursal, blSucursal.ListarSucursal(idAgencia), "IdSucursal", "Nombre");
        }

        protected void dgvSolicitudAcceso_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_BUSQUEDA_SOLICITUD] != null)
            {
                BESolicitudAccesoList beSolicitanteList = null;
                beSolicitanteList = (BESolicitudAccesoList)Session[Constantes.SESION_BUSQUEDA_SOLICITUD];

                this.dgvSolicitudAcceso.PageIndex = e.NewPageIndex;

                this.dgvSolicitudAcceso.DataSource = beSolicitanteList;
                this.dgvSolicitudAcceso.DataBind();
            }
        }

        protected void dgvSolicitudAcceso_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lnkAnular = (LinkButton)e.Row.Cells[0].FindControl("lnkAnular");
                LinkButton lnkConsultar = (LinkButton)e.Row.Cells[0].FindControl("lnkConsultar");
                LinkButton lnkModificar = (LinkButton)e.Row.Cells[0].FindControl("lnkModificar");

                //lnkAnular.OnClientClick = Herramienta.MensajeEliminar();

                if (Modo == "Consultar" )
                {
                    //lnkModificar.Visible = false; //Enabled = false;
                    lnkAnular.Visible = false;
                    lnkConsultar.Visible = true;
                    lnkModificar.Visible = false;
                }
                else
                {
                    lnkAnular.Visible = true;
                    lnkConsultar.Visible = true;
                    lnkModificar.Visible = true;
                }
            }
        }

        protected void dgvSolicitudAcceso_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idSolicitud = Convert.ToInt32(e.CommandArgument);

            //Validar si ya fue grabado
            if (idSolicitud == Constantes.VALOR_CERO)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GUARDARDETALLE_ELIMINAR]);
                return;
            }

            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                if (idSolicitud > 0)
                {
                    try
                    {
                        BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
                        if (blSolicitudAcceso.EliminarSolicitudAcceso(idSolicitud))
                        {
                            BuscarSolicitudes();
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
                //Response.Redirect("~/Solicitud/frmSolicitudAcceso.aspx?modo=EDITAR&IdSolicitudAcceso=20");
                // Response.Redirect("~/Solicitud/frmSolicitudAcceso.aspx?modo=CONSULTAR&IdSolicitudAcceso=20");
                BLValidacionEndPoint BLValidacionEndPoint = new BLValidacionEndPoint();
                int pIdEstado = BLValidacionEndPoint.traeEstado(idSolicitud);
                if (pIdEstado > 1)
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "La solicitud ya no se encuentra en proceso. No se puede editar");
                }
                else
                {
                    Response.Redirect(String.Format("~/Solicitud/frmSolicitudAcceso.aspx?modo=EDITAR&IdSolicitudAcceso={0}", idSolicitud));
                }
            }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                if (Modo == "Consultar")
                {
                    Response.Redirect(String.Format("~/Solicitud/frmSolicitudAcceso.aspx?modo=CONSULTAR&IdSolicitudAcceso={0}&modo2=Consultar", idSolicitud));
                }
                else {
                    Response.Redirect(String.Format("~/Solicitud/frmSolicitudAcceso.aspx?modo=CONSULTAR&IdSolicitudAcceso={0}", idSolicitud));
                }
            }
        }


        protected void ddlAgencia_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                CargarSucursalLista(Convert.ToInt32(ddlAgencia.SelectedValue));
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }
    }
}