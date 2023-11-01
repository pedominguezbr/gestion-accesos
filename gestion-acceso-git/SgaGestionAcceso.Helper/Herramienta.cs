//*********************************************************************************
// Descripción      : Clase de Herramientas visuales para la aplicación
//*********************************************************************************

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
namespace SgaGestionAcceso.Helper
{
    public class Herramienta
    {

        #region "Métodos"
        /// <summary>
        /// Función que llena de manera personalizada un DropDownList
        /// </summary>
        /// <param name="ddl">control DropDownList al que se desea asignar los valores</param>
        /// <param name="listaDDL">lista con los valores a ser asignados</param>
        /// <param name="campoValor">nombre del campo que contiene el valor del registro</param>
        /// <param name="CampoDescripcion">nombre del campo que contiene la descripcion</param>
        public static void CargarDropDownListSeleccione(DropDownList ddl, IList listaDDL, string campoValor, string CampoDescripcion)
        {
            ddl.DataSource = listaDDL;
            ddl.DataTextField = CampoDescripcion;
            ddl.DataValueField = campoValor;
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemSeleccione"].ToString(), "-1"));
        }

        /// <summary>
        /// Función que llena de manera personalizada un DropDownList con un item de todos
        /// </summary>
        /// <param name="ddl">control DropDownList al que se desea asignar los valores</param>
        /// <param name="listaDDL">lista con los valores a ser asignados</param>
        /// <param name="campoValor">nombre del campo que contiene el valor del registro</param>
        /// <param name="CampoDescripcion">nombre del campo que contiene la descripcion</param>
        public static void CargarDropDownListItemTodos(DropDownList ddl, IList listaDDL, string campoValor, string CampoDescripcion)
        {
            ddl.DataSource = listaDDL;
            ddl.DataTextField = CampoDescripcion;
            ddl.DataValueField = campoValor;
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemTodos"].ToString(), "-1"));
        }

        public static void CargarDropDownListItemNinguno(DropDownList ddl, IList listaDDL, string campoValor, string CampoDescripcion)
        {
            ddl.DataSource = listaDDL;
            ddl.DataTextField = CampoDescripcion;
            ddl.DataValueField = campoValor;
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem(WebConfigurationManager.AppSettings["ItemNinguno"].ToString(), "-1"));
        }
        /// <summary>
        /// Función que muestra una alerta personalizada asociado a una página específica
        /// </summary>
        /// <param name="currentPage">Control Page de la página donde se desea mostrar la alerta</param>
        /// <param name="message">contenido del mensaje a mostrar</param>
        public static void MostrarAlerta(Page currentPage, string message)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("');");
            currentPage.ClientScript.RegisterStartupScript(typeof(Herramienta), "showalert", sb.ToString(), true);
        }

        /// <summary>
        /// Función que muestra una alerta personalizada
        /// </summary>
        /// <param name="message">contenido del mensaje a mostrar</param>
        public static void MostrarAlerta(string message)
        {
            Page currentPage = HttpContext.Current.Handler as Page;
            if (currentPage != null)
                MostrarAlerta(currentPage, message);
        }

        /// <summary>
        /// Función que da formato a un mensaje de confirmación de eliminación
        /// </summary>
        /// <returns>cadena con el formato del mensaje</returns>
        public static string MensajeEliminar()
        {
            string mensaje;
            string cadena;
            mensaje = WebConfigurationManager.AppSettings["MensajeEliminarRegistro"].ToString();
            cadena = string.Format("return confirm('{0}');", mensaje);
            return cadena;
        }

        public static string CadenaScriptShowAlertRedirect(string message, string urlRedirect)
        {
            Page currentPage = HttpContext.Current.Handler as Page;
            if (currentPage != null)
            { 
            return   CadenaScriptShowAlertRedirect(currentPage, message, urlRedirect);
            }
            return string.Empty;
        }
        public static string CadenaScriptShowAlertRedirect(Page currentPage, string message, string url)
        {

            StringBuilder sb = new StringBuilder();
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("');");
            if (url != null)
            {
                sb.Append(string.Format("self.location=\"{0}\";", url.ToLower().Replace(currentPage.AppRelativeTemplateSourceDirectory.ToLower(), "")));
            }
            //currentPage.ClientScript.RegisterStartupScript(typeof(MessageBox), "showalert", sb.ToString(), true);
            return sb.ToString();
        }


    //     Function Encripta(ByVal Pass As String, Optional ByVal Clave As String = StrClave) As String
    //    Dim i As Integer, Pass2 As String
    //    Dim CAR As String, Codigo As String
    //    ' Clave = "%ü&/@#$A"
    //    Pass2 = ""
    //    For i = 1 To Len(Pass)
    //        CAR = Mid(Pass, i, 1)
    //        Codigo = Mid(Clave, ((i - 1) Mod Len(Clave)) + 1, 1)
    //        Pass2 = Pass2 & Right("0" & Hex(Asc(Codigo) Xor Asc(CAR)), 2)
    //    Next i
    //    Encripta = Pass2
    //End Function
        public static string GeneraClave(string NombreUsuario)
        {
 
           int i=1;
         
            string Pass2=string.Empty;
            string CAR;
            String Codigo;
            string cadena=string.Empty;
          
            for (i = 1; i < NombreUsuario.Length; i++)
			{
			 CAR = NombreUsuario.Substring(i-1,1);
              
			}

        
        

            cadena = Pass2;
            return cadena;
        }
        #endregion

    }
}
