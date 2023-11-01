using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Collections;

namespace SgaGestionAcceso.AccesoDatos
{
    public class DAReporte
    {
        SGA_GestionAccesoEntities DbContext = new SGA_GestionAccesoEntities();
        public IList Reporte(int? pIdEstado, int? pIdSolicitante, int? pIdAutorizante, int? pIdEspecialista, int? pIdAgencia, DateTime? pFechaIniSol,
            DateTime? pFechaFinSol, DateTime? pFechaIniCie, DateTime? pFechaFinCie)
        {
                IList query = (from c in DbContext.ListarSolicitudReporte(pIdEstado, pIdSolicitante, pIdAutorizante, pIdEspecialista, pIdAgencia,
                               pFechaIniSol, pFechaFinSol, pFechaIniCie, pFechaFinCie)
                               select c).ToList();
                if (query.Count > 0)
                {
                    return query;
                }
                else {
                    return null;
                }
        
        }
    }
}
