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
    public partial class frmAplicacionAutorizanteConsulta : System.Web.UI.Page
    {
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

        protected void btnnuevoAplAutorizancion_Click(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_LISTA_APLICAAUTORIZANTE);
            Session.Remove(Constantes.SESION_APLICAAUTORIZANTE);
            Response.Redirect("~/AplicacionAutorizante/frmAplicacionAutorizante.aspx?modo=NUEVO");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            busquedaAplAuto();
        }

        public void busquedaAplAuto()
        {
            BLAplicacionAutorizante blAplicacionAutorizante = new BLAplicacionAutorizante();
            BEAplicacionAutorizanteList beAplicacionAutorizanteList = null;

            beAplicacionAutorizanteList = blAplicacionAutorizante.BuscarAplicacionAutorizante(Convert.ToInt32(ddlAplicacion.SelectedValue), Convert.ToInt32(ddlAutorizante.SelectedValue));

            Session[Constantes.SESION_LISTA_APLICAAUTORIZANTE] = null;
            Session.Add(Constantes.SESION_LISTA_APLICAAUTORIZANTE, beAplicacionAutorizanteList);

            dgvConsultaAplAutorizacion.DataSource = beAplicacionAutorizanteList;
            dgvConsultaAplAutorizacion.DataBind();

            if (beAplicacionAutorizanteList.ToList().Count == 0)
            { ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda"); }
        }

        protected void dgvConsultaAplAutorizacion_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_LISTA_APLICAAUTORIZANTE] != null)
            {
                BEAplicacionAutorizanteList beAplicacionAutorizanteList = null;
                beAplicacionAutorizanteList = (BEAplicacionAutorizanteList)Session[Constantes.SESION_LISTA_APLICAAUTORIZANTE];

                this.dgvConsultaAplAutorizacion.PageIndex = e.NewPageIndex;

                this.dgvConsultaAplAutorizacion.DataSource = beAplicacionAutorizanteList;
                this.dgvConsultaAplAutorizacion.DataBind();
            }
        }

        protected void dgvConsultaAplAutorizacion_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idAplAuto;
            string rutadescargar;

            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                idAplAuto = Convert.ToInt32(e.CommandArgument);
                if (idAplAuto > 0)
                {
                    try
                    {
                        BLAplicacionAutorizante blAplicacionAutorizante = new BLAplicacionAutorizante();
                        BEAplicacionAutorizante beAplicacionAutorizante = blAplicacionAutorizante.ObtenerAplicacionAutorizante(idAplAuto);

                        if (blAplicacionAutorizante.EliminarAplicacionAutorizante(idAplAuto, beAplicacionAutorizante))
                        { busquedaAplAuto(); }
                    }
                    catch (Exception ex)
                    {
                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            {
                idAplAuto = Convert.ToInt32(e.CommandArgument);
                Response.Redirect(String.Format("~/AplicacionAutorizante/frmAplicacionAutorizante.aspx?modo=EDITAR&idAplicacionAutorizante={0}", idAplAuto));

            }

            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                idAplAuto = Convert.ToInt32(e.CommandArgument);
                Response.Redirect(String.Format("~/AplicacionAutorizante/frmAplicacionAutorizante.aspx?modo=CONSULTAR&idAplicacionAutorizante={0}", idAplAuto));
            }

            if (e.CommandName == Constantes.COMANDO_DESCARGAR)
            {
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

                    Response.AddHeader("content-disposition", "attachment; filename = " + rutadescargar.Substring(rutadescargar.LastIndexOf("/")+1));
                    Response.ContentType = type;
                    Response.BinaryWrite(getContent);
                }
                Response.Flush();
               
                Response.End();
             
            }
        }

        protected void btnConsultarHistorico_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AplicacionAutorizante/frmAplicacionAutorizanteHistorico.aspx");
        }
    }
}