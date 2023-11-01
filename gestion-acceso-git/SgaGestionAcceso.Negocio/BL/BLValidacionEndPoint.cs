using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SgaGestionAcceso.AccesoDatos;
using System.Data;



namespace SgaGestionAcceso.Negocio.BL
{
    public class BLValidacionEndPoint
    {
        SGA_GestionAccesoEntities DbContext = new SGA_GestionAccesoEntities();

        public int traeEstado(int idSolicitud) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            return Logic.traeEstado(idSolicitud);
        }

        public void ActualizarEstadoAprovisionado(int pIdSolicitud) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            Logic.ActualizarEstadoAprovisionado(pIdSolicitud);
        }

        public int TraeCodEstado(string valor) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            return Logic.TraeCodEstado(valor);
        }
        
        public bool VerificarPermisoEdicion(string idDetEscaneoValidacion) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            return Logic.VerificarPermisoEdicion(idDetEscaneoValidacion);
        }

        public void ActualizarXMLS(string pPcId) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            Logic.ActualizarXMLS(pPcId);
        }

        public string validarSWMalicioso(string pPcId) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            return Logic.validarSWMalicioso(pPcId);
        }

        public void InsertarResultadoValidacion(string pPcId, string pTipo, string pDescripcion) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            Logic.InsertarResultadoValidacion(pPcId, pTipo, pDescripcion);
        }

        public IList<apps> ListarAplicaciones(string pPcId) {
            DAValidacionEndPoint Logic = new DAValidacionEndPoint();
            return Logic.ListarAplicaciones(pPcId);
        }

        public Entidades.AuxXmlsList ListarCabXlms(string idAgencia) {
            try {
                DAValidacionEndPoint Logic = new DAValidacionEndPoint();
                return Logic.ListarCabXMLS(idAgencia);
            }
            catch {
                return null;
            }
        }
    }
}
