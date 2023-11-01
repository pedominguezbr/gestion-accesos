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
using System.Xml;
using Ionic.Zip;
using System.Security.Cryptography;
using System.Security.Cryptography.Xml;
using System.Security.Cryptography.X509Certificates;
using System.IO;
using System.Text;

namespace SgaGestionAcceso.WEB.GenAgenteValidador
{
    public partial class frmGeneracionAgenteValidador : System.Web.UI.Page
    {
        private const string ID_SOLICITUD_ACCESO = "IdSolicitudAcceso";
        private string accion;

        public string gSolicitudQS
        {
            get
            {
                return Request.QueryString[ID_SOLICITUD_ACCESO] != null ? Request.QueryString[ID_SOLICITUD_ACCESO] : "";
            }
        }

        public string gModoQS
        {
            get
            {
                return Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Extraemos los parametros de consulta
                accion = gModoQS;
                string idSolicitudAcceso = gSolicitudQS;


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

            if (beGenAgenValidador != null && beGenAgenValidador.DetalleGenAgenVali != null)
            {
                txtEstadoGeneracion.Text = beGenAgenValidador.EstadoGeneracion.Nombre;
                btnGenerar.Visible = false;
                dgvdetalleSol.DataSource = beGenAgenValidador.DetalleGenAgenVali;
                dgvdetalleSol.DataBind();
                try
                {
                    hdfIdAgente.Value = beGenAgenValidador.DetalleGenAgenVali.Select(c => c.IdGenAgenteValidador).Max().ToString();
                }
                catch { 
                
                }
            }
            else
            { btnGenerar.Visible = true; }

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
                //dgvdetalleSol.DataKeys[ IdGenAgenteValidador
                beDetalleGenAgenValidador = blDetalleGenAgenValidador.ObtenerDetalle(idDetGeneracionAgente);
                DescargarArchivo(beDetalleGenAgenValidador.NombreValidador, beDetalleGenAgenValidador.CodGenerado);
            }
        }


        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GenAgenteValidador/frmAgenteValidadorSeguim.aspx", false);
        }



        public void Generar()
        {
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BESolicitudAcceso beSolicitudAcceso;
            //BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
            //BEDetSolAplicaciPuestoList beDetSolAplicaciPuestoList;

            BLGenAgenValidador blGenAgenValidador = new BLGenAgenValidador();
            BEGenAgenValidador beGenAgenValidador = new BEGenAgenValidador();
            BEUsuarioSistema beUsuarioSistema = null;
            BEDetalleGenAgenValidador beDetalleGenAgenValidador;

            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
                //Datos del Aprovisionamiento

                beGenAgenValidador.Solicitud = beSolicitudAcceso;
                beGenAgenValidador.UsuarioCreacion = beUsuarioSistema;
                beGenAgenValidador.EstadoGeneracion = new BEEstado();
                beGenAgenValidador.EstadoGeneracion.IdEstado = Constantes.ID_ESTADO_APROBADO;

                beGenAgenValidador.DetalleGenAgenVali = new BEDetalleGenAgenValidadorList();


                //for para validar los datos correctamente.
                for (int i = 0; i < beSolicitudAcceso.NumEquipos; i++)
                {
                    beDetalleGenAgenValidador = new BEDetalleGenAgenValidador();
                    beDetalleGenAgenValidador.Activador = string.Concat("Password", (i + 1).ToString().PadLeft(2, '0'));
                    beDetalleGenAgenValidador.Estado = new BEEstado();
                    beDetalleGenAgenValidador.Estado.IdEstado = Constantes.ID_ESTADO_ACTIVO;
                    beDetalleGenAgenValidador.FechaCaducidad = DateTime.Today.AddDays(Constantes.DIAS_CADUCIDAD_VALIDADOR);
                    beDetalleGenAgenValidador.RutaValidador = "/";
                    beDetalleGenAgenValidador.NombreValidador = "Cliente.exe";

                    beGenAgenValidador.DetalleGenAgenVali.Add(beDetalleGenAgenValidador);
                }



                if (blGenAgenValidador.InsertarGenAgenValidador(beGenAgenValidador) == true)
                {

                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_GEN_VALIDADOR_OK]);
                    ObtenerDetalleGeneracion(beGenAgenValidador.IdGenAgenteValidador);
                }
                else
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_GEN_VALIDADOR_NOK]);
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

        protected void DescargarArchivo(string NombreArchivo, string CodGenerado)
        {
            string path = Server.MapPath("~/ExeValidadores/");
            string type = string.Empty;
            string RutaModoNormal;
            BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            BESolicitudAcceso beSolicitudAcceso = blSolicitudAcceso.ObtenerSolicitud(Convert.ToInt32(gSolicitudQS));

            string AgenteEncriptado = Encriptar(CodGenerado, "pass75dc@avz10", "s@lAvz", "MD5", 1, "@1B2c3D4e5F6g7H8", 128);
            string SolicitudEncriptado = Encriptar(beSolicitudAcceso.NumeroSolicitud, "pass75dc@avz10", "s@lAvz", "MD5", 1, "@1B2c3D4e5F6g7H8", 128);
            XmlDocument miXML = new XmlDocument();
            miXML.LoadXml("<?xml version='1.0' encoding='utf-8' standalone='yes'?>" +
                            "<data>" +
                            "<IdGenAgenteValidador>" + AgenteEncriptado + "</IdGenAgenteValidador>" +
                            "<IdSolicitudAcceso>" + SolicitudEncriptado + "</IdSolicitudAcceso>" +
                            "</data>");
            
            Guid carpeta = Guid.NewGuid();
            string targetPath = @"C:\" + carpeta;

            if (!System.IO.Directory.Exists(targetPath))
            {
                System.IO.Directory.CreateDirectory(targetPath);
            }
            
            miXML.Save(@"C:\" + carpeta + "\\Datos.xml");
            

            
            
            string SourceFile = System.IO.Path.Combine(path, NombreArchivo);
            string DestFile = System.IO.Path.Combine(targetPath, NombreArchivo);

            

            System.IO.File.Copy(SourceFile, DestFile, true);

            using (ZipFile zip = new ZipFile()) {
                zip.AddDirectory(targetPath);
                zip.Save(@"C:\archivo.zip");
            }

            System.IO.Directory.Delete(@"D:\" + carpeta, true);
            
            try
            {
                RutaModoNormal = string.Concat(@"C:\", "archivo.zip");
                string ext = System.IO.Path.GetExtension(RutaModoNormal);

                Response.Clear();
                Response.ClearContent();
                Response.ClearHeaders();

                switch (ext)
                {
                    case ".pdf":
                        type = "Application/pdf";
                        break;
                    case ".exe":
                        type = "application/octet-stream";
                        break;
                    default:
                        type = "text/plain";
                        break;
                }

                using (FileStream streamArchivo = File.Open(RutaModoNormal, FileMode.Open, FileAccess.Read))
                {
                    byte[] getContent = null;

                    getContent = new byte[streamArchivo.Length];

                    streamArchivo.Read(getContent, 0, Convert.ToInt32(streamArchivo.Length.ToString()));

                    Response.AddHeader("content-disposition", "attachment; filename = " + "archivo.zip");
                    Response.ContentType = type;
                    Response.BinaryWrite(getContent);
                }
                Response.Flush();
                System.IO.Directory.Delete(@"C:\archivo.zip", true);
                Response.End();
                
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public static string Encriptar(string textoQueEncriptaremos, string passBase, string saltValue, string hashAlgorithm, int passwordIterations, string initVector, int keySize)
        {
            byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
            byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(textoQueEncriptaremos);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passBase,
              saltValueBytes, hashAlgorithm, passwordIterations);
            byte[] keyBytes = password.GetBytes(keySize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged()
            {
                Mode = CipherMode.CBC
            };
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            string cipherText = Convert.ToBase64String(cipherTextBytes);
            return cipherText;
        }

        public void ObtenerDetalleGeneracion(int idGeneracion)
        {
            BLDetalleGenAgenValidador blDetalleGenAgenValidador = new BLDetalleGenAgenValidador();
            BEDetalleGenAgenValidadorList beDetalleGenAgenValidadorList = null;
            beDetalleGenAgenValidadorList = blDetalleGenAgenValidador.ListarDetalle(idGeneracion);

            if (beDetalleGenAgenValidadorList != null)
            {
                btnGenerar.Visible = false;
                dgvdetalleSol.DataSource = beDetalleGenAgenValidadorList;
                dgvdetalleSol.DataBind();
            }
        }
    }
}