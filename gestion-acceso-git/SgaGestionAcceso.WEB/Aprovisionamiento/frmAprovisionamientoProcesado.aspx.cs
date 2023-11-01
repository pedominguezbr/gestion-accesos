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

namespace SgaGestionAcceso.WEB.Aprovisionamiento
{
    public partial class frmAprovisionamientoProcesado : System.Web.UI.Page
    {
        private const string ID_APROVISIONAMIENTO = "IdAprovisionamiento";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Extraemos los parametros de consulta
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idSolicitudAcceso = Request.QueryString[ID_APROVISIONAMIENTO] != null ? Request.QueryString[ID_APROVISIONAMIENTO] : "";


                if (!IsPostBack)
                {
                    
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosAprovisionado(Int32.Parse(idSolicitudAcceso));
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

            txtCertificado.Enabled = false;

         
        }

        private void ObtenerDatosAprovisionado(int idAprovisionamiento)
        {
            BLAprovisionamiento blAprovisionamiento = new BLAprovisionamiento();
            BEAprovisionamiento beAprovisionamiento;
            beAprovisionamiento = blAprovisionamiento.ObtenerAprovisionamiento(idAprovisionamiento);
            txtnroSolicitud.Text = beAprovisionamiento.Solicitud.NumeroSolicitud;
            txtCertificado.Text = beAprovisionamiento.NumeroCertificado;
            dgvdetalleSol.DataSource = beAprovisionamiento.DetalleAprovisionamiento;
            dgvdetalleSol.DataBind();

            ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_APROVISIONAMIENTO_OK]);

        }
        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Aprovisionamiento/frmAprovisionamientoSeguim.aspx");
        }
    }
}