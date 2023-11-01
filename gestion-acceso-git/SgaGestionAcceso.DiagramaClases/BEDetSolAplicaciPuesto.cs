﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEDetSolAplicaciPuesto
    {
        public BEAplicacion Aplicacion { get; set; }

        public BEPuesto Puesto { get; set; }

        public DateTime FechaRegistro { get; set; }

        public Boolean Estado { get; set; }

        public int IdDetSolApliPuesto { get; set; }
    }

    public class BEDetSolAplicaciPuestoList : List<BEDetSolAplicaciPuesto>
    {
    }
}
