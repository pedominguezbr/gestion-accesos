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

namespace SgaGestionAcceso.WEB.Permisos
{
    public partial class frmPermisoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();

                    if (Session[Constantes.SESION_USUARIOPERMISO] != null)
                    {
                        beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIOPERMISO];
                    }
                    txtNombre.Text = beUsuarioSistema.Persona.NombresCompletos;
                    txtCodigo.Text = beUsuarioSistema.CodUsuario;
                    //Cargamos los datos de los controles de la pantalla         
                    //CargarTreeView(beUsuarioSistema);

                    CargarRolesAcceso(beUsuarioSistema.IdUsuario);

                    hdiUsuPermiso.Value = beUsuarioSistema.IdUsuario.ToString();
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        private void CargarRolesAcceso(int idUsuario)
        {
            BERolList listaRoles = new BLRol().BuscarRol("%");
            List<BEPermisoUsuario> listaRolesUsuario = new BLRol().ListarRolesPorUsuario(idUsuario);

            foreach (BERol beRol in listaRoles)
            {
                List<BEPermisoUsuario> listaRolesAplicacion = listaRolesUsuario.FindAll(
                  delegate(BEPermisoUsuario bk)
                  { return bk.beRol.IdRol.Equals(beRol.IdRol); }
                  );

                if (listaRolesAplicacion.ToList().Count > 0)
                {
                    var objectList = listaRolesAplicacion.ToList();
                    beRol.TieneAccesoRol = true;
                    beRol.IdPermisoUsuario = objectList[0].IdPermisoUsuario;
                }
                else
                {
                    beRol.IdPermisoUsuario = Constantes.VALOR_NEGATIVO_NULO;
                }
            }

            dgvRoles.DataSource = listaRoles;
            dgvRoles.DataBind();

        }


        protected void btnCopiar_Click(object sender, EventArgs e)
        {
            try
            {
                BEUsuarioSistema usuario = Session[Constantes.SESION_USUARIOPERMISO] as BEUsuarioSistema;

                BLPermisoUsuario blPermisoUsuario = new BLPermisoUsuario();
                bool copiaExitosa = blPermisoUsuario.CopiarPermisoUsuario(txtCodigoUsuarioCopiar.Text.Trim(), usuario.IdUsuario);
                if (copiaExitosa)
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_COPIA_PERMISOS_EXITOSA]);
                    //CargarTreeView(usuario);
                }
                else
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], string.Format(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_COPIA_PERMISOS], txtCodigoUsuarioCopiar.Text));
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_USUARIO_CONSULTAPU]);
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                string mensaje = "";
                string scriptmensaje = "";
                int idUsuario = Convert.ToInt16(Request.Params["idUsuario"]);
                BEPermisoUsuario permisoUsuario = null;
                BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
                int idUsuarioLogueo = beUsuarioSistema.IdUsuario;

                BLPermisoUsuario blPermisoUsuario = new BLPermisoUsuario();
                foreach (GridViewRow fila in dgvRoles.Rows)
                {
                    bool marcado = false;
                    Control control = fila.Cells[0].FindControl("chkTieneAcceso");
                    if (control != null)
                    { marcado = ((CheckBox)control).Checked; }

                    int idRol = Convert.ToInt16(fila.Cells[1].Text);
                    int idPermisoUsuario = 0;
                    Control control2 = fila.Cells[2].FindControl("lblIdPermisoUsuario");
                    if (control2 != null)
                    { idPermisoUsuario = Convert.ToInt16(((Label)control2).Text); }

                    if (marcado && idPermisoUsuario == -1)//insertar
                    {
                        permisoUsuario = new BEPermisoUsuario();
                        permisoUsuario.beUsuario = new BEUsuarioSistema();
                        permisoUsuario.beUsuario.IdUsuario = Convert.ToInt32(hdiUsuPermiso.Value);
                        permisoUsuario.beRol = new BERol();
                        permisoUsuario.beRol.IdRol = idRol;

                        permisoUsuario.IdUsuarioCreacion = idUsuarioLogueo;
                        permisoUsuario.FechaCreacion = DateTime.Now.Date;
                        permisoUsuario.Estado = true;

                        blPermisoUsuario.InsertarPermisoUsuario(permisoUsuario);
                    }
                    else//delete
                    {
                        if (!marcado && idPermisoUsuario != -1)
                        { blPermisoUsuario.EliminarPermisoUsuario(idPermisoUsuario); }
                    }
                }

                mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_PERMISOUSUARIO_REGISTRADO_EXITOSAMENTE];

                scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_USUARIO_CONSULTAPU]);
                ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

            }
            catch (Exception ex)
            {

                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

    }
}