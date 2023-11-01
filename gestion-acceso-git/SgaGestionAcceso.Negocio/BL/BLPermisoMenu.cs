using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;
using System.Transactions;

namespace SgaGestionAcceso.Negocio
{
    public class BLPermisoMenu
    {
        public BEPermisoMenu ObtenerPermisoMenu(int idPermisoMenu)
        {
            DAPermisoMenu daPermisoMenu = new DAPermisoMenu();
            return daPermisoMenu.ObtenerPermisoMenu(idPermisoMenu);
        }

        public bool InsertarPermisoMenu(BEPermisoMenu bePermisoMenu, bool permisosHijos)
        {
            DAPermisoMenu daPermisoMenu = new DAPermisoMenu();
             bool respuesta = false;

           
            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daPermisoMenu.InsertarPermisoMenu(bePermisoMenu);

                if (respuesta && permisosHijos)
                {
                    BEMenuList listaHijos = new DAMenu().ListarObjetosHijos(bePermisoMenu.beMenu.IdMenu);
                    foreach (BEMenu objeto in listaHijos)
                    {
                        bePermisoMenu.beMenu.IdMenu = objeto.IdMenu;
                        daPermisoMenu.InsertarPermisoMenuSinValidacion(bePermisoMenu);
                    }
                }

                transaccion.Complete();
            }
            return respuesta;
        }

        public bool ActualizarPermisoMenu(BEPermisoMenu bePermisoMenu)
        {
            DAPermisoMenu daPermisoMenu = new DAPermisoMenu();
            return daPermisoMenu.ActualizarPermisoMenu(bePermisoMenu);
        }

        public bool EliminarPermisoMenu(int idPermisoMenu)
        {
            DAPermisoMenu daPermisoMenu = new DAPermisoMenu();
            return daPermisoMenu.EliminarPermisoMenu(idPermisoMenu);
        }

        public BEPermisoMenuList ListarPermisoMenu(int idRol)
        {
            DAPermisoMenu daPermisoMenu = new DAPermisoMenu();
            return daPermisoMenu.ListarPermisoMenu(idRol);
        }
    }
}
