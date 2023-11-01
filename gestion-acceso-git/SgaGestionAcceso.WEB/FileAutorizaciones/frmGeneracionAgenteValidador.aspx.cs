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
namespace SgaGestionAcceso.WEB.GenAgenteValidador
{
    public partial class frmGeneracionAgenteValidador : System.Web.UI.Page
    {
        private const string ID_SOLICITUD_ACCESO = "IdSolicitudAcceso";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Extraemos los parametros de consulta
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idSolicitudAcceso = Request.QueryString[ID_SOLICITUD_ACCESO] != null ? Request.QueryString[ID_SOLICITUD_ACCESO] : "";


                if (!IsPostBack)
                {
                    this.dgvdetalleSol.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA]);

                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosSolicitudAcceso(Int32.Parse(idSolicitudAcceso));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            DeshabilitarControlesConsulta();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }

        }

        private void DeshabilitarControlesConsulta()
        {
            txtnroSolicitud.Enabled = false;
            txtFechaRegistro.Enabled = false;
            txtFechaValidacion.Enabled = false;
            txtSolicitante.Enabled = false;
            txtTipoAcceso.Enabled = false;

            txtEstado.Enabled = false;
            txtAgencia.Enabled = false;
            txtSucursal.Enabled = false;
        }

        private void ObtenerDatosSolicitudAcceso(int idSolicitudAcceso)
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BLGenAgenValidador blGenAgenValidador = new BLGenAgenValidador();
            BEGenAgenValidador beGenAgenValidador = null;
            BLPersona blPersona = new BLPersona();
            BEPersona bePersona = null;
            BESolicitudAcceso beSolicitudAcceso = blSolicitudAcceso.ObtenerSolicitud(idSolicitudAcceso);

            txtnroSolicitud.Text = beSolicitudAcceso.NumeroSolicitud;

            bePersona = blPersona.ObtenerPersona(string.Empty, beSolicitudAcceso.Solicitante.IdPersona);
            txtSolicitante.Text = bePersona.NombresCompletos;
            if (beSolicitudAcceso.Autorizante != null)
            {
                txtAutorizante.Text = beSolicitudAcceso.Autorizante.NombresCompletos;
            }
            //ddlTipoAcceso.SelectedValue = beSolicitudAcceso.TipoAcceso.IdTipoAcceso.ToString();
            txtAgencia.Text = beSolicitudAcceso.Agencia.Nombre;

            //CargarSucursalLista(beSolicitudAcceso.Agencia.IdAgencia);
            txtSucursal.Text = beSolicitudAcceso.Sucursal.Nombre;
            txtEstado.Text = beSolicitudAcceso.Estado.Nombre;
            txtTipoAcceso.Text = beSolicitudAcceso.TipoAcceso.Nombre;
            txtFechaRegistro.Text = beSolicitudAcceso.FechaRegistro.ToString("dd/MM/yyyy");
            txtFechaValidacion.Text = beSolicitudAcceso.FechaValidacion.ToString("dd/MM/yyyy");

            Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
            Session.Add(Constantes.SESION_SOLICITUD_ACCESO, beSolicitudAcceso);

            txtNumUsuarios.Text = beSolicitudAcceso.DetalleSolicitud.Count.ToString();
            txtNumEquipos.Text = beSolicitudAcceso.NumEquipos.ToString();

            //Cargar datos de Generacion de Agente
            beGenAgenValidador = blGenAgenValidador.ObtenerGenAgenValidador(Constantes.VALOR_NEGATIVO_NULO, idSolicitudAcceso);

            if (beGenAgenValidador != null && beGenAgenValidador.DetalleGenAgenVali !=null)
            {
                btnGenerar.Visible = false;
                dgvdetalleSol.DataSource = beGenAgenValidador.DetalleGenAgenVali;
                dgvdetalleSol.DataBind();
            }
            else
            {             btnGenerar.Visible = true;            }

        }

        protected void dgvdetalleSol_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                BESolicitudAcceso beSolicitudAcceso;
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                this.dgvdetalleSol.PageIndex = e.NewPageIndex;
                BEDetalleSolicitudList beDetalleSolicitudList = beSolicitudAcceso.DetalleSolicitud;
                this.dgvdetalleSol.DataSource = beDetalleSolicitudList;
                this.dgvdetalleSol.DataBind();
            }
        }

        protected void dgvdetalleSol_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idDetGeneracionAgente = Convert.ToInt32(e.CommandArgument);
            BLDetalleGenAgenValidador blDetalleGenAgenValidador = new BLDetalleGenAgenValidador();
            BEDetalleGenAgenValidador beDetalleGenAgenValidador = null;
            if (e.CommandName == Constantes.COMANDO_DESCARGAR)
            {
                beDetalleGenAgenValidador = blDetalleGenAgenValidador.ObtenerDetalle(idDetGeneracionAgente);

                //ObtenerDatosDetalleSolicitudAcceso(idDetGeneracionAgente);
                DescargarArchivo(beDetalleGenAgenValidador.RutaValidador);

            }
        }


        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GenAgenteValidador/frmAgenteValidadorSeguim.aspx");
        }



        public void Generar()
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BESolicitudAcceso beSolicitudAcceso;
            BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
            BEDetSolAplicaciPuestoList beDetSolAplicaciPuestoList;

            BLAprovisionamiento blAprovisionamiento = new BLAprovisionamiento();
            BEAprovisionamiento beAprovisionamiento = new BEAprovisionamiento();
            BEDetalleAprovisionamiento beDetalleAprovisionamiento;
            BLParametroGeneracionCuenta beParametroGeneracionCuenta = new BLParametroGeneracionCuenta();

            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];

                //Datos del Aprovisionamiento
                beAprovisionamiento.NumeroCertificado = "01020340590";
                beAprovisionamiento.Solicitud = beSolicitudAcceso;

                beAprovisionamiento.DetalleAprovisionamiento = new BEDetalleAprovisionamientoList();

                //for para validar los datos correctamente.
                foreach (BEDetalleSolicitud beDetalleSolicitud in beSolicitudAcceso.DetalleSolicitud)
                {
                    beDetSolAplicaciPuestoList = blDetSolAplicaPuesto.ListarDetSolAplicaPuesto(beDetalleSolicitud.IdDetalleSolicitud);
                    foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetSolAplicaciPuestoList)
                    {
                        //Datos
                        beDetalleAprovisionamiento = new BEDetalleAprovisionamiento();
                        beDetalleAprovisionamiento.Aplicacion = new BEAplicacion();
                        beDetalleAprovisionamiento.Aplicacion.IdAplicacion = beDetSolAplicaciPuesto.Aplicacion.IdAplicacion;
                        beDetalleAprovisionamiento.Persona = new BEPersona();
                        beDetalleAprovisionamiento.Persona.IdPersona = beDetalleSolicitud.Persona.IdPersona;
                        beDetalleAprovisionamiento.Estado = new BEEstado();
                        beDetalleAprovisionamiento.Estado.IdEstado = Constantes.ID_ESTADO_APROVISIONADO;

                        //Generar el Usuario y la clave del aplicativo para el Usuario
                        beDetalleAprovisionamiento.CuentaUsuario = beParametroGeneracionCuenta.ProcesarCuenta(beDetSolAplicaciPuesto.Aplicacion.IdLogicaGeneracionUsuario, beDetalleSolicitud.Persona);
                        beDetalleAprovisionamiento.ClaveGenerada = beDetalleAprovisionamiento.CuentaUsuario; // "Clave01";

                        beAprovisionamiento.DetalleAprovisionamiento.Add(beDetalleAprovisionamiento);
                    }

                }


                if (blAprovisionamiento.InsertarAprovisionamiento(beAprovisionamiento) == true)
                {

                    Response.Redirect(String.Format("~/Aprovisionamiento/frmAprovisionamientoProcesado.aspx?modo=CONSULTAR&IdAprovisionamiento={0}", beAprovisionamiento.IdAprovisionamiento), false);

                }
                else
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_APROVISIONAMIENTO_NOK]);
                }

                // ObtenerDatosSolicitudAcceso(beSolicitudAcceso.IdSolicitud);

                btnGenerar.Enabled = false;
            }

        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            try
            {
                Generar();
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void DescargarArchivo(string NombreArchivo)
        {
            string path = Server.MapPath("~/GenAgenteValidador/");
            string type = string.Empty;
            string RutaModoNormal;

            try
            {
                string ext = System.IO.Path.GetExtension(string.Concat("{0}{1}", path, NombreArchivo));

                Response.Clear();
                Response.ClearContent();
                Response.ClearHeaders();

                switch (ext)
                {
                    case ".pdf":
                        type = "Application/pdf";
                        break;


                    //            case ".htm"  ".html":
                    //                type = "text/HTML";
                    //                     break;
                    //case ".txt":
                    //                type = "text/plain";
                    //      break;
                    //case ".doc", ".rtf":
                    //                type = "Application/msword";
                    //      break;
                    //case ".csv", ".xls":
                    //                type = "Application/x-msexcel";
                    //      break;
                    //case ".mp3", ".mpeg", ".mp2", ".wav", ".avi", ".dat", ".jpg", ".swf", ".jpeg", ".bmp":;
                    //                type = "application/octet-stream";
                    //      break;
                    case ".exe":
                        type = "application/octet-stream";
                        break;
                    default:
                        type = "text/plain";
                        break;
                }

                //        Dim getContent(streamArchivo.Length) As Byte
                //        streamArchivo.Read(getContent, 0, streamArchivo.Length)
                //        streamArchivo.Close()
                //        Response.AddHeader("content-disposition", "attachment; filename = " + nombre)
                //        If type <> "" Then
                //            Response.ContentType = type
                //        End If
                //        Response.BinaryWrite(getContent)
                //        Response.End()
                //        Return True
                FileStream streamArchivo;
                RutaModoNormal = string.Concat("{0}{1}", path, NombreArchivo);
                //RutaModoNormal = RutaModoNormal.Replace("\\", "/");
                streamArchivo = File.Open(RutaModoNormal, FileMode.Open,FileAccess.Read);
                byte[] getContent = null;

                streamArchivo.Read(getContent, 0, Convert.ToInt32(streamArchivo.Length.ToString()));

                Response.AddHeader("content-disposition", "attachment; filename = " + NombreArchivo);
                Response.ContentType = type;
                Response.BinaryWrite(getContent);
                Response.End();



            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DescargarArchivo("Cliente.exe");
        }
        //        Function Grabar(ByVal nombre As String) As Boolean
        //    Dim path As String = Server.MapPath("~/UpLoad/")
        //    'Dim nombre As String = Request.QueryString("archivo")

        //    Try
        //        Dim fullPath As String = path
        //        Dim name As String = nombre
        //        Dim ext As String = System.IO.Path.GetExtension(fullPath & nombre)
        //        Dim type As String = ""
        //        If Not IsDBNull(ext) Then
        //            ext = ext.ToString.ToLower
        //        End If

        //        Response.Clear()
        //        Response.ClearContent()
        //        Response.ClearHeaders()

        //        Select Case ext
        //            Case ".pdf"
        //                type = "Application/pdf"
        //            Case ".htm", ".html"
        //                type = "text/HTML"
        //            Case ".txt"
        //                type = "text/plain"
        //            Case ".doc", ".rtf"
        //                type = "Application/msword"
        //            Case ".csv", ".xls"
        //                type = "Application/x-msexcel"
        //            Case ".mp3", ".mpeg", ".mp2", ".wav", ".avi", ".dat", ".jpg", ".swf", ".jpeg", ".bmp"
        //                type = "application/octet-stream"
        //            Case ".exe"
        //                type = "application/octet-stream"
        //            Case Else
        //                type = "text/plain"
        //        End Select

        //        Dim streamArchivo As IO.FileStream
        //        streamArchivo = IO.File.Open(fullPath & nombre, IO.FileMode.Open)
        //        Dim getContent(streamArchivo.Length) As Byte
        //        streamArchivo.Read(getContent, 0, streamArchivo.Length)
        //        streamArchivo.Close()
        //        Response.AddHeader("content-disposition", "attachment; filename = " + nombre)
        //        If type <> "" Then
        //            Response.ContentType = type
        //        End If
        //        Response.BinaryWrite(getContent)
        //        Response.End()
        //        Return True
        //    Catch ex As Exception
        //    End Try
        //End Function
    }
}