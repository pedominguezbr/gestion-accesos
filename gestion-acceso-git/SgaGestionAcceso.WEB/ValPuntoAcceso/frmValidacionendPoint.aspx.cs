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
using SgaGestionAcceso.AccesoDatos;
using System.Collections;
using System.IO;


namespace SgaGestionAcceso.WEB.ValPuntoAcceso
{
    public partial class frmValidacionendPoint : System.Web.UI.Page
    {
        private const string ID_DETESCANEO_AGENCIASUC = "IdDetEscaneoValidacion";
        private string accion;
        string idDetEscaneoValidacion = "";
        BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                //Extraemos los parametros de consulta
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                idDetEscaneoValidacion = Request.QueryString[ID_DETESCANEO_AGENCIASUC] != null ? Request.QueryString[ID_DETESCANEO_AGENCIASUC] : "";


                if (!IsPostBack)
                {
                    this.dgvAplicacionValidar.PageSize = Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.REGISTROS_POR_PAGINA]);
                    
                    if (Session[Constantes.SESION_USUARIO] != null)
                    {
                        beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];

                    }
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VALIDAR.Equals(accion))
                        {
                            //ObtenerDatosSolicitudAcceso(Int32.Parse(idDetEscaneoValidacion));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            ObtenerDatosCabecera(idDetEscaneoValidacion);
                            BLValidacionEndPoint BLValidacionEndPoint = new BLValidacionEndPoint();
                            bool Valida = BLValidacionEndPoint.VerificarPermisoEdicion(idDetEscaneoValidacion);
                            if (Valida) {

                                btnValidar.Visible = false;
                            }
                            //DeshabilitarControlesConsulta();
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
            txtAgencia.Enabled = false;
            txtArquitectura.Enabled = false;
            txtEquipo.Enabled = false;
            txtFechaescaneo.Enabled = false;
            txtMemoria.Enabled = false;
            txtProcesador.Enabled = false;
            txtServicePack.Enabled = false;
            txtsitemaOperativo.Enabled = false;
            txtSucursal.Enabled = false;
            txtUsuario.Enabled = false;
        }
        
        private void ObtenerDatosCabecera(string idDetEscaneoValidacion)
        {
            
            BLValidacionEndPoint BLValidacionEndPoint = new BLValidacionEndPoint();
            Entidades.AuxXmlsList xmls = null;
            xmls = BLValidacionEndPoint.ListarCabXlms(idDetEscaneoValidacion);
            txtAgencia.Text = xmls.First().DescAgencia;
            txtSucursal.Text = xmls.First().DescSucursal;
            txtEquipo.Text = xmls.First().DescEquipo;
            txtFechaescaneo.Text = xmls.First().FechaEscaneo.ToShortDateString();
            txtUsuario.Text = xmls.First().Usuario;
            txtArquitectura.Text = xmls.First().Arquitectura;
            txtsitemaOperativo.Text = xmls.First().SistemaOp;
            txtServicePack.Text = xmls.First().ServicePack;
            txtProcesador.Text = xmls.First().Procesador;
            txtMemoria.Text = xmls.First().Memoria;
            hdPcId.Value = xmls.First().id;
            Session[Constantes.SESION_SOLICITUD_ACCESO] = null;
            Session.Add(Constantes.SESION_SOLICITUD_ACCESO, BLValidacionEndPoint);

            dgvAplicacionValidar.DataSource = BLValidacionEndPoint.ListarAplicaciones(xmls.First().id);
            dgvAplicacionValidar.DataBind();

        }

        protected void dgvAplicacionValidar_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            {
                BLValidacionEndPoint BLValidacionEndPoint = new BLValidacionEndPoint();
                Entidades.AuxXmlsList xmls = null;
                xmls = BLValidacionEndPoint.ListarCabXlms(idDetEscaneoValidacion);
                
                this.dgvAplicacionValidar.PageIndex = e.NewPageIndex;

                this.dgvAplicacionValidar.DataSource = BLValidacionEndPoint.ListarAplicaciones(xmls.First().id);
                this.dgvAplicacionValidar.DataBind();
            }
        }

        protected void dgvAplicacionValidar_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idDetalleSolicitud = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == Constantes.COMANDO_CONSULTAR)
            {
                //ObtenerDatosDetalleSolicitudAcceso(idDetalleSolicitud);
                //mpeDetalleAplicacion.Show();
            }

        }



        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ValPuntoAcceso/frmValPuntoAccesoSeguim.aspx");
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            try
            {
                ValidarSolicitud();
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void ValidarSolicitud()
        {
            BLValidacionEndPoint BLValidacionEndPoint = new BLValidacionEndPoint();
            string validacion = "";

            if (!chkSO.Checked && !chkProc.Checked && !chkMemory.Checked && hdValidaCheck.Value == "")
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "Por favor verificar los datos de la cabecera");
                hdValidaCheck.Value = "verificado";
            }
            else
            {
                if (!chkSO.Checked)
                {
                    validacion = "Sistema Operativo";
                    BLValidacionEndPoint.InsertarResultadoValidacion(hdPcId.Value.ToString(), "Característica", "Sistema Operativo");
                }
                if (!chkProc.Checked)
                {
                    if (validacion == "")
                    {
                        validacion = "Procesador";
                    }
                    else
                    {
                        validacion = validacion + ", Procesador";
                    }
                    BLValidacionEndPoint.InsertarResultadoValidacion(hdPcId.Value.ToString(), "Característica", "Procesador");
                }
                if (!chkMemory.Checked)
                {
                    if (validacion == "")
                    {
                        validacion = "Memoria";
                    }
                    else
                    {
                        validacion = validacion + ", Memoria";
                    }
                    BLValidacionEndPoint.InsertarResultadoValidacion(hdPcId.Value.ToString(), "Característica", "Memoria");
                }

                if (validacion != "")
                {
                    validacion = "El proceso de validación no fue superado por los siguientes campos: " + validacion + ". ";
                }

                string ValidaSW = BLValidacionEndPoint.validarSWMalicioso(hdPcId.Value.ToString());
                if (ValidaSW != "")
                {
                    validacion = validacion + "Algunos programas no superaron el proceso de validación";
                }


                if (validacion != "")
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], validacion);
                }
                else
                {

                    BLValidacionEndPoint.ActualizarXMLS(hdPcId.Value.ToString());
                    string RutaOrigen = WebConfigurationManager.AppSettings["CertificadoOriginal"].ToString();
                    string RutaDestino = WebConfigurationManager.AppSettings["RepositorioCertificados"].ToString() + @"\" + hdPcId.Value.ToString();
                    string FileName = "";
                    string destFile = "";
                    if (!System.IO.Directory.Exists(RutaDestino))
                    {
                        System.IO.Directory.CreateDirectory(RutaDestino);
                    }
                    if (System.IO.Directory.Exists(RutaOrigen))
                    {
                        string[] files = System.IO.Directory.GetFiles(RutaOrigen);

                        // Copy the files and overwrite destination files if they already exist.
                        foreach (string s in files)
                        {
                            // Use static Path methods to extract only the file name from the path.
                            FileName = System.IO.Path.GetFileName(s);
                            destFile = System.IO.Path.Combine(RutaDestino, FileName);
                            System.IO.File.Copy(s, destFile, true);
                        }
                    }
                    if (Session[Constantes.SESION_USUARIO] != null)
                    {
                        beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];

                    }
                    DAPersona daPersona = new DAPersona();
                    daPersona.RegistrarCierre(idDetEscaneoValidacion, beUsuarioSistema.IdPersona);
                    //File.Copy(RutaOrigen,RutaDestino + @"\" + hdPcId.Value.ToString(),true); 
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], "Validación Correcta");
                }
            }
            //BLSolicitudAcceso blSolicitudAcceso = new BLSolicitudAcceso();
            //BLDetalleSolicitud blDetalleSolicitud = new BLDetalleSolicitud();
            //BESolicitudAcceso beSolicitudAcceso;
            //BLDetSolAplicaPuesto blDetSolAplicaPuesto = new BLDetSolAplicaPuesto();
            //BEDetSolAplicaciPuestoList beDetSolAplicaciPuestoList;
            //BLUsuarioObservado blUsuarioObservado = new BLUsuarioObservado();
            //BLAutorizante blAutorizante = new BLAutorizante();
            //BEAutorizante beAutorizante;
            //BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
            //
            //BEUsuarioObservadoList beUsuarioObservadoList;
            //bool ValidadoOk = false;
            //string msgValidacion;
            //WsReniec1.WsReniec wsReniec = new WsReniec1.WsReniec();
            //wsReniec.PreAuthenticate = true;
            ////wsReniec.UseDefaultCredentials = true;
            //wsReniec.Credentials = System.Net.CredentialCache.DefaultCredentials;
            //WsReniec1.BEPersona bePersonaReniec;
            //
            //
            //
            //if (this.Session[Constantes.SESION_SOLICITUD_ACCESO] != null)
            //{
            //    beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
            //
            //    beSolicitudAcceso = (BESolicitudAcceso)Session[Constantes.SESION_SOLICITUD_ACCESO];
            //
            //    beAutorizante = blAutorizante.ObtenerAutorizante(Constantes.VALOR_CERO, beUsuarioSistema.IdPersona);
            //
            //    if (beAutorizante == null)
            //    {
            //        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_USUARIO_NO_AUTORIZADOR]);
            //
            //        return;
            //    }
            //
            //    //for para validar los datos correctamente.
            //    foreach (BEDetalleSolicitud beDetalleSolicitud in beSolicitudAcceso.DetalleSolicitud)
            //    {
            //        ValidadoOk = true;
            //        msgValidacion = string.Empty;
            //        //Validar Si Cliente Existe
            //        bePersonaReniec = wsReniec.ObtenerDatosReniec(beDetalleSolicitud.Persona.DNI);
            //
            //        //Verificar que DNI Existe
            //        if (bePersonaReniec.MsgError.Trim() != WebConfigurationManager.AppSettings[Constantes.MSG_WS_RENIEC_PERSO_NOENC].Trim())
            //        {
            //            //Validar Edad del Cliente
            //            if ((DateTime.Now.Year - bePersonaReniec.FechaNacimiento.Year) >= Convert.ToInt32(WebConfigurationManager.AppSettings[Constantes.EDAD_MAYOR_EDAD]))
            //
            //
            //                ValidadoOk = true;
            //            else
            //            {
            //                //No es Mayor de Edad
            //                msgValidacion = string.Format("El DNI {0} es menor de edad, por favor verificar.", beDetalleSolicitud.Persona.DNI);
            //                ValidadoOk = false;
            //                beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_ERROR_VALIDACION;
            //                beDetalleSolicitud.ObservacionValidacion = msgValidacion;
            //                blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
            //            }
            //        }
            //        else
            //        {
            //            msgValidacion = string.Format("El DNI {0} no existe en la Reniec, por favor verificar.", beDetalleSolicitud.Persona.DNI);
            //            ValidadoOk = false;
            //            beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_ERROR_VALIDACION;
            //            beDetalleSolicitud.ObservacionValidacion = msgValidacion;
            //            blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
            //        }
            //
            //        if (ValidadoOk == true)
            //        {
            //
            //            beDetSolAplicaciPuestoList = blDetSolAplicaPuesto.ListarDetSolAplicaPuesto(beDetalleSolicitud.IdDetalleSolicitud);
            //            foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetSolAplicaciPuestoList)
            //            {
            //                //Validar Archivo Negativo
            //                beUsuarioObservadoList = blUsuarioObservado.BuscarUsuarioObservados(beDetSolAplicaciPuesto.Aplicacion.IdAplicacion, beDetalleSolicitud.Persona.DNI);
            //
            //                if (beUsuarioObservadoList.Count == Constantes.VALOR_CERO)
            //                {
            //                    ValidadoOk = true;
            //                }
            //                else
            //                {
            //                    msgValidacion = string.Format("El DNI {0} y la aplicacion {1} estan registrados como observados, por favor verificar.", beDetalleSolicitud.Persona.DNI, beDetSolAplicaciPuesto.Aplicacion.Nombre);
            //                    ValidadoOk = false;
            //                    beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_ERROR_VALIDACION;
            //                    beDetalleSolicitud.ObservacionValidacion = msgValidacion;
            //                    blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
            //                }
            //
            //            }
            //
            //        }
            //
            //        //Volver a Verificar si la validacion de la solicitud tambien fue OK y actualizar el estado a OK
            //        if (ValidadoOk == true)
            //        {
            //            beDetalleSolicitud.Estado.IdEstado = Constantes.ID_ESTADO_VALIDADO;
            //            blDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
            //        }
            //    }
            //
            //    //Agregar el Autorizante}beSolicitudAcceso
            //    beSolicitudAcceso.Autorizante.IdAutorizante = beAutorizante.IdAutorizante;
            //
            //    //Actualiza Estado de las Solicitudes y su Detalle
            //    if (ValidadoOk == true)
            //    {
            //        //Actualiza Estado a OK a la solicitud y al detalle
            //        blSolicitudAcceso.ActEstadoSolAccesoyDetalleValOk(beSolicitudAcceso);
            //        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_VALIDACION_OK]);
            //
            //    }
            //    else
            //    {
            //        //Actualiza Estado a Error en validacion a la solicitud y al detalle
            //        blSolicitudAcceso.ActEstadoSolAccesoyDetalleValNOk(beSolicitudAcceso);
            //        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_VALIDACION_NOK]);
            //        //Envia un msg indicando el posible error generado
            //    }
            //
            //
            //    //ObtenerDatosSolicitudAcceso(beSolicitudAcceso.IdSolicitud);
            //
            //
            //    btnValidar.Enabled = false;
            //}

        }
    }
}