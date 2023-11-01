using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
   public class BLUsuario
    {
       public BEUsuarioSistema ValidarAcceso(string codUsuario)
       {
           DAUsuario daUsuario = new DAUsuario();
           return daUsuario.ValidarAcceso(codUsuario);
       }

       public BEUsuarioSistemaList BuscarUsuario(BEUsuarioSistema beUsuarioSistema)
       {
           DAUsuario daUsuario = new DAUsuario();
           return daUsuario.BuscarUsuario(beUsuarioSistema);
       }
       public BEUsuarioSistema ObtenerUsuario(int idUsuario, int  idPersona)
       {
           DAUsuario daUsuario = new DAUsuario();
           return daUsuario.ObtenerUsuario(idUsuario, idPersona);
       }
       public bool EliminarUsuario(int idUsuario,ref int codigoMensaje)
       {
           DAUsuario daUsuario = new DAUsuario();
           return daUsuario.EliminarUsuario(idUsuario,ref codigoMensaje);
       }

       public bool InsertarUsuario(BEUsuarioSistema beUsuarioSistema)
       {
           DAUsuario daUsuario = new DAUsuario();
           return daUsuario.InsertarUsuario(beUsuarioSistema);
       }

       public bool ActualizarUsuario(BEUsuarioSistema beUsuarioSistema)
       {
           DAUsuario daUsuario = new DAUsuario();
           return daUsuario.ActualizarUsuario(beUsuarioSistema);
       }
    }
}
