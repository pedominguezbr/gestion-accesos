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

namespace SgaGestionAcceso.WEB.Autorizante
{
    public partial class frmAutorizante : System.Web.UI.Page
    {
        private const string ID_AUTORIZANTE = "idAutorizante";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idAutorizante = Request.QueryString[ID_AUTORIZANTE] != null ? Request.QueryString[ID_AUTORIZANTE] : "";

                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_AGENCIA);
                    CargarListas();
                    HabilitarDeshabilitarControles(true);
                    //hdiidAgencia.Value = idSucursal;
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosAutorizante(Int32.Parse(idAutorizante));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosAutorizante(Int32.Parse(idAutorizante));
                            //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                            HabilitarDeshabilitarControles(true);
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
            txtIdAutorizante.Enabled = habilitado;
            txtCIP.Enabled = habilitado;
            txtDireccion.Enabled = habilitado;
            ddlPersona.Enabled = habilitado;
            txtCodigoAutorizador.Enabled = habilitado;
            txtFechaCese.Enabled = habilitado;
            txtFechaIngrese.Enabled = habilitado;
            txtGerencia.Enabled = habilitado;
            txtJefatura.Enabled = habilitado;
            chkEstadoActivo.Enabled = habilitado;
            btnGrabar.Enabled = habilitado;
        }

        public void CargarListas()
        {
            BLPersona blPersona = new BLPersona();
            Herramienta.CargarDropDownListItemTodos(ddlPersona, blPersona.ListarPersona(), "idPersona", "Nombres");

        }

        private void ObtenerDatosAutorizante(int idAutorizante)
        {
            BLAutorizante blAutorizante = new BLAutorizante();
            BEAutorizante beAutorizante = blAutorizante.ObtenerAutorizante(idAutorizante, Constantes.VALOR_CERO);

            txtIdAutorizante.Text = beAutorizante.IdAutorizante.ToString();
            txtCodigoAutorizador.Text = beAutorizante.CodAutorizador;

            if (beAutorizante.FechaCese != DateTime.MinValue)
            { txtFechaCese.Text = beAutorizante.FechaCese.ToString("MM/dd/yyyy"); }

            if (beAutorizante.FechaIngreso != DateTime.MinValue)
            { txtFechaIngrese.Text = beAutorizante.FechaIngreso.ToString("MM/dd/yyyy"); }



            ddlPersona.SelectedValue = beAutorizante.Persona.IdPersona.ToString();

            txtJefatura.Text = beAutorizante.Jefatura;
            txtGerencia.Text = beAutorizante.Gerencia;
            txtDireccion.Text = beAutorizante.Direccion;
            txtCIP.Text = beAutorizante.CIP;
            chkEstadoActivo.Checked = beAutorizante.EstadoActivo;

            Session[Constantes.SESION_AUTORIZANTE] = null;
            Session.Add(Constantes.SESION_AUTORIZANTE, beAutorizante);
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            BEAutorizante beAutorizante;
            BLAutorizante blAutorizante = new BLAutorizante();
            string mensaje = "";
            string scriptmensaje = "";

            if (Session[Constantes.SESION_AUTORIZANTE] != null)
            { beAutorizante = (BEAutorizante)Session[Constantes.SESION_AUTORIZANTE]; }
            else
            { beAutorizante = new BEAutorizante(); }

            if (txtFechaIngrese.Text.Trim() == string.Empty)
            { beAutorizante.FechaIngreso = DateTime.MinValue; }
            else
            { beAutorizante.FechaIngreso = Convert.ToDateTime(txtFechaIngrese.Text); }

            if (txtFechaCese.Text.Trim() == string.Empty)
            { beAutorizante.FechaCese = DateTime.MinValue; }
            else
            {
                beAutorizante.FechaCese = Convert.ToDateTime(txtFechaCese.Text);
            }

            beAutorizante.IdPersona = Convert.ToInt32(ddlPersona.SelectedValue);

            beAutorizante.CodAutorizador = txtCodigoAutorizador.Text;
            beAutorizante.Jefatura = txtJefatura.Text;
            beAutorizante.Gerencia = txtGerencia.Text;
            beAutorizante.Direccion = txtDireccion.Text;
            beAutorizante.CIP = txtCIP.Text;

            beAutorizante.EstadoActivo = chkEstadoActivo.Checked;

            if (beAutorizante.IdAutorizante > 0)
            {
                if (blAutorizante.ActualizarAutorizante(beAutorizante) == true)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_AUTORIZADOR_ACTUALIZADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_AUTORIZADOR_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                    Session.Remove(Constantes.SESION_AUTORIZANTE);
                }
            }
            else
            {
                //Validar si el Usuario Autorizacion ya existe como persona

                BEAutorizante beAutorizanteExiste = null;
                beAutorizanteExiste = blAutorizante.ObtenerAutorizante(Constantes.VALOR_CERO, beAutorizante.IdPersona);

                if (beAutorizanteExiste != null && beAutorizanteExiste.IdAutorizante > 0)
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], string.Format(WebConfigurationManager.AppSettings[Constantes.MSG_AUTORIZANTE_YA_REGISTRADO], ddlPersona.SelectedItem.Text.Trim()));
                    return;
                }

                blAutorizante.InsertarAutorizante(beAutorizante);
                if (beAutorizante.IdAutorizante != -1)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_AUTORIZADOR_REGISTRADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_AUTORIZADOR_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                    Session.Remove(Constantes.SESION_AUTORIZANTE);
                }
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_AUTORIZADOR_CONSULTA]);
        }


    }
}