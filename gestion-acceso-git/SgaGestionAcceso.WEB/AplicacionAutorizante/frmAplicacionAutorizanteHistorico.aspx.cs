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
using System.IO;

namespace SgaGestionAcceso.WEB.AplicacionAutorizante
{
    public partial class frmAplicacionAutorizanteHistorico : System.Web.UI.Page
    {
        private const string SEPARADOR_CSV = ",";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    CargarListas();
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void CargarListas()
        {
            BLAplicacion blAplicacion = new BLAplicacion();
            BLAutorizante blAutorizante = new BLAutorizante();

            Herramienta.CargarDropDownListItemTodos(ddlAplicacion, blAplicacion.ListarAplicacion(), "IdAplicacion", "Nombre");
            Herramienta.CargarDropDownListItemTodos(ddlAutorizante, blAutorizante.ListarAutorizante(), "IdAutorizante", "NombresCompletos");

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            busquedaAplAutoHisto();
        }

        public void busquedaAplAutoHisto()
        {
            BLAplicacionAutorizanteHistorico blAplicacionAutorizanteHistorico = new BLAplicacionAutorizanteHistorico();
            BEAplicacionAutorizanteHistoricoList beAplicacionAutorizanteHistoricoList = null;
            DateTime fechaini;
            DateTime fechafin;

            if (txtFechaRegistroInicio.Text.Trim() != string.Empty)
            { fechaini = Convert.ToDateTime(txtFechaRegistroInicio.Text); }
            else
            { fechaini = DateTime.MinValue; }

            if (txtFechaRegistroFin.Text.Trim() != string.Empty)
            { fechafin = Convert.ToDateTime(txtFechaRegistroFin.Text); }
            else
            { fechafin = DateTime.MinValue; }

            beAplicacionAutorizanteHistoricoList = blAplicacionAutorizanteHistorico.BuscarAplicacionAutorizanteHistorico(Convert.ToInt32(ddlAplicacion.SelectedValue), Convert.ToInt32(ddlAutorizante.SelectedValue), fechaini, fechafin);

            Session[Constantes.SESION_LISTA_APLICAAUTORIZANTEHISTO] = null;
            Session.Add(Constantes.SESION_LISTA_APLICAAUTORIZANTEHISTO, beAplicacionAutorizanteHistoricoList);

            dgvConsultaAplAutoHisto.DataSource = beAplicacionAutorizanteHistoricoList;
            dgvConsultaAplAutoHisto.DataBind();

            if (beAplicacionAutorizanteHistoricoList.ToList().Count == 0)
            { ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda"); }
        }

        protected void dgvConsultaAplAutoHisto_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_LISTA_APLICAAUTORIZANTEHISTO] != null)
            {
                BEAplicacionAutorizanteHistoricoList beAplicacionAutorizanteHistoricoList = null;
                beAplicacionAutorizanteHistoricoList = (BEAplicacionAutorizanteHistoricoList)Session[Constantes.SESION_LISTA_APLICAAUTORIZANTEHISTO];

                this.dgvConsultaAplAutoHisto.PageIndex = e.NewPageIndex;

                this.dgvConsultaAplAutoHisto.DataSource = beAplicacionAutorizanteHistoricoList;
                this.dgvConsultaAplAutoHisto.DataBind();
            }
        }

        protected void dgvConsultaAplAutoHisto_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == Constantes.COMANDO_DESCARGAR)
            {
                string rutadescargar;
                string RutaModoNormal;
                string type = string.Empty;
                rutadescargar = Convert.ToString(e.CommandArgument);
                //dgvdetalleSol.DataKeys[ IdGenAgenteValidador
                RutaModoNormal = Server.MapPath(rutadescargar);
                string ext = System.IO.Path.GetExtension(RutaModoNormal);

                Response.Clear();
                Response.ClearContent();
                Response.ClearHeaders();

                switch (ext)
                {
                    case ".pdf":
                        type = "Application/pdf";
                        break;
                    case ".exe":
                        type = "application/octet-stream";
                        break;
                    default:
                        type = "text/plain";
                        break;
                }

                using (FileStream streamArchivo = File.Open(RutaModoNormal, FileMode.Open, FileAccess.Read))
                {
                    byte[] getContent = null;

                    getContent = new byte[streamArchivo.Length];

                    streamArchivo.Read(getContent, 0, Convert.ToInt32(streamArchivo.Length.ToString()));

                    Response.AddHeader("content-disposition", "attachment; filename = " + rutadescargar.Substring(rutadescargar.LastIndexOf("/") + 1));

                    Response.ContentType = type;
                    Response.BinaryWrite(getContent);
                }
                Response.Flush();

                Response.End();

            }
        }

        protected void btnExportar_Click(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            if (this.Session[Constantes.SESION_LISTA_APLICAAUTORIZANTEHISTO] != null)
            {
                BEAplicacionAutorizanteHistoricoList beAplicacionAutorizanteHistoricoList = null;
                beAplicacionAutorizanteHistoricoList = (BEAplicacionAutorizanteHistoricoList)Session[Constantes.SESION_LISTA_APLICAAUTORIZANTEHISTO];

                if (beAplicacionAutorizanteHistoricoList.ToList().Count == 0)
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para Exportar");
                    return;
                }

                context.Response.Clear();
                context.Response.Write("ID" + SEPARADOR_CSV);
                context.Response.Write("Aplicación" + SEPARADOR_CSV);
                context.Response.Write("Autorizante" + SEPARADOR_CSV);
                context.Response.Write("Comentario" + SEPARADOR_CSV);
                context.Response.Write("Accion" + SEPARADOR_CSV);
                context.Response.Write("Usuario Modificación" + SEPARADOR_CSV);
                context.Response.Write("Fecha Modificación" + SEPARADOR_CSV);

                context.Response.Write(Environment.NewLine);

                foreach (BEAplicacionAutorizanteHistorico beAplicacionAutorizanteHistorico in beAplicacionAutorizanteHistoricoList)
                {
                    context.Response.Write(string.Concat(beAplicacionAutorizanteHistorico.IdHistorico.ToString().Replace(SEPARADOR_CSV, string.Empty), SEPARADOR_CSV));
                    context.Response.Write(string.Concat(beAplicacionAutorizanteHistorico.Aplicacion.Nombre.Replace(SEPARADOR_CSV, string.Empty), SEPARADOR_CSV));
                    context.Response.Write(string.Concat(beAplicacionAutorizanteHistorico.Autorizante.NombresCompletos.Replace(SEPARADOR_CSV, string.Empty), SEPARADOR_CSV));
                    context.Response.Write(string.Concat(beAplicacionAutorizanteHistorico.Comentario.Replace(SEPARADOR_CSV, string.Empty), SEPARADOR_CSV));
                    context.Response.Write(string.Concat(beAplicacionAutorizanteHistorico.Accion.Replace(SEPARADOR_CSV, string.Empty), SEPARADOR_CSV));
                    context.Response.Write(string.Concat(beAplicacionAutorizanteHistorico.UsuarioModificacion.Replace(SEPARADOR_CSV, string.Empty), SEPARADOR_CSV));
                    context.Response.Write(string.Concat(String.Format("{0:dd/MM/yyyy}", beAplicacionAutorizanteHistorico.FechaModificacion), SEPARADOR_CSV));
                    context.Response.Write(Environment.NewLine);
                }

                context.Response.ContentType = "application/vnd.csv";
                context.Response.Charset = "";
                context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                context.Response.Charset = "UTF-8";
                context.Response.ContentEncoding = System.Text.Encoding.Unicode;

                context.Response.AppendHeader("Content-Disposition", "attachment; filename=AplicacionAutorizanteHistorico.csv");
                context.Response.End();
            }
            else
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para Exportar");
                return;
            }
        }

    }
}