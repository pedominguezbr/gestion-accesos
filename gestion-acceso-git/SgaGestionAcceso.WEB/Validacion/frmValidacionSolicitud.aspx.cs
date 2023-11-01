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

namespace SgaGestionAcceso.WEB.Validacion
{
    public partial class frmValidacionSolicitud : System.Web.UI.Page
    {
        private const string ID_SOLICITUD_ACCESO = "IdSolicitudAcceso";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Extraemos los parametros de consulta
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idSolicitudAcceso = Request.QueryString[ID_SOLICITUD_ACCESO] != null ? Request.QueryString[ID_SOLICITUD_ACCESO] : "";


                if (!IsPostBack)
                {
                    this.dgvdetalleSol.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA]);

                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosSolicitudAcceso(Int32.Parse(idSolicitudAcceso));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            DeshabilitarControlesConsulta();
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

        private void DeshabilitarControlesConsulta()
        {
            txtnroSolicitud.Enabled = false;
            txtFechaRegistroInicio.Enabled = false;
            txtSolicitante.Enabled = false;


            txtEstado.Enabled = false;
            txtAgencia.Enabled = false;
            txtSucursal.Enabled = false;
        }

        private void ObtenerDatosSolicitudAcceso(int idSolicitudAcceso)
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BLPersona blPersona = new BLPersona();
            BEPersona bePersona = null;
            BESolicitudAcceso beSolicitudAcceso = blSolicitudAcceso.ObtenerSolicitud(idSolicitudAcceso);

            txtnroSolicitud.Text = beSolicitudAcceso.NumeroSolicitud;

            bePersona = blPersona.ObtenerPersona(string.Empty, beSolicitudAcceso.Solicitante.IdPersona);
            txtSolicitante.Text = bePersona.NombresCompletos;
            txtAutorizante.Text = beSolicitudAcceso.Autorizante.NombresCompletos;
            //ddlTipoAcceso.SelectedValue = beSolicitudAcceso.TipoAcceso.IdTipoAcceso.ToString();
            txtAgencia.Text = beSolicitudAcceso.Agencia.Nombre;

            //CargarSucursalLista(beSolicitudAcceso.Agencia.IdAgencia);
            txtSucursal.Text = beSolicitudAcceso.Sucursal.Nombre;
            txtEstado.Text = beSolicitudAcceso.Estado.Nombre;
            txtFechaRegistroInicio.Text = beSolicitudAcceso.FechaRegistro.ToString("dd/MM/yyyy");

            Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
            Session.Add(Constantes.SESION_SOLICITUD_ACCESO, beSolicitudAcceso);

            dgvdetalleSol.DataSource = beSolicitudAcceso.DetalleSolicitud;
            dgvdetalleSol.DataBind();

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

        protected void dgvdetalleSol_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idDetalleSolicitud = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                ObtenerDatosDetalleSolicitudAcceso(idDetalleSolicitud);
                mpeDetalleAplicacion.Show();
            }

        }

        private void ObtenerDatosDetalleSolicitudAcceso(int idDetalleSolicitudAcceso)
        {
            BLDetalleSolicitud blDetalleSolicitud = new BLDetalleSolicitud();
            BEDetalleSolicitud beDetalleSolicitud = blDetalleSolicitud.ObtenerDetalleSolicitud(idDetalleSolicitudAcceso);

            //txtDNI.Text = beDetalleSolicitud.Persona.DNI;
            //txtNombresApellidos.Text = beDetalleSolicitud.Persona.NombresCompletos;

            dgvAplicacioneValidar.DataSource = beDetalleSolicitud.DetSoliAplicacionPuesto;
            dgvAplicacioneValidar.DataBind();


        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Validacion/frmValidacionSeguim.aspx");
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            try
            {
                ValidarSolicitud();
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void ValidarSolicitud()
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BLDetalleSolicitud blDetalleSolicitud = new BLDetalleSolicitud();
            BESolicitudAcceso beSolicitudAcceso;
            BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
            BEDetSolAplicaciPuestoList beDetSolAplicaciPuestoList;
            BLUsuarioObservado blUsuarioObservado = new BLUsuarioObservado();
            BLAutorizante blAutorizante = new BLAutorizante();
            BEAutorizante beAutorizante;
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();

            BEUsuarioObservadoList beUsuarioObservadoList;
            bool ValidadoOk = false;
            string msgValidacion = "";
            WsReniec1.WsReniec wsReniec = new WsReniec1.WsReniec();
            wsReniec.PreAuthenticate = true;
            //wsReniec.UseDefaultCredentials = true;
            wsReniec.Credentials = System.Net.CredentialCache.DefaultCredentials;
            WsReniec1.BEPersona bePersonaReniec;



            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];

                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                beAutorizante = blAutorizante.ObtenerAutorizante(Constantes.VALOR_CERO, beUsuarioSistema.IdPersona);

                if (beAutorizante == null)
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_USUARIO_NO_AUTORIZADOR]);
              
                    return;
                }

                //for para validar los datos correctamente.
                foreach (BEDetalleSolicitud beDetalleSolicitud in beSolicitudAcceso.DetalleSolicitud)
                {
                    ValidadoOk = true;
                    msgValidacion = string.Empty;
                    //Validar Si Cliente Existe
                    bePersonaReniec = wsReniec.ObtenerDatosReniec(beDetalleSolicitud.Persona.DNI);

                    //Verificar que DNI Existe
                    if (bePersonaReniec.MsgError.Trim() != WebConfigurationManager.AppSettings[Constantes.MSG_WS_RENIEC_PERSO_NOENC].Trim())
                    {
                        //Validar Edad del Cliente
                        if ((DateTime.Now.Year - bePersonaReniec.FechaNacimiento.Year) >= Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.EDAD_MAYOR_EDAD]))


                            ValidadoOk = true;
                        else
                        {
                            //No es Mayor de Edad
                            msgValidacion = string.Format("El DNI {0} es menor de edad, por favor verificar.", beDetalleSolicitud.Persona.DNI);
                            ValidadoOk = false;
                            beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_ERROR_VALIDACION;
                            beDetalleSolicitud.ObservacionValidacion = msgValidacion;
                            blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
                        }
                    }
                    else
                    {
                        msgValidacion = string.Format("El DNI {0} no existe en la Reniec, por favor verificar.", beDetalleSolicitud.Persona.DNI);
                        ValidadoOk = false;
                        beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_ERROR_VALIDACION;
                        beDetalleSolicitud.ObservacionValidacion = msgValidacion;
                        blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
                    }

                    if (ValidadoOk == true)
                    {

                        beDetSolAplicaciPuestoList = blDetSolAplicaPuesto.ListarDetSolAplicaPuesto(beDetalleSolicitud.IdDetalleSolicitud);
                        foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetSolAplicaciPuestoList)
                        {
                            //Validar Archivo Negativo
                            beUsuarioObservadoList = blUsuarioObservado.BuscarUsuarioObservados(beDetSolAplicaciPuesto.Aplicacion.IdAplicacion, beDetalleSolicitud.Persona.DNI);

                            if (beUsuarioObservadoList.Count == Constantes.VALOR_CERO)
                            {
                                ValidadoOk = true;
                            }
                            else
                            {
                                msgValidacion = string.Format("El DNI {0} y la aplicacion {1} estan registrados como observados, por favor verificar.", beDetalleSolicitud.Persona.DNI, beDetSolAplicaciPuesto.Aplicacion.Nombre);
                                ValidadoOk = false;
                                beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_ERROR_VALIDACION;
                                beDetalleSolicitud.ObservacionValidacion = msgValidacion;
                                blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
                            }

                        }

                    }

                    //Volver a Verificar si la validacion de la solicitud tambien fue OK y actualizar el estado a OK
                    if (ValidadoOk == true)
                    {
                        beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_VALIDADO;
                        blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
                    }
                }

                //Agregar el Autorizante}beSolicitudAcceso
                beSolicitudAcceso.Autorizante.IdAutorizante = beAutorizante.IdAutorizante;

                //Actualiza Estado de las Solicitudes y su Detalle
                if (ValidadoOk == true)
                {
                    //Actualiza Estado a OK a la solicitud y al detalle
                    blSolicitudAcceso.ActEstadoSolAccesoyDetalleValOk(beSolicitudAcceso);
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_VALIDACION_OK]);

                }
                else
                {
                    //Actualiza Estado a Error en validacion a la solicitud y al detalle
                    blSolicitudAcceso.ActEstadoSolAccesoyDetalleValNOk(beSolicitudAcceso);
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], msgValidacion);
                    //Envia un msg indicando el posible error generado
                }


                ObtenerDatosSolicitudAcceso(beSolicitudAcceso.IdSolicitud);


                btnValidar.Enabled = false;
            }

        }

    }
}