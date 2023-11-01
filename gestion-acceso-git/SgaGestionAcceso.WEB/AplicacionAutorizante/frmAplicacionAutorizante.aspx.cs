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
    public partial class frmAplicacionAutorizante : System.Web.UI.Page
    {
        private const string ID_APLICACIONAUTORIZANTE = "idAplicacionAutorizante";
        private const string RUTA_GUARDAR = "~/FileAutorizaciones/";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idPersona = Request.QueryString[ID_APLICACIONAUTORIZANTE] != null ? Request.QueryString[ID_APLICACIONAUTORIZANTE] : "";

                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_APLICAAUTORIZANTE);

                    HabilitarDeshabilitarControles(true);
                    CargarListas();
                    chkEstado.Checked = true;
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosAplicaAutorizante(Int32.Parse(idPersona));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosAplicaAutorizante(Int32.Parse(idPersona));
                            //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                            HabilitarDeshabilitarControles(true);
                            rfvFileUploadControl.Visible = false;
                        }
                    }
                    else
                    {
                        HabilitarDeshabilitarControles(false);
                    }
                }

            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        private void HabilitarDeshabilitarControles(bool habilitado)
        {
            txtIdAplicacionAutorizante.Enabled = habilitado;
            ddlAplicacion.Enabled = habilitado;
            ddlAutorizante.Enabled = habilitado;

            btnGrabar.Enabled = habilitado;
            chkEstado.Enabled = habilitado;
            txtComentario.Enabled = habilitado;

        }

        public void CargarListas()
        {
            BLAplicacion blAplicacion = new BLAplicacion();
            BLAutorizante blAutorizante = new BLAutorizante();

            Herramienta.CargarDropDownListItemTodos(ddlAplicacion, blAplicacion.ListarAplicacion(), "IdAplicacion", "Nombre");
            Herramienta.CargarDropDownListItemTodos(ddlAutorizante, blAutorizante.ListarAutorizante(), "IdAutorizante", "NombresCompletos");

        }

        private void ObtenerDatosAplicaAutorizante(int idAplicaAutorizante)
        {
            BLAplicacionAutorizante blAplicacionAutorizante = new BLAplicacionAutorizante();
            BEAplicacionAutorizante beAplicacionAutorizante = blAplicacionAutorizante.ObtenerAplicacionAutorizante(idAplicaAutorizante);

            txtIdAplicacionAutorizante.Text = beAplicacionAutorizante.IdAplicacionAutorizante.ToString();
            ddlAplicacion.SelectedValue = beAplicacionAutorizante.Aplicacion.IdAplicacion.ToString();
            ddlAutorizante.SelectedValue = beAplicacionAutorizante.Autorizante.IdAutorizante.ToString();
            chkEstado.Checked = beAplicacionAutorizante.Estado;

            //if (beAplicacionAutorizante.RutaEvidencia == string.Empty)
            //{
            //    hypEvidenciaCargada.Visible = false;
            //}

            //hypEvidenciaCargada.NavigateUrl =  beAplicacionAutorizante.RutaEvidencia;
            //hypEvidenciaCargada.Text = beAplicacionAutorizante.RutaEvidencia;
            txtComentario.Text = beAplicacionAutorizante.Comentario;

            Session[Constantes.SESION_APLICAAUTORIZANTE] = null;
            Session.Add(Constantes.SESION_APLICAAUTORIZANTE, beAplicacionAutorizante);
        }
        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AplicacionAutorizante/frmAplicacionAutorizanteConsulta.aspx");
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            BEAplicacionAutorizante beAplicacionAutorizante;
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
            BLAplicacionAutorizante blAplicacionAutorizante = new BLAplicacionAutorizante();
            string mensaje = "";
            string scriptmensaje = "";

            try
            {
                if (Session[Constantes.SESION_APLICAAUTORIZANTE] != null)
                { beAplicacionAutorizante = (BEAplicacionAutorizante)Session[Constantes.SESION_APLICAAUTORIZANTE]; }
                else
                { beAplicacionAutorizante = new BEAplicacionAutorizante(); }




                //sesion persona
                if (Session[Constantes.SESION_USUARIO] != null)
                { beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO]; }

                beAplicacionAutorizante.Aplicacion = new BEAplicacion();
                beAplicacionAutorizante.Aplicacion.IdAplicacion = Convert.ToInt32(ddlAplicacion.SelectedValue);

                beAplicacionAutorizante.Autorizante = new BEAutorizante();
                beAplicacionAutorizante.Autorizante.IdAutorizante = Convert.ToInt32(ddlAutorizante.SelectedValue);

                beAplicacionAutorizante.FechaCreacion = DateTime.Today;
                beAplicacionAutorizante.Estado = chkEstado.Checked;

                beAplicacionAutorizante.UsuarioCreacion = beUsuarioSistema.CodUsuario;

                beAplicacionAutorizante.Comentario = txtComentario.Text;

                if (beAplicacionAutorizante.IdAplicacionAutorizante > 0)
                {
                    if (FileUploadControl.HasFile)
                    {
                        string filename = Path.GetFileName(FileUploadControl.FileName);
                        FileUploadControl.SaveAs(Server.MapPath(RUTA_GUARDAR) + filename);
                        beAplicacionAutorizante.RutaEvidencia = string.Concat(RUTA_GUARDAR, filename);
                    }

                    if (blAplicacionAutorizante.ActualizarAplicacionAutorizante(beAplicacionAutorizante) == true)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_APLIAUTORIZANTE_ACTUALIZADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_APLICAAUTO_CONSULTA]);
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                        Session.Remove(Constantes.SESION_APLICAAUTORIZANTE);
                    }
                }
                else
                {
                    //Validar si ya existe el dni registrado
                    //Cargar Archivo

                    if (!FileUploadControl.HasFile)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "Seleccione autorizacion");

                    }

                    BEAplicacionAutorizanteList beAplicacionAutorizanteList = null;

                    beAplicacionAutorizanteList = blAplicacionAutorizante.BuscarAplicacionAutorizante(Convert.ToInt32(ddlAplicacion.SelectedValue), Convert.ToInt32(ddlAutorizante.SelectedValue));
                    if (beAplicacionAutorizanteList.ToList().Count > Constantes.VALOR_CERO)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "La Relacion Aplicacion Autorizante ya se encuentra registrada.");
                        return;
                    }

                    //BEPersona bePersonaExiste = null;
                    //bePersonaExiste = blPersona.ObtenerPersona(txtDNI.Text.Trim(), Constantes.VALOR_NEGATIVO_NULO);

                    //if (bePersonaExiste != null && bePersonaExiste.IdPersona > 0)
                    //{
                    //    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], string.Format(WebConfigurationManager.AppSettings[Constantes.MSG_PERSONA_YA_REGISTRADA], txtDNI.Text.Trim()));
                    //    return;
                    //}
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath(RUTA_GUARDAR) + filename);
                    beAplicacionAutorizante.RutaEvidencia = string.Concat(RUTA_GUARDAR, filename);

                    blAplicacionAutorizante.InsertarAplicacionAutorizante(beAplicacionAutorizante);
                    if (beAplicacionAutorizante.IdAplicacionAutorizante != -1)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_APLIAUTORIZANTE_REGISTRADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_APLICAAUTO_CONSULTA]);
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                        Session.Remove(Constantes.SESION_PERSONAM);
                    }
                }


            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }
    }
}