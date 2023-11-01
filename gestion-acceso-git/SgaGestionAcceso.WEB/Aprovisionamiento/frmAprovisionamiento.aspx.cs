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
namespace SgaGestionAcceso.WEB.Aprovisionamiento
{
    public partial class frmAprovisionamiento : System.Web.UI.Page
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
                string Consulta = Request.QueryString["modo2"] != null ? Request.QueryString["modo2"] : "";

                if (!IsPostBack)
                {
                    this.dgvdetalleSol.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA]);
                    if (Consulta == "Consultar") {
                        btnAprovisionar.Visible = false;
                    }

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
            txtFechaRegistro.Enabled = false;
            txtFechaValidacion.Enabled = false;
            txtSolicitante.Enabled = false;
            txtTipoAcceso.Enabled = false;

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
            txtTipoAcceso.Text = beSolicitudAcceso.TipoAcceso.Nombre;
            txtFechaRegistro.Text = beSolicitudAcceso.FechaRegistro.ToString("dd/MM/yyyy");
            txtFechaValidacion.Text = beSolicitudAcceso.FechaValidacion.ToString("dd/MM/yyyy");

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
            Response.Redirect("~/Aprovisionamiento/frmAprovisionamientoSeguim.aspx");
        }

        protected void btnAprovisionar_Click(object sender, EventArgs e)
        {
            try
            {
                Aprovisionar();
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void Aprovisionar()
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BESolicitudAcceso beSolicitudAcceso;
            BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
            BEDetSolAplicaciPuestoList beDetSolAplicaciPuestoList;

            BLAprovisionamiento blAprovisionamiento = new BLAprovisionamiento();
            BEAprovisionamiento beAprovisionamiento = new BEAprovisionamiento();
            BEDetalleAprovisionamiento beDetalleAprovisionamiento;
            BLParametroGeneracionCuenta beParametroGeneracionCuenta = new BLParametroGeneracionCuenta();

            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                //Datos del Aprovisionamiento
                beAprovisionamiento.NumeroCertificado = "01020340590";
                beAprovisionamiento.Solicitud = beSolicitudAcceso;

                beAprovisionamiento.DetalleAprovisionamiento = new BEDetalleAprovisionamientoList();

                //for para validar los datos correctamente.
                foreach (BEDetalleSolicitud beDetalleSolicitud in beSolicitudAcceso.DetalleSolicitud)
                {
                    beDetSolAplicaciPuestoList = blDetSolAplicaPuesto.ListarDetSolAplicaPuesto(beDetalleSolicitud.IdDetalleSolicitud);
                    foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetSolAplicaciPuestoList)
                    {
                        //Datos
                        beDetalleAprovisionamiento = new BEDetalleAprovisionamiento();
                        beDetalleAprovisionamiento.Aplicacion = new BEAplicacion();
                        beDetalleAprovisionamiento.Aplicacion.IdAplicacion = beDetSolAplicaciPuesto.Aplicacion.IdAplicacion;
                        beDetalleAprovisionamiento.Persona = new BEPersona();
                        beDetalleAprovisionamiento.Persona.IdPersona = beDetalleSolicitud.Persona.IdPersona;
                        beDetalleAprovisionamiento.Estado = new BEEstado();
                        beDetalleAprovisionamiento.Estado.IdEstado = Constantes.ID_ESTADO_APROVISIONADO;

                        //Generar el Usuario y la clave del aplicativo para el Usuario
                        beDetalleAprovisionamiento.CuentaUsuario = beParametroGeneracionCuenta.ProcesarCuenta(beDetSolAplicaciPuesto.Aplicacion.IdLogicaGeneracionUsuario, beDetalleSolicitud.Persona);
                        beDetalleAprovisionamiento.ClaveGenerada = beDetalleAprovisionamiento.CuentaUsuario; // "Clave01";

                        beAprovisionamiento.DetalleAprovisionamiento.Add(beDetalleAprovisionamiento);
                    }

                }


                if (blAprovisionamiento.InsertarAprovisionamiento(beAprovisionamiento) == true)
                {

                    BLValidacionEndPoint BLValidacionEndPoint = new BLValidacionEndPoint();
                    BLValidacionEndPoint.ActualizarEstadoAprovisionado(beSolicitudAcceso.IdSolicitud);
                    Response.Redirect(String.Format("~/Aprovisionamiento/frmAprovisionamientoProcesado.aspx?modo=CONSULTAR&IdAprovisionamiento={0}", beAprovisionamiento.IdAprovisionamiento),false);
                    
                }
                else
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_APROVISIONAMIENTO_NOK]);
                }

               // ObtenerDatosSolicitudAcceso(beSolicitudAcceso.IdSolicitud);

                btnAprovisionar.Enabled = false;
            }

        }


    }
}