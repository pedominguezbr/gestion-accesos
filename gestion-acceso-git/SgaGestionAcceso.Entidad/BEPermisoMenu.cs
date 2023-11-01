using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{

    public class BEPermisoMenu
    {

        public BEMenu beMenu { get; set; }
        public BERol beRol { get; set; }
        public int IdPermisoMenu { get; set; }
        public bool EstadoPermisoObjeto { get; set; }
        public DateTime FechaCreacion { get; set; }
    }

    public class BEPermisoMenuList : List<BEPermisoMenu>
    {
    }
}