using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEPermisoUsuario 
    {
        public BEUsuarioSistema beUsuario { get; set; }
        public BERol beRol { get; set; }
        public int IdPermisoUsuario { get; set; }
        public int IdUsuarioCreacion { get; set; }
        public DateTime FechaCreacion { get; set; }
        public bool Estado { get; set; }  

    }

    public class BEPermisoUsuarioList : List<BEPermisoUsuario>
    {
    }
}