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
namespace SgaGestionAcceso.WEB.ValPuntoAcceso
{
    public partial class frmValPuntoAccesoSeguim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    this.dgvListaAgencias.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA]);

                    CargarListas();
                    BuscarSolicitudes();
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }
        protected void dgvListaAgencias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string idSolicitud = e.CommandArgument.ToString();
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                ObtenerDatosDetalleValidadores(idSolicitud);
                mpeDetalleAgenteValidacion.Show();
            }

        }

        private void ObtenerDatosDetalleValidadores(string idSolicitud)
        {
            BLEscaneoAgenciaSucursal BLEscaneoAgenciaSucursal = new BLEscaneoAgenciaSucursal();
            dgvDetalleAgenteValidacion.DataSource = BLEscaneoAgenciaSucursal.ObtenerEscaneoAgenciaSucursal(idSolicitud);
            dgvDetalleAgenteValidacion.DataBind();
        }

        protected void dgvListaAgencias_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_BUSQUEDA_ESCANEOAGENCIASUC] != null)
            {
                BEEscaneoAgenciaSucursalList beEscaneoAgenciaSucursalList = null;
                beEscaneoAgenciaSucursalList = (BEEscaneoAgenciaSucursalList)Session[Constantes.SESION_BUSQUEDA_ESCANEOAGENCIASUC];

                this.dgvListaAgencias.PageIndex = e.NewPageIndex;
                this.dgvListaAgencias.DataSource = beEscaneoAgenciaSucursalList;
                this.dgvListaAgencias.DataBind();
            }
        }

        public void CargarListas()
        {
            BLAgencia blAgencia = new BLAgencia();
            BLTipoAcceso blTipoAcceso = new BLTipoAcceso();
            BLEstado blEstado = new BLEstado();

            Herramienta.CargarDropDownListItemTodos(ddlAgencia, blAgencia.ListarAgencia(), "IdAgencia", "Nombre");
            //Herramienta.CargarDropDownListItemTodos(ddlEstado, blEstado.ListarEstado(Constantes.ID_TIPO_ESTADO_VALIDA_PUNTO_ACCESO), "IdEstado", "Nombre");
            CargarSucursalLista(0);

        }

        public void CargarSucursalLista(int idAgencia)
        {
            BLSucursal blSucursal = new BLSucursal();
            Herramienta.CargarDropDownListItemTodos(ddlSucursal, blSucursal.ListarSucursal(idAgencia), "IdSucursal", "Nombre");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            BuscarSolicitudes();
        }
        public void BuscarSolicitudes()
        {
            DateTime fechaini, fechafin;
            BLEscaneoAgenciaSucursal blEscaneoAgenciaSucursal = new BLEscaneoAgenciaSucursal();
            BEEscaneoAgenciaSucursalList beEscaneoAgenciaSucursalList = null;
            try
            {

                if (txtfechaInicio.Text == string.Empty)
                { fechaini = DateTime.MinValue; }
                else { fechaini = Convert.ToDateTime(txtfechaInicio.Text); }

                if (txtfechafin.Text == string.Empty)
                { fechafin = DateTime.MinValue; }
                else { fechafin = Convert.ToDateTime(txtfechafin.Text); }

                beEscaneoAgenciaSucursalList = blEscaneoAgenciaSucursal.BuscarEscaneoAgenciaSucursal(fechaini, fechafin, Convert.ToInt32(ddlAgencia.SelectedValue), Convert.ToInt32(ddlSucursal.SelectedValue),ddlEstado.SelectedValue);

                Session[Constantes.SESION_BUSQUEDA_ESCANEOAGENCIASUC] = null;
                Session.Add(Constantes.SESION_BUSQUEDA_ESCANEOAGENCIASUC, beEscaneoAgenciaSucursalList);
                
                dgvListaAgencias.DataSource = beEscaneoAgenciaSucursalList;
                dgvListaAgencias.DataBind();
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
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

        protected void dgvDetalleAgenteValidacion_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            string idDetEscaneoValidacion = e.CommandArgument.ToString();
            if (e.CommandName == Constantes.COMANDO_VALIDAR)
            {
                Response.Redirect(String.Format("~/ValPuntoAcceso/frmValidacionendPoint.aspx?modo=VALIDAR&IdDetEscaneoValidacion={0}", idDetEscaneoValidacion),false);
            }
        }
    }
}