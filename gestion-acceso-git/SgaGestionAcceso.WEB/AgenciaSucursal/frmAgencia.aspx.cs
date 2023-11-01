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
namespace SgaGestionAcceso.WEB.AgenciaSucursal
{
    public partial class frmAgencia : System.Web.UI.Page
    {
        private const string ID_AGENCIA = "idAgencia";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idAgencia = Request.QueryString[ID_AGENCIA] != null ? Request.QueryString[ID_AGENCIA] : "";

                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_AGENCIA);
                    CargarListas();
                    HabilitarDeshabilitarControles(true);
                    hdiidAgencia.Value = idAgencia;
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosAgencia(Int32.Parse(idAgencia));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosAgencia(Int32.Parse(idAgencia));
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
            txtIdAgencia.Enabled = habilitado;
            txtAgencia.Enabled = habilitado;
            txtNemotecnico.Enabled = habilitado;
            txtRUC.Enabled = habilitado;
            ddlRepresentante.Enabled = habilitado;
            btnGrabar.Enabled = habilitado;

        }

        private void ObtenerDatosAgencia(int idAgencia)
        {
            BLAgencia blAgencia = new BLAgencia();
            BEAgencia beAgencia = blAgencia.ObtenerAgencia(idAgencia); ;

            txtIdAgencia.Text = beAgencia.IdAgencia.ToString();
            txtAgencia.Text = beAgencia.Nombre;
            txtNemotecnico.Text = beAgencia.NemonicoAg;
            txtRUC.Text = beAgencia.RUC;
            ddlRepresentante.SelectedValue = beAgencia.RepresentanteLegal.IdPersona.ToString();

            listaSucursal(idAgencia);

            Session[Constantes.SESION_AGENCIA] = null;
            Session.Add(Constantes.SESION_AGENCIA, beAgencia);

        }

        public void listaSucursal(int idAgencia)
        {
            BLSucursal blSucursal = new BLSucursal();
            BESucursalList beSucursaList = null;
            beSucursaList = blSucursal.ListarSucursal(idAgencia);          

            Session[Constantes.SESION_LISTA_SUCURSAL] = null;
            Session.Add(Constantes.SESION_LISTA_SUCURSAL, beSucursaList);

            dgvSucursales.DataSource = beSucursaList;
            dgvSucursales.DataBind();

        }
        public void CargarListas()
        {
            BLPersona blPersona = new BLPersona();
            Herramienta.CargarDropDownListSeleccione(ddlRepresentante, blPersona.ListarPersonaDatosCompletos(), "IdPersona", "NombresCompletos");
        }


        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            BEAgencia beAgencia;
            BLAgencia blAgencia = new BLAgencia();
            string mensaje = "";
            string scriptmensaje = "";

            if (Session[Constantes.SESION_AGENCIA] != null)
            { beAgencia = (BEAgencia)Session[Constantes.SESION_AGENCIA]; }
            else
            { beAgencia = new BEAgencia(); }

            beAgencia.Nombre = txtAgencia.Text;
            beAgencia.RUC = txtRUC.Text;
            beAgencia.NemonicoAg = txtNemotecnico.Text;
            beAgencia.RepresentanteLegal = new BERepresentateLegal();
            beAgencia.RepresentanteLegal.IdPersona = Convert.ToInt32(ddlRepresentante.SelectedValue);

            if (beAgencia.IdAgencia > 0)
            {
                if (blAgencia.ActualizarAgencia(beAgencia) == true)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_AGENCIA_ACTUALIZADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_AGENCIA_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                    Session.Remove(Constantes.SESION_AGENCIA);
                }
            }
            else
            {
                blAgencia.InsertarAgencia(beAgencia);
                if (beAgencia.IdAgencia != -1)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_AGENCIA_REGISTRADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_AGENCIA_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                    Session.Remove(Constantes.SESION_AGENCIA);
                }
            }
        }

        protected void dgvSucursales_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_LISTA_SUCURSAL] != null)
            {
                BESucursalList beSucursaList = null;
                beSucursaList = (BESucursalList)Session[Constantes.SESION_LISTA_SUCURSAL];

                this.dgvSucursales.PageIndex = e.NewPageIndex;
                this.dgvSucursales.DataSource = beSucursaList;
                this.dgvSucursales.DataBind();
            }
        }

        protected void dgvSucursales_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                int IdSucursal = Convert.ToInt32(e.CommandArgument);

                if (IdSucursal > 0)
                {
                    try
                    {
                        //Eliminar de la BD
                        BLSucursal blSucursal = new BLSucursal();
                        blSucursal.EliminarSucursal(IdSucursal);

                        listaSucursal(Convert.ToInt32(hdiidAgencia.Value));

                    }
                    catch (Exception ex)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }

                }
            }
        }

        protected void dgvSucursales_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgenciaSucursal/frmAgenciaConsulta.aspx");
        }
    }
}