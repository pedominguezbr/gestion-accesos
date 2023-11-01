using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLReporte
    {
        public IList Reporte(int? pIdEstado, int? pIdSolicitante, int? pIdAutorizante, int? pIdEspecialista, int? pIdAgencia, DateTime? pFechaIniSol,
            DateTime? pFechaFinSol, DateTime? pFechaIniCie, DateTime? pFechaFinCie) {

                DAReporte Reporte = new DAReporte();
                return Reporte.Reporte(pIdEstado, pIdSolicitante, pIdAutorizante, pIdEspecialista, pIdAgencia, pFechaIniSol, pFechaFinSol, pFechaIniCie, pFechaFinCie);
        }
    }
}
