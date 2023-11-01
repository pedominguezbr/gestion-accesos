using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.Negocio;
using SgaGestionAcceso.Entidad;
using System.Web.Configuration;

namespace SgaGestionAcceso.WEB.Solicitud
{
    public partial class frmDetalleSolicitud : System.Web.UI.Page
    {
        private const string ID_DETALLE_SOLICITUD_ACCESO = "IdDetalleSolicitudAcceso";
        private string accion;
        string Modo2 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Extraemos los parametros de consulta
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idDetalleSolicitudAcceso = Request.QueryString[ID_DETALLE_SOLICITUD_ACCESO] != null ? Request.QueryString[ID_DETALLE_SOLICITUD_ACCESO] : "";
                Modo2 = Request.QueryString["modo2"] != null ? Request.QueryString["modo2"] : "";

                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_DETALLE_SOLICITUD_ACCESO);

                    this.dgvAplicaciones.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA_DETALLE_SOLICITUD]);

                    CargarListas();

                    //ObtenerDatosDetalleSolicitudAcceso(1);

                    if (accion.Length > 0)
                    {
                       

                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosDetalleSolicitudAcceso(Int32.Parse(idDetalleSolicitudAcceso));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            DeshabilitarControlesConsulta();
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosDetalleSolicitudAcceso(Int32.Parse(idDetalleSolicitudAcceso));
                            //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                            HabilitarControlesConsulta();
                        }
                    }
                    else
                    {
                        txtDNI.Enabled = true;
                        txtNombresApellidos.Enabled = false;
                        //txtCodigoRol.Visible = false;
                        //lbTituloCodigo.Visible = false;
                    }

                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }

        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            BLPersona blPersona = new BLPersona();
            BEPersona bePersona = null;
            bePersona = blPersona.ObtenerPersona(txtDNI.Text, Constantes.VALOR_NEGATIVO_NULO);

            if (bePersona != null)
            {
                txtNombresApellidos.Text = bePersona.NombresCompletos;
                BEDetalleSolicitud beDetalleSolicitud;
                if (Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] != null)
                {
                    beDetalleSolicitud = (BEDetalleSolicitud)Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO];
                }
                else
                {
                    beDetalleSolicitud = new BEDetalleSolicitud();
                }

                //Colocar el Registro de la persona encontrada a la session
                //if (beDetalleSolicitud.Persona == null)
                //{
                //    beDetalleSolicitud.Persona = new BEPersona();
                //}
                beDetalleSolicitud.Persona = bePersona;
                beDetalleSolicitud.Estado = new BEEstado();
                beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_REGISTRO_SOLICITUD;
                beDetalleSolicitud.Estado.Nombre = Constantes.TEXTO_ESTADO_INICIAL_DET_SOL;

                Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] = null;
                Session.Add(Constantes.SESION_DETALLE_SOLICITUD_ACCESO, beDetalleSolicitud);
            }
            else
            {
                txtNombresApellidos.Text = string.Empty;
                txtDNI.Text = string.Empty;
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_PERSONA_NOEXISTE]);
            }

        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            BEDetalleSolicitud beDetalleSolicitud;
            BESolicitudAcceso beSolicitudAcceso;
            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                if (Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] != null)
                {
                    beDetalleSolicitud = (BEDetalleSolicitud)Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO];

                    //no graba si no hay detalle
                    if (beDetalleSolicitud.TotalAplicaciones == Constantes.VALOR_CERO)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_SIN_DETALLEAPLICACION_PUESTO]);
                        return;
                    }
                    //Actualizar Detalle si el Registro ya esta tiene datos

                    BLDetalleSolicitud blDetalleSolicitud = new BLDetalleSolicitud();
                    if (beDetalleSolicitud.IdDetalleSolicitud != 0)
                    {
                        blDetalleSolicitud.ActualizarDetalleSolicitud(beDetalleSolicitud);
                    }
                    else
                    {
                        //Agrega el detalle de la solicitud para registrarlo al grabar la solicitud
                        if (beSolicitudAcceso.DetalleSolicitud == null)
                        {
                            beSolicitudAcceso.DetalleSolicitud = new BEDetalleSolicitudList();
                        }
                        beSolicitudAcceso.DetalleSolicitud.Add(beDetalleSolicitud);

                        //Actualizar la Session de la Solicitud
                        Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
                        Session.Add(Constantes.SESION_SOLICITUD_ACCESO, beSolicitudAcceso);
                    }

                    Response.Redirect("~/Solicitud/frmSolicitudAcceso.aspx");
                }
                else
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_SESSION_SOLICITUD_EXPIRADA]);
                }
            }
            else
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_SESSION_SOLICITUD_EXPIRADA]);

            }
        }



        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            BEDetalleSolicitud beDetalleSolicitud;
            if (Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] != null)
            {
                beDetalleSolicitud = (BEDetalleSolicitud)Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO];
            }
            else
            {
                beDetalleSolicitud = new BEDetalleSolicitud();
            }

            //Obtener Agregar un nuevo registro a la lista temporal de Detalle Aplicacion Puesto
            BEDetSolAplicaciPuesto beDetSolAplicaciPuesto = null;
            beDetSolAplicaciPuesto = new BEDetSolAplicaciPuesto();

            //  beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso = Convert.ToInt32(dr["IdDetalleSolicitudAcceso"].ToString());
            //beDetSolAplicaciPuesto.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);
            //beDetSolAplicaciPuesto.Estado = Convert.ToBoolean(dr["EstadoActivo"]);

            beDetSolAplicaciPuesto.Aplicacion = new BEAplicacion();
            beDetSolAplicaciPuesto.Aplicacion.IdAplicacion = Convert.ToInt32(ddlAplicacion.SelectedValue);
            beDetSolAplicaciPuesto.Aplicacion.Nombre = ddlAplicacion.SelectedItem.Text;

            beDetSolAplicaciPuesto.Puesto = new BEPuesto();
            beDetSolAplicaciPuesto.Puesto.IdPuesto = Convert.ToInt32(ddlPuesto.SelectedValue);
            beDetSolAplicaciPuesto.Puesto.Nombre = ddlPuesto.SelectedItem.Text;

            if (beDetalleSolicitud.DetSoliAplicacionPuesto == null)
            {
                beDetalleSolicitud.DetSoliAplicacionPuesto = new BEDetSolAplicaciPuestoList();
            }

            //Verificar si la combinacion Aplicacion Puesto ya existe para la persona
            int existe = beDetalleSolicitud.DetSoliAplicacionPuesto.Where(item =>
                      {
                          return (item.Aplicacion.IdAplicacion == Convert.ToInt32(ddlAplicacion.SelectedValue) &&
                              item.Puesto.IdPuesto == Convert.ToInt32(ddlPuesto.SelectedValue));
                      }).Count();
            if (existe > 0)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_APLICACION_PUESTO_EXISTE]);
            }
            else
            {
                //Si ya fue grabado que se registre directamente en la BD

                if (beDetalleSolicitud.IdDetalleSolicitud > 0)
                {
                    beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso = beDetalleSolicitud.IdDetalleSolicitud;
                    BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
                    blDetSolAplicaPuesto.InsertaDetSolAplicaPuesto(beDetSolAplicaciPuesto);
                }

                //Tambien se registra en el temporal
                beDetalleSolicitud.DetSoliAplicacionPuesto.Add(beDetSolAplicaciPuesto);

                dgvAplicaciones.DataSource = beDetalleSolicitud.DetSoliAplicacionPuesto;
                dgvAplicaciones.DataBind();

                Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] = null;
                Session.Add(Constantes.SESION_DETALLE_SOLICITUD_ACCESO, beDetalleSolicitud);

                ddlAplicacion.SelectedValue = Constantes.OPCION_VALOR_SELECCIONE;
                ddlPuesto.SelectedValue = Constantes.OPCION_VALOR_SELECCIONE;
            }


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            //string accion;

            //accion = (string)Session[Constantes.SESION_MODO_DETSOLICITUD];
            if (Modo2 == "Consultar")
            {
                Response.Redirect("frmSolicitudAcceso.aspx?modo2=Consultar");
            }
            else {
                Response.Redirect("frmSolicitudAcceso.aspx");
            }
            
        }

        public void CargarListas()
        {

            BLAplicacion blAplicacion = new BLAplicacion();

            Herramienta.CargarDropDownListSeleccione(ddlAplicacion, blAplicacion.ListarAplicacion(), "IdAplicacion", "Nombre");

            CargarPuestoLista(Constantes.VALOR_CERO);

        }
        public void CargarPuestoLista(int idAplicacion)
        {
            BLPuesto blPuesto = new BLPuesto();
            Herramienta.CargarDropDownListSeleccione(ddlPuesto, blPuesto.ListarPuesto(idAplicacion), "IdPuesto", "Nombre");
        }


        private void ObtenerDatosDetalleSolicitudAcceso(int idDetalleSolicitudAcceso)
        {
            BLDetalleSolicitud blDetalleSolicitud = new BLDetalleSolicitud();
            BEDetalleSolicitud beDetalleSolicitud;
            BESolicitudAcceso beSolicitudAcceso;
            beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];
            
            if (idDetalleSolicitudAcceso != 0)
            {
                beDetalleSolicitud = blDetalleSolicitud.ObtenerDetalleSolicitud(idDetalleSolicitudAcceso);
            }
            else {
                if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
                {
                    beDetalleSolicitud = (BEDetalleSolicitud)Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO];
                }
                else {
                    beDetalleSolicitud = null;
                }
            }

            txtDNI.Text = beDetalleSolicitud.Persona.DNI;
            txtNombresApellidos.Text = beDetalleSolicitud.Persona.NombresCompletos;

            dgvAplicaciones.DataSource = beDetalleSolicitud.DetSoliAplicacionPuesto;
            dgvAplicaciones.DataBind();

            Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] = null;
            Session.Add(Constantes.SESION_DETALLE_SOLICITUD_ACCESO, beDetalleSolicitud);

        }

        private void ObtenerDatosDetAplicaPuesto()
        {
            BEDetalleSolicitud beDetalleSolicitud;
            BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
            if (Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] != null)
            {
                beDetalleSolicitud = (BEDetalleSolicitud)Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO];

                if (beDetalleSolicitud.IdDetalleSolicitud != 0)
                {
                    beDetalleSolicitud.DetSoliAplicacionPuesto = blDetSolAplicaPuesto.ListarDetSolAplicaPuesto(beDetalleSolicitud.IdDetalleSolicitud);
                    dgvAplicaciones.DataSource = beDetalleSolicitud.DetSoliAplicacionPuesto;
                    dgvAplicaciones.DataBind();

                    Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] = null;
                    Session.Add(Constantes.SESION_DETALLE_SOLICITUD_ACCESO, beDetalleSolicitud);
                }
            }

        }

        private void HabilitarControlesConsulta()
        {
            txtDNI.Enabled = true;
            txtNombresApellidos.Enabled = false;

            btnGrabar.Enabled = true;
            btnAdicionar.Visible = true;

            ddlAplicacion.Enabled = true;
            ddlPuesto.Enabled = true;

        }

        private void DeshabilitarControlesConsulta()
        {
            txtDNI.Enabled = false;
            txtNombresApellidos.Enabled = false;

            btnGrabar.Enabled = false;
            btnGrabar.Visible = false;
            btnAdicionar.Visible = false;
            btBuscar.Enabled = false;
            btBuscar.Visible = false;

            ddlAplicacion.Enabled = false;
            ddlPuesto.Enabled = false;


        }

        protected void ddlAplicacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                CargarPuestoLista(Convert.ToInt32(ddlAplicacion.SelectedValue));
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void dgvAplicaciones_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lnkAnular = (LinkButton)e.Row.Cells[0].FindControl("lnkAnular");

                lnkAnular.OnClientClick = Herramienta.MensajeEliminar();

                if (accion == Constantes.ACCION_NUEVO || accion == Constantes.ACCION_EDICION)
                {
                    //lnkModificar.Visible = false; //Enabled = false;
                    lnkAnular.Visible = true; //Enabled = false;
                }
                else
                {
                    lnkAnular.Visible = false;
                }
            }
        }


        protected void dgvAplicaciones_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == Constantes.COMANDO_ANULAR)
            {
                int IdDetSolApliPuesto = Convert.ToInt32(e.CommandArgument);

                if (IdDetSolApliPuesto > 0)
                {
                    try
                    {
                        //Eliminar de la BD
                        BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
                        blDetSolAplicaPuesto.EliminarDetSolAplicaPuesto(IdDetSolApliPuesto);

                        ObtenerDatosDetAplicaPuesto();

                    }
                    catch (Exception ex)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                        NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
                    }
                }
                else
                {
                    //Eliminar solo de la Session
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GUARDARDETSOLI_ELIMINAR]);

                }
            }
        }

        protected void dgvAplicaciones_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO] != null)
            {
                BEDetalleSolicitud beDetalleSolicitud;
                beDetalleSolicitud = (BEDetalleSolicitud)Session[Constantes.SESION_DETALLE_SOLICITUD_ACCESO];

                this.dgvAplicaciones.PageIndex = e.NewPageIndex;
                BEDetSolAplicaciPuestoList beDetSolAplicaciPuestoList = beDetalleSolicitud.DetSoliAplicacionPuesto;
                this.dgvAplicaciones.DataSource = beDetSolAplicaciPuestoList;
                this.dgvAplicaciones.DataBind();
            }
        }


    }
}