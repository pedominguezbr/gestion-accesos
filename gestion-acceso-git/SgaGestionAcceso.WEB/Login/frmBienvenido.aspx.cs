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

namespace SgaGestionAcceso.WEB.Login
{
    public partial class frmBienvenido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              try
            {
                if (!IsPostBack)
                {

                    CargarDatosUsuario();
                 
                }
            }
              catch (Exception ex)
              {
                  ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                  NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
              }
        }

        public void CargarDatosUsuario()
        {
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
            BEMenuList listaOpcionesMenu = new BEMenuList();
            BLMenu blMenu =new BLMenu();
            //sesion persona
            if (Session[Constantes.SESION_USUARIO] != null)
            {
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
                lbNombreUsuario.Text = string.Format("{0} {1} {2}", beUsuarioSistema.Nombres.ToUpper(), beUsuarioSistema.ApellidoPaterno.ToUpper(), beUsuarioSistema.ApellidoMaterno.ToUpper());
                                      
                //Cargar los Datos del Menu
                listaOpcionesMenu = blMenu.ListarPermisoMenuOpciones(beUsuarioSistema.IdUsuario);
      
                //Cargar los datos d                                                                                                                                             el menu                                                                                                         
                Session.Add(Constantes.SESION_OPCIONES_MENU, listaOpcionesMenu);
            }
            else
            {
                lbNombreUsuario.Text = WebConfigurationManager.AppSettings[Constantes.NOMBRE_USUARIO_NOLOGIN];
            }
        }
    }
}