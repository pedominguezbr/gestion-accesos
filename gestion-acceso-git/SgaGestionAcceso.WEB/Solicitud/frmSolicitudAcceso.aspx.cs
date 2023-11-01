using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.Negocio;
using SgaGestionAcceso.Entidad;

using System.Web.Configuration;

namespace SgaGestionAcceso.WEB.Solicitud
{
    public partial class frmSolicitudAcceso : System.Web.UI.Page
    {
        private const string ID_SOLICITUD_ACCESO = "IdSolicitudAcceso";
        private string accion;
        string Modo2 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                //Extraemos los parametros de consulta
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idSolicitudAcceso = Request.QueryString[ID_SOLICITUD_ACCESO] != null ? Request.QueryString[ID_SOLICITUD_ACCESO] : "";
                Modo2 = Request.QueryString["modo2"] != null ? Request.QueryString["modo2"] : "";
                if (!IsPostBack)
                {
                    this.dgvdetalleSol.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA]);

                    //Cargamos los datos de los controles de la pantalla
                    //lbTituloPanel.Text = Constantes.ACCION_NUEVO;
                    CargarListas();
                    HabilitarControlesConsulta();
                    
                    if (Session[Constantes.SESION_PROCESANDO_SOLICITUD] != null)
                    {
                        if ((bool)Session[Constantes.SESION_PROCESANDO_SOLICITUD] == true)
                        {
                            accion = (string)Session[Constantes.SESION_ACCION_SOLICITUD];
                            ObtenerDatosSolicitudAccesoTemporal();
                            txtnroSolicitud.Enabled = false;
                            txtSolicitante.Enabled = false;

                            txtFechaRegistroInicio.Enabled = false;
                            txtFechaRegistroInicio.Text = DateTime.Today.ToShortDateString();


                            if (this.Session[Constantes.SESION_ACCION_SOLICITUD] != null)
                            {
                                if ((string)Session[Constantes.SESION_ACCION_SOLICITUD] == Constantes.ACCION_VISUALIZACION)
                                {
                                    DeshabilitarControlesConsulta();
                                }
                            }
                        }
                    }
                    else
                    {
                        Session.Remove(Constantes.SESION_SOLICITUD_ACCESO);

                        //ObtenerDatosSolicitudAcceso(9);
                        //Cargamos los datos de la Solicitud para los casos de consulta y edición
                        if (accion.Length > 0)
                        {

                            Session.Add(Constantes.SESION_ACCION_SOLICITUD, accion);
                            if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                            {
                                ObtenerDatosSolicitudAcceso(Int32.Parse(idSolicitudAcceso));
                                //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                                DeshabilitarControlesConsulta();
                            }
                            else if (Constantes.ACCION_EDICION.Equals(accion))
                            {
                                ObtenerDatosSolicitudAcceso(Int32.Parse(idSolicitudAcceso));
                                //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                                //HabilitarControlesConsulta();
                            }
                            else
                            {
                                BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
                                if (Session[Constantes.SESION_USUARIO] != null)
                                {
                                    beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
                                    txtSolicitante.Text = string.Format("{0} {1} {2}", beUsuarioSistema.Nombres, beUsuarioSistema.ApellidoPaterno, beUsuarioSistema.ApellidoMaterno);

                                }

                                txtnroSolicitud.Enabled = false;
                                txtFechaRegistroInicio.Enabled = false;
                                txtFechaRegistroInicio.Text = DateTime.Today.ToShortDateString();
                                txtSolicitante.Enabled = false;
                                btnEliminar.Visible = false;

                            }
                        }
                        else
                        {
                            DeshabilitarControlesConsulta();
                            //txtCodigoRol.Enabled = false;
                            //txtCodigoRol.Visible = false;
                            //lbTituloCodigo.Visible = false;
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            bool ProcesandoSolicitud = true;
            GuardarDatosSolicitudtmp();

            Session.Remove(Constantes.SESION_PROCESANDO_SOLICITUD);
            Session.Add(Constantes.SESION_PROCESANDO_SOLICITUD, ProcesandoSolicitud);

            Session.Remove(Constantes.SESION_DETALLE_SOLICITUD_ACCESO);
            Response.Redirect("~/Solicitud/frmDetalleSolicitud.aspx?modo=nuevo");
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            try
            {
                string mensaje = "";
                string scriptmensaje = "";
                BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
                BESolicitudAcceso beSolicitudAcceso = null;
                GuardarDatosSolicitudtmp();
                if (Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
                {
                    beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                    //no graba si no hay detalle
                    if (beSolicitudAcceso.TotalDetalle == Constantes.VALOR_CERO)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_SIN_DETALLESOLICITUD]);
                        return;
                    }

                    if (beSolicitudAcceso.IdSolicitud > 0)
                    {

                        if (blSolicitudAcceso.ActualizarSolicitudAcceso(beSolicitudAcceso) == true)
                        {
                            mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_SOLICITUD_ACCESO_ACTUALIZADO_EXITOSAMENTE];

                            scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_SEGUMIENTO_SOLICITUD_ACCESO]);
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                            Session.Remove(Constantes.SESION_PROCESANDO_SOLICITUD);
                            Session.Remove(Constantes.SESION_SOLICITUD_ACCESO);

                        }
                    }
                    else
                    {
                        blSolicitudAcceso.InsertarSolicitud(beSolicitudAcceso);
                        if (beSolicitudAcceso.IdSolicitud != -1)
                        {
                            txtnroSolicitud.Text = beSolicitudAcceso.NumeroSolicitud;
                            mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_SOLICITUD_ACCESO_REGISTRADO_EXITOSAMENTE];

                            scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_SEGUMIENTO_SOLICITUD_ACCESO]);
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                            Session.Remove(Constantes.SESION_PROCESANDO_SOLICITUD);
                            Session.Remove(Constantes.SESION_SOLICITUD_ACCESO);
                        }

                    }
                }
                else
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_SESSION_SOLICITUD_EXPIRADA]);
                }

            }
            catch (Exception ex)
            {
                //MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);

                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }


        public void GuardarDatosSolicitudtmp()
        {
            BESolicitudAcceso beSolicitudAcceso;
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
            if (Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];
            }
            else
            {
                beSolicitudAcceso = new BESolicitudAcceso();
            }


            //sesion persona
            if (Session[Constantes.SESION_USUARIO] != null)
            {
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
            }



            beSolicitudAcceso.TipoAcceso = new BETipoAcceso();
            beSolicitudAcceso.TipoAcceso.IdTipoAcceso = Convert.ToInt32(ddlTipoAcceso.SelectedValue);
            beSolicitudAcceso.Agencia = new BEAgencia();
            beSolicitudAcceso.Agencia.IdAgencia = Convert.ToInt32(ddlAgencia.SelectedValue);

            beSolicitudAcceso.Sucursal = new BESucursal();
            beSolicitudAcceso.Sucursal.IdSucursal = Convert.ToInt32(ddlSucursal.SelectedValue);

            beSolicitudAcceso.Estado = new BEEstado();
            beSolicitudAcceso.Estado.IdEstado = Constantes.ID_ESTADO_REGISTRO_SOLICITUD;

            beSolicitudAcceso.NumEquipos = Convert.ToInt32(txtEstaciones.Text == "" ? 0 : Convert.ToInt32(txtEstaciones.Text));
           
            if (beSolicitudAcceso.NumeroSolicitud == null)
            {
                beSolicitudAcceso.Solicitante = new BESolicitante();
                beSolicitudAcceso.Solicitante.IdPersona = beUsuarioSistema.IdPersona;
                //beSolicitudAcceso.Solicitante.ApellidoPaterno = beUsuarioSistema.ApellidoPaterno;
                //beSolicitudAcceso.Solicitante.ApellidoMaterno = beUsuarioSistema.ApellidoMaterno;
                //beSolicitudAcceso.Solicitante.Nombres = beUsuarioSistema.Nombres;

                beSolicitudAcceso.UsuarioCreacion = new BEUsuarioSistema();
                beSolicitudAcceso.UsuarioCreacion = beUsuarioSistema;

                beSolicitudAcceso.NumeroSolicitud = Constantes.NUMERO_SOLICITUD_INICIAL;
                beSolicitudAcceso.FechaRegistro = DateTime.Today;
            }
            Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
            Session.Add(Constantes.SESION_SOLICITUD_ACCESO, beSolicitudAcceso);
        }

        public void CargarListas()
        {

            BLAgencia blAgencia = new BLAgencia();
            BLTipoAcceso blTipoAcceso = new BLTipoAcceso();


            Herramienta.CargarDropDownListSeleccione(ddlAgencia, blAgencia.ListarAgencia(), "IdAgencia", "Nombre");
            Herramienta.CargarDropDownListSeleccione(ddlTipoAcceso, blTipoAcceso.ListarTipoAcceso(), "IdTipoAcceso", "Nombre");
            CargarSucursalLista(0);
        }

        public void CargarSucursalLista(int idAgencia)
        {
            BLSucursal blSucursal = new BLSucursal();
            Herramienta.CargarDropDownListSeleccione(ddlSucursal, blSucursal.ListarSucursal(idAgencia), "IdSucursal", "Nombre");
        }

        private void ObtenerDatosSolicitudAcceso(int idSolicitudAcceso)
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BLPersona blPersona = new BLPersona();
            BEPersona bePersona = null;
            BESolicitudAcceso beSolicitudAcceso = blSolicitudAcceso.ObtenerSolicitud(idSolicitudAcceso);
            hdiIDSolicitudAcceso.Value = beSolicitudAcceso.IdSolicitud.ToString();
            txtnroSolicitud.Text = beSolicitudAcceso.NumeroSolicitud;

            bePersona = blPersona.ObtenerPersona(string.Empty, beSolicitudAcceso.Solicitante.IdPersona);
            txtSolicitante.Text = bePersona.NombresCompletos;
            ddlTipoAcceso.SelectedValue = beSolicitudAcceso.TipoAcceso.IdTipoAcceso.ToString();
            ddlAgencia.SelectedValue = beSolicitudAcceso.Agencia.IdAgencia.ToString();

            CargarSucursalLista(beSolicitudAcceso.Agencia.IdAgencia);
            ddlSucursal.SelectedValue = beSolicitudAcceso.Sucursal.IdSucursal.ToString();
            txtFechaRegistroInicio.Text = beSolicitudAcceso.FechaRegistro.ToString("dd/MM/yyyy");
            txtEstaciones.Text = beSolicitudAcceso.NumEquipos.ToString();

            Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
            Session.Add(Constantes.SESION_SOLICITUD_ACCESO, beSolicitudAcceso);

            dgvdetalleSol.DataSource = beSolicitudAcceso.DetalleSolicitud;
            dgvdetalleSol.DataBind();

        }

        private void ObtenerDatosSolicitudAccesoTemporal()
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BLPersona blPersona = new BLPersona();
            BEPersona bePersona = null;
            BESolicitudAcceso beSolicitudAcceso;
            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                // BESolicitudAcceso beSolicitudAcceso = blSolicitudAcceso.ObtenerSolicitud(idSolicitudAcceso);
                hdiIDSolicitudAcceso.Value = beSolicitudAcceso.IdSolicitud.ToString();
                txtnroSolicitud.Text = beSolicitudAcceso.NumeroSolicitud;

                bePersona = blPersona.ObtenerPersona(string.Empty, beSolicitudAcceso.Solicitante.IdPersona);
                txtSolicitante.Text = bePersona.NombresCompletos;
                ddlTipoAcceso.SelectedValue = beSolicitudAcceso.TipoAcceso.IdTipoAcceso.ToString();
                ddlAgencia.SelectedValue = beSolicitudAcceso.Agencia.IdAgencia.ToString();

                CargarSucursalLista(beSolicitudAcceso.Agencia.IdAgencia);
                ddlSucursal.SelectedValue = beSolicitudAcceso.Sucursal.IdSucursal.ToString();

                txtEstaciones.Text = beSolicitudAcceso.NumEquipos.ToString();

                Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
                Session.Add(Constantes.SESION_SOLICITUD_ACCESO, beSolicitudAcceso);
                
                dgvdetalleSol.DataSource = beSolicitudAcceso.DetalleSolicitud;
                dgvdetalleSol.DataBind();
            }
        }

        private void ObtenerDatosDetalleSolicitudAcceso()
        {
            BLDetalleSolicitud blDetalleSolicitud = new BLDetalleSolicitud();

            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                BESolicitudAcceso beSolicitudAcceso;
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                BEDetalleSolicitudList beDetalleSolicitudList = blDetalleSolicitud.ListarDetalleSolicitud(beSolicitudAcceso.IdSolicitud);
                if (beDetalleSolicitudList != null && beDetalleSolicitudList.Count > 0)
                {
                    beSolicitudAcceso.DetalleSolicitud = beDetalleSolicitudList;
                }
                Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
                Session.Add(Constantes.SESION_SOLICITUD_ACCESO, beSolicitudAcceso);

                dgvdetalleSol.DataSource = beSolicitudAcceso.DetalleSolicitud;
                dgvdetalleSol.DataBind();
            }
        }

        private void HabilitarControlesConsulta()
        {
            txtnroSolicitud.Enabled = false;
            btnEliminar.Visible = true;
            btnNuevo.Enabled = true;
            btnNuevo.Visible = true;
            btnSalir.Enabled = true;

            ddlTipoAcceso.Enabled = true;
            ddlAgencia.Enabled = true;
            ddlSucursal.Enabled = true;
        }

        private void DeshabilitarControlesConsulta()
        {
            txtnroSolicitud.Enabled = false;
            txtFechaRegistroInicio.Enabled = false;
            txtSolicitante.Enabled = false;
            btnEliminar.Visible = false;
            btnNuevo.Enabled = false;
            btnNuevo.Visible = false;
            btnGrabar.Enabled = false;
            btnGrabar.Visible = false;
            btnSalir.Enabled = true;

            ddlTipoAcceso.Enabled = false;
            ddlAgencia.Enabled = false;
            ddlSucursal.Enabled = false;
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

        protected void dgvdetalleSol_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                BESolicitudAcceso beSolicitudAcceso;
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                this.dgvdetalleSol.PageIndex = e.NewPageIndex;
                BEDetalleSolicitudList beDetalleSolicitudList = beSolicitudAcceso.DetalleSolicitud;
                this.dgvdetalleSol.DataSource = beDetalleSolicitudList;
                this.dgvdetalleSol.DataBind();
            }
        }

        protected void dgvdetalleSol_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lnkAnular = (LinkButton)e.Row.Cells[0].FindControl("lnkAnular");
                LinkButton lnkConsultar = (LinkButton)e.Row.Cells[0].FindControl("lnkConsultar");
                LinkButton lnkModificar = (LinkButton)e.Row.Cells[0].FindControl("lnkModificar");

                lnkAnular.OnClientClick = Herramienta.MensajeEliminar();

                if (accion == Constantes.ACCION_NUEVO || accion == Constantes.ACCION_EDICION)
                {
                    //lnkModificar.Visible = false; //Enabled = false;
                    lnkAnular.Visible = true;
                    lnkConsultar.Visible = true;
                    lnkModificar.Visible = true;
                }
                else
                {
                    lnkAnular.Visible = false;
                    lnkConsultar.Visible = true;
                    lnkModificar.Visible = false;
                }
            }
        }

        protected void dgvdetalleSol_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int idDetalleSolicitud = Convert.ToInt32(e.CommandArgument);

            //Validar si ya fue grabado
            //if (idDetalleSolicitud == Constantes.VALOR_CERO)
            //{
            //    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GUARDARDETALLE_ELIMINAR]);
            //    return;
            //}
           
            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                
                
                if (idDetalleSolicitud > 0)
                {
                    try
                    {
                        BLDetalleSolicitud blDetalleSolicitud = new BLDetalleSolicitud();
                        if (blDetalleSolicitud.EliminarDetalleSolicitud(idDetalleSolicitud))
                        {
                            ObtenerDatosDetalleSolicitudAcceso();
                        }
                    }
                    catch (Exception ex)
                    {
                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
                else
                {
                    GridViewRow gvRow = (GridViewRow)((Control)(e.CommandSource)).Parent.Parent;
                    BESolicitudAcceso beSolicitudAcceso;
                    beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];
                    BEDetalleSolicitudList beDetalleSolicitud;
                    beDetalleSolicitud = beSolicitudAcceso.DetalleSolicitud;
                    beDetalleSolicitud.RemoveAt(gvRow.DataItemIndex);
                    dgvdetalleSol.DataSource = beDetalleSolicitud;
                    dgvdetalleSol.DataBind();
                    
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            {
                bool ProcesandoSolicitud = true;

                Session.Remove(Constantes.SESION_PROCESANDO_SOLICITUD);
                Session.Add(Constantes.SESION_PROCESANDO_SOLICITUD, ProcesandoSolicitud);

                Session.Remove(Constantes.SESION_DETALLE_SOLICITUD_ACCESO);
                Response.Redirect(String.Format("~/Solicitud/frmDetalleSolicitud.aspx?modo=EDITAR&IdDetalleSolicitudAcceso={0}", idDetalleSolicitud));
            }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                bool ProcesandoSolicitud = true;

                Session.Remove(Constantes.SESION_PROCESANDO_SOLICITUD);
                Session.Add(Constantes.SESION_PROCESANDO_SOLICITUD, ProcesandoSolicitud);
                Session.Remove(Constantes.SESION_DETALLE_SOLICITUD_ACCESO);
                Response.Redirect(String.Format("~/Solicitud/frmDetalleSolicitud.aspx?modo=CONSULTAR&IdDetalleSolicitudAcceso={0}&modo2=Consultar", idDetalleSolicitud));
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_SOLICITUD_ACCESO);
            Session.Remove(Constantes.SESION_PROCESANDO_SOLICITUD);
            if (Modo2 == "Consultar")
            {
                Response.Redirect("~/Solicitud/frmSolicitudAccesoSeguim.aspx?modo=Consultar");
            }
            else {
                Response.Redirect("~/Solicitud/frmSolicitudAccesoSeguim.aspx");
            }

        }

        protected void dgvdetalleSol_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void dgvdetalleSol_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void dgvdetalleSol_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

        protected void dgvdetalleSol_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            dgvdetalleSol.DataBind();
        }



    }

}

