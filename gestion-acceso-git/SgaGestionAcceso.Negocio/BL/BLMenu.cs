using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
   public class BLMenu
    {
       public BEMenuList ListarPermisoMenuOpciones(int idUsuario)
       {
           DAMenu daMenu = new DAMenu();
           return daMenu.ListarPermisoMenuOpciones(idUsuario);
       }

       public BEMenu ObtenerMenu(int idMenu)
       {
           DAMenu daMenu = new DAMenu();
           return daMenu.ObtenerMenu(idMenu);
       }
       public bool InsertarMenu(BEMenu beMenu)
       {
           DAMenu daMenu = new DAMenu();
           return daMenu.InsertarMenu(beMenu);
       }

       public bool ActualizarMenu(BEMenu beMenu)
       {
           DAMenu daMenu = new DAMenu();
           return daMenu.ActualizarMenu(beMenu);
       }

       public bool EliminarMenu(int idMenu, ref int codigoError)
       {
           DAMenu daMenu = new DAMenu();
           return daMenu.EliminarMenu(idMenu, ref codigoError);
       }

       public BEMenuList ListarMenuPadre()
       {
           DAMenu daMenu = new DAMenu();
           return daMenu.ListarMenuPadre();

       }

       public BEMenuList ListarObjetoPorAplicacionEtiquetaObjeto(string etiquetaMenu)
       { 
        DAMenu daMenu = new DAMenu();
        return daMenu.ListarObjetoPorAplicacionEtiquetaObjeto(etiquetaMenu);
       }

       public BEMenuList ListarObjetoSinPermisosAsignados(int idRol)
       {
           DAMenu daMenu = new DAMenu();
           return daMenu.ListarObjetoSinPermisosAsignados(idRol);
   
       }
    }
}
