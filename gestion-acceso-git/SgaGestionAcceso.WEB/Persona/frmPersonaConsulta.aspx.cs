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

namespace SgaGestionAcceso.WEB.Persona
{
    public partial class frmPersonaConsulta : System.Web.UI.Page
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


        public void busquedaPersonas()
        {
            BLPersona blPersona = new BLPersona();
            BEPersonaList bePersonaList = null;
            BEPersona BEPersonaBusqueda = new BEPersona();

            BEPersonaBusqueda.DNI = string.Concat("%", txtDNI.Text.Trim(), "%");
            BEPersonaBusqueda.Nombres = string.Concat("%", txtNombres.Text.Trim(), "%");
            BEPersonaBusqueda.ApellidoPaterno = string.Concat("%", txtApePaterno.Text.Trim(), "%");
            BEPersonaBusqueda.ApellidoMaterno = string.Concat("%", txtApeMaterno.Text.Trim(), "%");

            bePersonaList = blPersona.PersonaBuscar(BEPersonaBusqueda);

            Session[Constantes.SESION_LISTA_PERSONAS] = null;
            Session.Add(Constantes.SESION_LISTA_PERSONAS, bePersonaList);

            dgvConsultaPersona.DataSource = bePersonaList;
            dgvConsultaPersona.DataBind();

            if (bePersonaList.ToList().Count == 0)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda");
            }
        }
        protected void dgvConsultaPersona_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_LISTA_PERSONAS] != null)
            {
                BEPersonaList bePersonaList = null;
                bePersonaList = (BEPersonaList)Session[Constantes.SESION_LISTA_PERSONAS];

                this.dgvConsultaPersona.PageIndex = e.NewPageIndex;

                this.dgvConsultaPersona.DataSource = bePersonaList;
                this.dgvConsultaPersona.DataBind();
            }
        }

        protected void dgvConsultaPersona_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idPersona = Convert.ToInt32(e.CommandArgument);

            if (idPersona == Constantes.VALOR_CERO)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_PERSONA_ELIMINAR]);
                return;
            }

            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                if (idPersona > 0)
                {
                    try
                    {
                        BLPersona blPersona = new BLPersona();
                        if (blPersona.EliminarPersona(idPersona))
                        { busquedaPersonas(); }
                    }
                    catch (Exception ex)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_AGENCIA_ELIMINAR]);

                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            { Response.Redirect(String.Format("~/Persona/frmPersona.aspx?modo=EDITAR&idPersona={0}", idPersona)); }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            { Response.Redirect(String.Format("~/Persona/frmPersona.aspx?modo=CONSULTAR&idPersona={0}", idPersona)); }
        }

        protected void dgvConsultaPersona_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            busquedaPersonas();
        }

        protected void btnNuevaPersona_Click(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_PERSONAM);
            Response.Redirect("~/Persona/frmPersona.aspx?modo=NUEVO");
        }
    }
}