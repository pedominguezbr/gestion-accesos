using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{

    public class BEMenu 
    {
       
        public int IdMenu { get; set; }
        public string NombreFisicoMenu { get; set; }
        public string DescripcionMenu { get; set; }
        public string EtiquetaMenu { get; set; }
        public string UrlMenu { get; set; }
        public int? IdMenuPadre { get; set; }
        public bool EstadoMenu { get; set; } 
   }

    public class BEMenuList : List<BEMenu>
    {
    }
}
