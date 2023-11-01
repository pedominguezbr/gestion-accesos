using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.AccesoDatos
{
    public class Entidades
    {

        public class AuxXmls { 
            public string DescAgencia{get; set;}
            public string DescSucursal { get; set; }
            public string DescEquipo { get; set; }
            public DateTime FechaEscaneo { get; set; }
            public string Usuario { get; set; }
            public string Arquitectura { get; set; }
            public string SistemaOp { get; set; }
            public string ServicePack { get; set; }
            public string Procesador { get; set; }
            public string Memoria { get; set; }
            public string id { get; set; }
        }
        public class AuxXmlsList : List<AuxXmls> { }

    }
}
