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
    public partial class frmSucursal : System.Web.UI.Page
    {
        private const string ID_SUCURSAL = "idSucursal";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idSucursal = Request.QueryString[ID_SUCURSAL] != null ? Request.QueryString[ID_SUCURSAL] : "";

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
                            ObtenerDatosSucursal(Int32.Parse(idSucursal));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosSucursal(Int32.Parse(idSucursal));
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
            txtIdSucursal.Enabled = habilitado;
            txtSucursal.Enabled = habilitado;
            txtDireccion.Enabled = habilitado;
            ddlAgencia.Enabled = habilitado;
            ddlDepartamento.Enabled = habilitado;
            ddlProvincia.Enabled = habilitado;
            ddlDistrito.Enabled = habilitado;
            btnGrabar.Enabled = habilitado;
        }

        private void ObtenerDatosSucursal(int idSucursal)
        {
            BLSucursal blSucursal = new BLSucursal();
            BESucursal beSucursal = blSucursal.ObtenerSucursal(idSucursal); ;

            txtIdSucursal.Text = beSucursal.IdSucursal.ToString();
            txtSucursal.Text = beSucursal.Nombre;
            txtDireccion.Text = beSucursal.Direccion;
            ddlAgencia.SelectedValue = beSucursal.Agencia.IdAgencia.ToString();
            ddlDepartamento.SelectedValue = beSucursal.Ubigeo.codDepartamento.ToString();
            CargarSoloProvincias(beSucursal.Ubigeo.codDepartamento.ToString());

            ddlProvincia.SelectedValue = beSucursal.Ubigeo.codProvincia.ToString();
            CargarSoloDistrito(beSucursal.Ubigeo.codDepartamento.ToString(), beSucursal.Ubigeo.codProvincia.ToString());
            ddlDistrito.SelectedValue = beSucursal.Ubigeo.codDistrito.ToString();

            Session[Constantes.SESION_SUCURSAL] = null;
            Session.Add(Constantes.SESION_SUCURSAL, beSucursal);
        }

        public void CargarListas()
        {
            BLAgencia blAgencia = new BLAgencia();
            Herramienta.CargarDropDownListSeleccione(ddlAgencia, blAgencia.ListarAgencia(), "IdAgencia", "Nombre");
            CargarSoloDepartamento();

        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            BESucursal beSucursal;
            BLSucursal blSucursal = new BLSucursal();
            string mensaje = "";
            string scriptmensaje = "";

            if (Session[Constantes.SESION_SUCURSAL] != null)
            { beSucursal = (BESucursal)Session[Constantes.SESION_SUCURSAL]; }
            else
            { beSucursal = new BESucursal(); }

            beSucursal.Direccion = txtDireccion.Text;
            beSucursal.Nombre = txtSucursal.Text;
            beSucursal.Ubigeo = new BEUbigeo();
            beSucursal.Ubigeo.Codigo = string.Concat(ddlDepartamento.SelectedValue.ToString(), ddlProvincia.SelectedValue.ToString(), ddlDistrito.SelectedValue.ToString());
            beSucursal.Agencia = new BEAgencia();
            beSucursal.Agencia.IdAgencia = Convert.ToInt32(ddlAgencia.SelectedValue);

            if (beSucursal.IdSucursal > 0)
            {
                if (blSucursal.ActualizarSucursal(beSucursal) == true)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_AGENCIA_ACTUALIZADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_AGENCIA_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                    Session.Remove(Constantes.SESION_AGENCIA);
                }
            }
            else
            {
                blSucursal.InsertarSucursal(beSucursal);
                if (beSucursal.IdSucursal != -1)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_AGENCIA_REGISTRADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_AGENCIA_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                    Session.Remove(Constantes.SESION_AGENCIA);
                }
            }
        }

        public void CargarSoloDepartamento()
        {
            BLUbigeo blUbigeo = new BLUbigeo();
            BEUbigeoList beUbigeoList = null;
            beUbigeoList = blUbigeo.ListarUbigeo("PERU");

            Session[Constantes.SESION_LISTA_UBIGEO] = null;
            Session.Add(Constantes.SESION_LISTA_UBIGEO, beUbigeoList);
            var queryAllDepartamentos = (from d in beUbigeoList
                                         select new
                                         {
                                             codDepartamento = d.codDepartamento,
                                             departamento = d.Departamento
                                         })
                 .Distinct();

            Herramienta.CargarDropDownListItemTodos(ddlDepartamento, queryAllDepartamentos.ToList(), "codDepartamento", "Departamento");
        }

        public void CargarSoloProvincias(string codDepartamento)
        {
            BEUbigeoList beUbigeoList = null;
            if (this.Session[Constantes.SESION_LISTA_UBIGEO] != null)
            {

                beUbigeoList = (BEUbigeoList)Session[Constantes.SESION_LISTA_UBIGEO];
                var queryAllProvincia = (from d in beUbigeoList
                                         where d.codDepartamento == codDepartamento
                                         select new
                                         {
                                             codProvincia = d.codProvincia,
                                             Provincia = d.Provincia
                                         })
                .Distinct();

                Herramienta.CargarDropDownListItemTodos(ddlProvincia, queryAllProvincia.ToList(), "codProvincia", "Provincia");
            }
        }

        public void CargarSoloDistrito(string codDepartamento, string codProvincia)
        {
            BEUbigeoList beUbigeoList = null;
            if (this.Session[Constantes.SESION_LISTA_UBIGEO] != null)
            {

                beUbigeoList = (BEUbigeoList)Session[Constantes.SESION_LISTA_UBIGEO];
                var queryAllDistrito = (from d in beUbigeoList
                                        where d.codProvincia == codProvincia && d.codDepartamento == codDepartamento
                                        select new
                                        {
                                            codDistrito = d.codDistrito,
                                            Distrito = d.Distrito
                                        })
                .Distinct();

                Herramienta.CargarDropDownListItemTodos(ddlDistrito, queryAllDistrito.ToList(), "codDistrito", "Distrito");
            }
        }

        protected void ddlDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDepartamento.SelectedIndex > 0)
            {
                CargarSoloProvincias(ddlDepartamento.SelectedValue);
                ddlDistrito.Items.Clear();
                ddlDistrito.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
            }
            else
            {
                ddlProvincia.Items.Clear();
                ddlDistrito.Items.Clear();

                ddlProvincia.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
                ddlDistrito.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
            }

        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDepartamento.SelectedIndex > 0)
            {
                CargarSoloDistrito(ddlDepartamento.SelectedValue, ddlProvincia.SelectedValue);
            }
            else
            {
                ddlDistrito.Items.Clear();
                ddlDistrito.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgenciaSucursal/frmAgenciaConsulta.aspx");
        }


    }
}
