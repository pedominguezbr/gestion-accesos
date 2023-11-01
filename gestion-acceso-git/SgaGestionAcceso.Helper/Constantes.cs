//*********************************************************************************
// Descripción      : Clase de Constantes utilizadas en la aplicación
// Creación         : 12/01/2013
//*********************************************************************************

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Helper
{
    public class Constantes
    {
        #region "Constantes Web Config"

        public static readonly string CODIGO_APLICACION = "CodigoAplicacion";
        public static readonly string MSG_ERROR_GENERAL = "MSG_ERROR_GENERAL";
        public static readonly string MSG_LOGOUT = "MSG_LOGOUT";

        public static readonly string MSG_SOLICITUD_ACCESO_ACTUALIZADO_EXITOSAMENTE = "MSG_SOLICITUD_ACCESO_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_SOLICITUD_ACCESO_REGISTRADO_EXITOSAMENTE = "MSG_SOLICITUD_ACCESO_REGISTRADO_EXITOSAMENTE";

        public static readonly string MSG_AGENCIA_ACTUALIZADO_EXITOSAMENTE = "MSG_AGENCIA_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_AGENCIA_REGISTRADO_EXITOSAMENTE = "MSG_AGENCIA_REGISTRADO_EXITOSAMENTE";
        public static readonly string MSG_MENU_ELIMINADO_EXITOSAMENTE = "MSG_MENU_ELIMINADO_EXITOSAMENTE";
        public static readonly string MSG_PERMISOMENU_REGISTRADO_EXITOSAMENTE = "MSG_PERMISOMENU_REGISTRADO_EXITOSAMENTE";

        public static readonly string MSG_PERSONA_ACTUALIZADO_EXITOSAMENTE = "MSG_PERSONA_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_PERSONA_REGISTRADO_EXITOSAMENTE = "MSG_PERSONA_REGISTRADO_EXITOSAMENTE";
        public static readonly string MSG_ERROR_MENU_DEBE_SELECCIONAR_UN_MENU = "MSG_ERROR_MENU_DEBE_SELECCIONAR_UN_MENU";
        

        public static readonly string MSG_MENU_ACTUALIZADO_EXITOSAMENTE = "MSG_MENU_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_MENU_REGISTRADO_EXITOSAMENTE = "MSG_MENU_REGISTRADO_EXITOSAMENTE";
        public static readonly string MSG_ERROR_MENU_NO_SE_PUEDE_ELIMINAR_TIENE_HIJOS = "MSG_ERROR_MENU_NO_SE_PUEDE_ELIMINAR_TIENE_HIJOS";
        public static readonly string MSG_ERROR_MENU_NO_SE_PUEDE_ELIMINAR_USUARIO_EXISTEN_PERMISOS_OBJETO = "MSG_ERROR_MENU_NO_SE_PUEDE_ELIMINAR_USUARIO_EXISTEN_PERMISOS_OBJETO";
        public static readonly string MSG_ERROR_PERMISO_MENU_NO_SE_PUEDE_ELIMINAR_POR_PERMISOS_HIJOS = "MSG_ERROR_PERMISO_MENU_NO_SE_PUEDE_ELIMINAR_POR_PERMISOS_HIJOS";
        
        
        public static readonly string MSG_SUCURSAL_ACTUALIZADO_EXITOSAMENTE = "MSG_SUCURSAL_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_SUCURSAL_REGISTRADO_EXITOSAMENTE = "MSG_SUCURSAL_REGISTRADO_EXITOSAMENTE";
        public static readonly string MSG_ERROR_AGENCIA_ELIMINAR = "MSG_ERROR_AGENCIA_ELIMINAR";
        public static readonly string MSG_ERROR_PERSONA_ELIMINAR = "MSG_ERROR_PERSONA_ELIMINAR";
        public static readonly string MSG_ERROR_AUTORIZANTE_ELIMINAR = "MSG_ERROR_AUTORIZANTE_ELIMINAR";

        public static readonly string MSG_APLICACION_PUESTO_EXISTE = "MSG_APLICACION_PUESTO_EXISTE";
        public static readonly string MSG_ERROR_GUARDARDETSOLI_ELIMINAR = "MSG_ERROR_GUARDARDETSOLI_ELIMINAR";
        public static readonly string MSG_ERROR_GUARDARDETALLE_ELIMINAR = "MSG_ERROR_GUARDARDETALLE_ELIMINAR";
        public static readonly string MSG_PERSONA_NOEXISTE = "MSG_PERSONA_NOEXISTE";
        public static readonly string MSG_PERSONA_YA_REGISTRADA = "MSG_PERSONA_YA_REGISTRADA";
        public static readonly string MSG_AUTORIZANTE_YA_REGISTRADO = "MSG_AUTORIZANTE_YA_REGISTRADO";

        public static readonly string MSG_SESSION_SOLICITUD_EXPIRADA = "MSG_SESSION_SOLICITUD_EXPIRADA";
        public static readonly string MSG_SIN_DETALLEAPLICACION_PUESTO = "MSG_SIN_DETALLEAPLICACION_PUESTO";
        public static readonly string MSG_SIN_DETALLESOLICITUD = "MSG_SIN_DETALLESOLICITUD";

        public static readonly string MSG_VALIDACION_OK = "MSG_VALIDACION_OK";
        public static readonly string MSG_VALIDACION_NOK = "MSG_VALIDACION_NOK";

        public static readonly string MSG_APROVISIONAMIENTO_OK = "MSG_APROVISIONAMIENTO_OK";
        public static readonly string MSG_APROVISIONAMIENTO_NOK = "MSG_APROVISIONAMIENTO_NOK";
        public static readonly string MSG_USUARIO_NO_AUTORIZADOR = "MSG_USUARIO_NO_AUTORIZADOR";

        public static readonly string MSG_GEN_VALIDADOR_OK = "MSG_GEN_VALIDADOR_OK";
        public static readonly string MSG_GEN_VALIDADOR_NOK = "MSG_GEN_VALIDADOR_NOK";

        public static readonly string EDAD_MAYOR_EDAD = "EDAD_MAYOR_EDAD";
        public static readonly string MSG_WS_RENIEC_PERSO_NOENC = "MSG_WS_RENIEC_PERSO_NOENC";

        public static readonly string DIRECCION_FRM_BIENVENIDO = "DireccionFrmBienvenido";
        public static readonly string DIRECCION_FRM_LOGIN = "DireccionFrmLogin";
        public static readonly string DIRECCION_FRM_SEGUMIENTO_SOLICITUD_ACCESO = "DireccionFrmSolicitudAccesoSeguim";
        public static readonly string DIRECCION_FRM_AGENCIA_CONSULTA = "DirecionFrmAgenciaConsulta";
        public static readonly string DIRECCION_FRM_PERSONA_CONSULTA = "DirecionFrmPersonaConsulta";
        public static readonly string DIRECCION_FRM_APLICAAUTO_CONSULTA = "DirecionFrmAplicaAutoConsulta";
        public static readonly string DIRECCION_FRM_ROL_CONSULTA = "DirecionFrmRolConsulta";
        public static readonly string DIRECCION_FRM_AUTORIZADOR_CONSULTA = "DirecionFrmAutorizadorConsulta";
        public static readonly string DIRECCION_FRM_MENU_CONSULTA = "DirecionFrmMenuConsulta";
        public static readonly string DIRECCION_FRM_PERMISOMENU_CONSULTA = "DirecionFrmPermisoMenuConsulta";
        public static readonly string DIRECCION_FRM_USUARIO_CONSULTA = "DirecionFrmUsuarioConsulta";
        public static readonly string DIRECCION_FRM_USUARIO_CONSULTAPU = "DirecionFrmUsuarioConsultaPU";
        public static readonly string MSG_APLIAUTORIZANTE_ACTUALIZADO_EXITOSAMENTE = "MSG_APLIAUTORIZANTE_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_APLIAUTORIZANTE_REGISTRADO_EXITOSAMENTE = "MSG_APLIAUTORIZANTE_REGISTRADO_EXITOSAMENTE";

        public static readonly string MSG_AUTORIZADOR_ACTUALIZADO_EXITOSAMENTE = "MSG_AUTORIZADOR_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_AUTORIZADOR_REGISTRADO_EXITOSAMENTE = "MSG_AUTORIZADOR_REGISTRADO_EXITOSAMENTE";

        public static readonly string MSG_PERMISOMENU_ACTUALIZADO_EXITOSAMENTE = "MSG_PERMISOMENU_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_PERMISOUSUARIO_REGISTRADO_EXITOSAMENTE = "MSG_PERMISOUSUARIO_REGISTRADO_EXITOSAMENTE";

        public static readonly string MSG_COPIA_PERMISOS_EXITOSA = "MSG_COPIA_PERMISOS_EXITOSA";
        public static readonly string MSG_ERROR_COPIA_PERMISOS = "MSG_ERROR_COPIA_PERMISOS";

        public static readonly string MSG_USUARIO_ELIMINADO_EXITOSAMENTE = "MSG_USUARIO_ELIMINADO_EXITOSAMENTE";
        public static readonly string MSG_ERROR_NO_SE_PUEDE_ELIMINAR_USUARIO_EXISTEN_PERMISOS_USUARIO = "MSG_ERROR_NO_SE_PUEDE_ELIMINAR_USUARIO_EXISTEN_PERMISOS_USUARIO";
        public static readonly string MSG_ERROR_NO_SE_PUEDE_ELIMINAR_USUARIO = "MSG_ERROR_NO_SE_PUEDE_ELIMINAR_USUARIO";

        public static readonly string MSG_USUARIO_ACTUALIZADO_EXITOSAMENTE = "MSG_USUARIO_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_USUARIO_REGISTRADO_EXITOSAMENTE = "MSG_USUARIO_REGISTRADO_EXITOSAMENTE";
        public static readonly string MSG_USUARIO_YA_REGISTRADO = "MSG_USUARIO_YA_REGISTRADO";
        #endregion


        #region "Constantes"

        public static readonly string SESION_AREAS = "AREAS";

        public static readonly string SESION_PUESTOS = "PUESTOS";

        public static readonly string SESION_USUARIO = "USUARIO";

        public static readonly string SESION_USUARIOMA = "USUARIOMA";

        public static readonly string SESION_USUARIOPERMISO = "USUARIOPERMISO";

        public static readonly string SESION_AGENCIA = "AGENCIA";

        public static readonly string SESION_PERSONA = "PERSONA";

        public static readonly string SESION_MENU = "MENU";

        public static readonly string SESION_PERSONAM = "PERSONAM";

        public static readonly string SESION_AGENCIAS = "SESION_AGENCIAS";

        public static readonly string SESION_LISTA_UBIGEO = "SESION_LISTA_UBIGEO";

        public static readonly string SESION_LISTA_PERSONAS = "SESION_LISTA_PERSONAS";

        public static readonly string SESION_LISTA_USUARIOS = "SESION_LISTA_USUARIOS";

        public static readonly string SESION_SUCURSAL = "SUCURSAL";

        public static readonly string SESION_LISTA_SUCURSAL = "LISTA_SUCURSAL";
       
        public static readonly string SESION_LISTA_APLICAAUTORIZANTE = "LISTA_APLICAAUTORIZANTE";

        public static readonly string SESION_LISTA_APLICAAUTORIZANTEHISTO = "LISTA_APLICAAUTORIZANTEHISTO";

        public static readonly string SESION_SOLICITUD_ACCESO = "SOLICITUD_ACCCESO";

        public static readonly string SESION_DETALLE_SOLICITUD_ACCESO = "DETALLE_SOLICITUD_ACCCESO";

        public static readonly string SESION_PROCESANDO_SOLICITUD = "SESION_PROCESANDO_SOLICITUD";

        public static readonly string SESION_ACCION_SOLICITUD = "SESION_ACCION_SOLICITUD";

        public static readonly string SESION_BUSQUEDA_SOLICITUD = "SESION_BUSQUEDA_SOLICITUD";

        public static readonly string SESION_OPCIONES_MENU = "SESION_OPCIONES_MENU";

        public static readonly string SESION_BUSQUEDA_ESCANEOAGENCIASUC = "SESION_BUSQUEDA_ESCANEOAGENCIASUC";

        public static readonly string MODO_VISUALIZACION = "modo";

        public static readonly string OPCION_VALOR_SELECCIONE = "-1";
        public static readonly string NUMERO_SOLICITUD_INICIAL = "CRQ0000000";
        public const int VALOR_CERO = 0;

        public static readonly string KEY_GEN_CLAVE = "%ü&/@#$A";

        public const int ID_ESTADO_REGISTRO_SOLICITUD = 1;
        public const int ID_ESTADO_VALIDADO = 3;
        public const int ID_ESTADO_ERROR_VALIDACION = 5;
        public const int ID_ESTADO_APROVISIONADO = 6;
        public const int ID_ESTADO_ACTIVO = 7;
        public const int ID_ESTADO_APROBADO = 8;


        public const int ID_TIPO_ESTADO_SOLICITUD = 1;
        public const int ID_TIPO_ESTADO_VALIDACION = 2;
        public const int ID_TIPO_ESTADO_GENERACION_VALIDADOR=4;
        public const int ID_TIPO_ESTADO_VALIDA_PUNTO_ACCESO = 5;


        public const double DIAS_CADUCIDAD_VALIDADOR = 15;
        public static readonly string TEXTO_ESTADO_INICIAL_DET_SOL = "EN PROCESO";
        public const int VALOR_NEGATIVO_NULO = -1;


        public static readonly string REGISTROS_POR_PAGINA = "RegistroporPagina";

        public static readonly string REGISTROS_POR_PAGINA_DETALLE_SOLICITUD = "RegistroporPaginaDetalleSol";

        public static readonly string NEMOTECNICO_NUM_SOLICITUD = "CRQ";

        public static readonly string ID_GEN_VALIDADOR = "VAL";

        //Comandos de Row
        public static readonly string COMANDO_MODIFICAR = "cmdModificar";
        public static readonly string COMANDO_CONSULTAR = "cmdConsultar";
        public static readonly string COMANDO_VALIDAR = "cmdValidar";
        
        public static readonly string COMANDO_ANULAR = "cmdAnular";
        public static readonly string COMANDO_AGREGAR_ROL = "cmdAgregarRol";
        public static readonly string COMANDO_MODIFICAR_PERMISOS = "cmdModificarPermiso";
        public static readonly string COMANDO_DESCARGAR = "cmdDescargar";

        //POST -----------------------------------------------------------------------------------------
        public static readonly string ACCION_VISUALIZACION = "CONSULTAR";
        public static readonly string ACCION_VALIDAR = "VALIDAR";
        public static readonly string ACCION_EDICION = "EDITAR";
        public static readonly string ACCION_NUEVO = "NUEVO";
        public static readonly string MODO = "MODO";

        public static readonly string NOMBRE_USUARIO_NOLOGIN = "NOMBRE_USUARIO_NOLOGIN";


        public static readonly string ACCION_REGISTRAR_PERMISO_APLAU = "REGISTRADO";
        public static readonly string ACCION_ELIMINAR_PERMISO_APLAU = "ELIMINADO";


        public static readonly string SESION_APLICAAUTORIZANTE = "APLICAAUTORIZANTE";

        public static readonly string SESION_LISTA_ROLES = "SESION_LISTA_ROLES";
        public static readonly string SESION_ROL = "SESION_ROL";

        public static readonly string MSG_ROL_ACTUALIZADO_EXITOSAMENTE = "MSG_ROL_ACTUALIZADO_EXITOSAMENTE";
        public static readonly string MSG_ROL_REGISTRADO_EXITOSAMENTE = "MSG_ROL_REGISTRADO_EXITOSAMENTE";

        public static readonly string SESION_AUTORIZANTE = "AUTORIZANTE";

        public static readonly string SESION_LISTA_AUTORIZANTE = "LISTA_AUTORIZANTE";

        public static readonly string SESION_PERMISO_MENU = "PERMISO_MENU";
        public static readonly string SESION_LISTA_PERMISO_MENU = "LISTA_PERMISO_MENU";
        #endregion



    }
}
