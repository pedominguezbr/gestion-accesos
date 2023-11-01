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
namespace SgaGestionAcceso.WEB.Rol
{
    public partial class frmRolConsulta : System.Web.UI.Page
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            busquedaRol();
        }

        public void busquedaRol()
        {
            BLRol blRol = new BLRol();
            BERolList beRolList = null;

            beRolList = blRol.BuscarRol(string.Concat(txtDescripcion.Text, "%"));

            Session[Constantes.SESION_LISTA_ROLES] = null;
            Session.Add(Constantes.SESION_LISTA_ROLES, beRolList);

            dgvRol.DataSource = beRolList;
            dgvRol.DataBind();

            if (beRolList.ToList().Count == 0)
            { ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda"); }
        }

        protected void dgvRol_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_LISTA_ROLES] != null)
            {
                BERolList beRolList = null;
                beRolList = (BERolList)Session[Constantes.SESION_LISTA_ROLES];

                this.dgvRol.PageIndex = e.NewPageIndex;

                this.dgvRol.DataSource = beRolList;
                this.dgvRol.DataBind();
            }
        }

        protected void dgvRol_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idRol = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                if (idRol > 0)
                {
                    try
                    {
                        BLRol blRol = new BLRol();
                        if (blRol.EliminarRol(idRol))
                        { busquedaRol(); }
                    }
                    catch (Exception ex)
                    {

                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No puede eliminar el Rol Seleccionado porque ya tiene usuarios asignados."); 
                    }
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            {
                Response.Redirect(String.Format("~/Rol/frmRol.aspx?modo=EDITAR&idRol={0}", idRol));

            }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                Response.Redirect(String.Format("~/Rol/frmRol.aspx?modo=CONSULTAR&idRol={0}", idRol));
            }
        }

        protected void btnnuevo(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_LISTA_ROLES);
            Session.Remove(Constantes.SESION_ROL);
            Response.Redirect("~/rol/frmRol.aspx?modo=NUEVO");
        }
    }
}