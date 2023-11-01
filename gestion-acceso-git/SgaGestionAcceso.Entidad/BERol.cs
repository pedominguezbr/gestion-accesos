using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad

{
    public class BERol
    {
        public BEUsuarioSistema Usuario { get; set; }
        public BEPermisoUsuario BePermisoUsuario { get; set; }
        public BEAplicacion Aplicacion { get; set; }
        public int IdRol { get; set; }
        public string NombreRol { get; set; }
        public string DescripcionRol { get; set; }
        public bool EstadoRol { get; set; }
        public bool TieneAccesoRol { get; set; }
        public int IdPermisoUsuario { get; set; }
        public BERol(){
            IdRol = 0;
        }
  }

    public class BERolList : List<BERol>
    {
    }
}
