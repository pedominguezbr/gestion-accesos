using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SgaGestionAcceso.Negocio;
using SgaGestionAcceso.Helper;
using System.Collections;
using Microsoft.Reporting.WebForms;

namespace SgaGestionAcceso.WEB
{
    public partial class Reporte : System.Web.UI.Page
    {

        public IList gSolicitudes
        {
            get { return (IList)ViewState["_gSolicitudes_"]; }
            set { ViewState["_gSolicitudes_"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                CargarListas();
                CargaGrilla();
            }
        }

        protected void dgvSolicitudAcceso_PageIndexChanging(object sender, GridViewPageEventArgs e) {
            if (e.NewPageIndex >= 0)
            {
                dgvSolicitudAcceso.PageIndex = e.NewPageIndex;
                dgvSolicitudAcceso.DataSource = gSolicitudes;
                dgvSolicitudAcceso.DataBind();
                dgvSolicitudAcceso.SelectedIndex = -1;
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            CargaGrilla();
        }

        public void CargarListas() {
            BLAgencia blAgencia = new BLAgencia();
            BLEstado blEstado = new BLEstado();
            BLPersona blPersona = new BLPersona();
            
            Herramienta.CargarDropDownListItemTodos(ddlAgencia, blAgencia.ListarAgencia(), "IdAgencia", "Nombre");
            Herramienta.CargarDropDownListItemTodos(ddlEstado, blEstado.ListarEstado(), "IdEstado", "Nombre");
            Herramienta.CargarDropDownListItemTodos(ddlSolicitante, blPersona.ListarPersona(), "idPersona", "Nombres");
            Herramienta.CargarDropDownListItemTodos(ddlAutorizante, blPersona.ListarAutorizante(), "IdAutorizante", "Nombres");
            Herramienta.CargarDropDownListItemTodos(ddlEspecialista, blPersona.ListarPersona(), "idPersona", "Nombres");
        }

        public void CargaGrilla() {
            BLReporte Reporte = new BLReporte();
            int? Estado = GetIntNull(ddlEstado.SelectedValue == "-1" ? null : ddlEstado.SelectedValue);
            int? Solicitante = GetIntNull(ddlSolicitante.SelectedValue == "-1" ? null : ddlSolicitante.SelectedValue);
            int? Autorizante = GetIntNull(ddlAutorizante.SelectedValue == "-1" ? null : ddlAutorizante.SelectedValue);
            int? Especialista = GetIntNull(ddlEspecialista.SelectedValue == "-1" ? null : ddlEspecialista.SelectedValue);
            int? Agencia = GetIntNull(ddlAgencia.SelectedValue == "-1" ? null : ddlAgencia.SelectedValue);
            DateTime? FecSolIni = GetDateNull(txtFecSolini.Text);
            DateTime? FecSolFin = GetDateNull(txtFecSolFin.Text);
            DateTime? FecCieIni = GetDateNull(txtFecCieIni.Text);
            DateTime? fecCieFin = GetDateNull(txtFecCieFin.Text);
            gSolicitudes = Reporte.Reporte( Estado, Solicitante, Autorizante, Especialista, Agencia, FecSolIni, FecSolFin, FecCieIni, fecCieFin);
            dgvSolicitudAcceso.DataSource = gSolicitudes;
            dgvSolicitudAcceso.DataBind();
        }
        public static DateTime? GetDateNull(string pFecha)
        {
            DateTime fecha;
            DateTime? valfecha = null;
            if (DateTime.TryParse(pFecha, out fecha))
            {
                valfecha = fecha;
            }

            return valfecha;
        }
        public static int? GetIntNull(string pInt)
        {
            int num;
            int? valnum = null;
            if (Int32.TryParse(pInt, out num))
            {
                valnum = num;
            }

            return valnum;
        }

        protected void btnReporte_Click(object sender, EventArgs e)
        {
            string Estado = "IdEstado=" + (ddlEstado.SelectedValue == "-1" ? "null" : ddlEstado.SelectedValue) + ";";
            string Solicitante = "IdSolicitante=" + (ddlSolicitante.SelectedValue == "-1" ? "null" : ddlSolicitante.SelectedValue) + ";";
            string Autorizante = "IdAutorizante=" + (ddlAutorizante.SelectedValue == "-1" ? "null" : ddlAutorizante.SelectedValue) + ";"; 
            string Especialista = "IdEspecialista=" + (ddlEspecialista.SelectedValue == "-1" ? "null" : ddlEspecialista.SelectedValue) + ";";
            string Agencia = "IdAgencia=" + (ddlAgencia.SelectedValue == "-1" ? "null" : ddlAgencia.SelectedValue) + ";";
            string FecSolIni = "FechaIniSol=" + (txtFecSolini.Text == "" ? "null" : txtFecSolini.Text) + ";";
            string FecSolFin = "FechaFinSol=" + (txtFecSolFin.Text == "" ? "null" : txtFecSolFin.Text) + ";";
            string FecCieIni = "FechaIniCie=" + (txtFecCieIni.Text == "" ? "null" : txtFecCieIni.Text) + ";";
            string fecCieFin = "FechaFinCie=" + (txtFecCieFin.Text == "" ? "null" : txtFecCieFin.Text);
            string sDE_URLS = "ReportViewer.aspx?";
            string sPA_GENE="Atenciones;" + Estado + Solicitante + Autorizante + Especialista + Agencia + FecSolIni + FecSolFin + FecCieIni + fecCieFin;

            string Script = "window.open('VisorReporte.aspx?sPA_GENE=" + sPA_GENE + "', '', 'toolbar=no,left=0,top=0,width=' + screen.width + ',height=' + screen.height + ', directories=no, status=no, scrollbars=yes, resizable=yes, menubar=no');";
            ScriptManager.RegisterClientScriptBlock(up, up.GetType(), "", Script, true);
        }

        
    }
}