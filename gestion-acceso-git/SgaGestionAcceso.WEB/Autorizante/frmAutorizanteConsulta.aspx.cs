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

namespace SgaGestionAcceso.WEB.Autorizante
{
    public partial class frmAutorizanteConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void busquedaAutorizante()
        {
            BLAutorizante blAutorizante = new BLAutorizante();
            BEAutorizanteList beAutorizanteList = null;
            BEAutorizante beAutorizanteBusqueda = new BEAutorizante();
            
            beAutorizanteBusqueda.Persona = new BEPersona();
            beAutorizanteBusqueda.Persona.DNI = string.Concat("%", txtDNI.Text.Trim(), "%");
            beAutorizanteBusqueda.Persona.Nombres = string.Concat("%", txtNombres.Text.Trim(), "%");
            beAutorizanteBusqueda.Persona.ApellidoPaterno = string.Concat("%", txtApePaterno.Text.Trim(), "%");
            beAutorizanteBusqueda.Persona.ApellidoMaterno = string.Concat("%", txtApeMaterno.Text.Trim(), "%");
            beAutorizanteBusqueda.CIP = string.Concat("%", txtCIP.Text.Trim(), "%");
            beAutorizanteList = blAutorizante.BuscarAutorizante(beAutorizanteBusqueda);

            Session[Constantes.SESION_LISTA_AUTORIZANTE] = null;
            Session.Add(Constantes.SESION_LISTA_AUTORIZANTE, beAutorizanteList);

            dgvConsultaAutorizante.DataSource = beAutorizanteList;
            dgvConsultaAutorizante.DataBind();

            if (beAutorizanteList.ToList().Count == 0)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda");
            }
        }
        protected void dgvConsultaAutorizante_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_LISTA_AUTORIZANTE] != null)
            {
                BEAutorizanteList beAutorizanteList = null;
                beAutorizanteList = (BEAutorizanteList)Session[Constantes.SESION_LISTA_AUTORIZANTE];

                this.dgvConsultaAutorizante.PageIndex = e.NewPageIndex;

                this.dgvConsultaAutorizante.DataSource = beAutorizanteList;
                this.dgvConsultaAutorizante.DataBind();
            }
        }

        protected void dgvConsultaAutorizante_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idAutorizante = Convert.ToInt32(e.CommandArgument);

      
            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                if (idAutorizante > 0)
                {
                    try
                    {
                        BLAutorizante blAutorizante = new BLAutorizante();
                        if (blAutorizante.EliminarAutorizante(idAutorizante))
                        { busquedaAutorizante(); }
                    }
                    catch (Exception ex)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_AUTORIZANTE_ELIMINAR]);

                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            { Response.Redirect(String.Format("~/Autorizante/frmAutorizante.aspx?modo=EDITAR&idAutorizante={0}", idAutorizante)); }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            { Response.Redirect(String.Format("~/Autorizante/frmAutorizante.aspx?modo=CONSULTAR&idAutorizante={0}", idAutorizante)); }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            busquedaAutorizante();
        }

        protected void btnNuevaPersona_Click(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_PERSONAM);
            Response.Redirect("~/Autorizante/frmAutorizante.aspx?modo=NUEVO");
        }
    }
}