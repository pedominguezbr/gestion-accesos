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

namespace SgaGestionAcceso.WEB.Usuario
{
    public partial class frmUsuarioConsulta : System.Web.UI.Page
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

        public void busquedaUsuarios()
        {
            BLUsuario blUsuario = new BLUsuario();
            BEUsuarioSistemaList beUsuarioList = null;
            BEUsuarioSistema BEUsuarioBusqueda = new BEUsuarioSistema();

            BEUsuarioBusqueda.CodUsuario = string.Concat("%", txtCodigo.Text.Trim(), "%");
            BEUsuarioBusqueda.Persona = new BEPersona();
            BEUsuarioBusqueda.Persona.Nombres = string.Concat("%", txtNombres.Text.Trim(), "%");
            BEUsuarioBusqueda.Persona.ApellidoPaterno = string.Concat("%", txtApePaterno.Text.Trim(), "%");
            BEUsuarioBusqueda.Persona.ApellidoMaterno = string.Concat("%", txtApeMaterno.Text.Trim(), "%");

            beUsuarioList = blUsuario.BuscarUsuario(BEUsuarioBusqueda);

            Session[Constantes.SESION_LISTA_USUARIOS] = null;
            Session.Add(Constantes.SESION_LISTA_USUARIOS, beUsuarioList);

            dgvConsultaUsuario.DataSource = beUsuarioList;
            dgvConsultaUsuario.DataBind();

            if (beUsuarioList.ToList().Count == 0)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "No existen registros para el criterio de búsqueda");
            }
        }

        protected void btnnuevoUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Usuario/frmUsuario.aspx?modo=NUEVO", false);
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                busquedaUsuarios();
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void dgvConsultaUsuario_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_LISTA_USUARIOS] != null)
            {
                BEUsuarioSistemaList beUsuarioList = null;
                beUsuarioList = (BEUsuarioSistemaList)Session[Constantes.SESION_LISTA_USUARIOS];

                this.dgvConsultaUsuario.PageIndex = e.NewPageIndex;

                this.dgvConsultaUsuario.DataSource = beUsuarioList;
                this.dgvConsultaUsuario.DataBind();
            }
        }


        protected void dgvConsultaUsuario_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void dgvConsultaUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idUsuario = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                if (idUsuario > 0)
                {
                    try
                    {
                        BLUsuario blUsuario = new BLUsuario();
                        int codigoMensaje = 0;
                        blUsuario.EliminarUsuario(idUsuario, ref codigoMensaje);
                        if (codigoMensaje == 0)
                        {
                            ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_USUARIO_ELIMINADO_EXITOSAMENTE]);
                            busquedaUsuarios();
                        }
                        else
                        {
                            if (codigoMensaje == -2)
                            {
                                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_NO_SE_PUEDE_ELIMINAR_USUARIO_EXISTEN_PERMISOS_USUARIO]);
                            }
                        }

                    }
                    catch (Exception ex)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_AGENCIA_ELIMINAR]);

                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
            }


            if (e.CommandName == Constantes.COMANDO_MODIFICAR)
            { Response.Redirect(String.Format("~/Usuario/frmUsuario.aspx?modo=EDITAR&idUsuario={0}", idUsuario)); }
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            { Response.Redirect(String.Format("~/Usuario/frmUsuario.aspx?modo=CONSULTAR&idUsuario={0}", idUsuario)); }
            if (e.CommandName == Constantes.COMANDO_MODIFICAR_PERMISOS)
            {
                BLUsuario blUsuario = new BLUsuario();
                Session.Add(Constantes.SESION_USUARIOPERMISO, blUsuario.ObtenerUsuario(idUsuario, Constantes.VALOR_CERO));
                Response.Redirect(String.Format("~/Permisos/frmPermisoUsuario.aspx?idUsuario={0}", idUsuario));
            }
        }


    }
}