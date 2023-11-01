using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLAplicacionAutorizanteHistorico
    {
        public BEAplicacionAutorizanteHistorico ObtenerAplicacionAutorizanteHistorico(int idAplicacion)
        {
            DAAplicacionAutorizanteHistorico daAplicacionAutorizanteHistorico = new DAAplicacionAutorizanteHistorico();
            return daAplicacionAutorizanteHistorico.ObtenerAplicacionAutorizanteHistorico(idAplicacion);
        }

        public BEAplicacionAutorizanteHistoricoList BuscarAplicacionAutorizanteHistorico(int idAplicacion, int idAutorizante,DateTime fechaIni, DateTime fechaFin)
        {
            DAAplicacionAutorizanteHistorico daAplicacionAutorizanteHistorico = new DAAplicacionAutorizanteHistorico();
            return daAplicacionAutorizanteHistorico.BuscarAplicacionAutorizanteHistorico(idAplicacion, idAutorizante, fechaIni, fechaFin);
        }
    }
}
