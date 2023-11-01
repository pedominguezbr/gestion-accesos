using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;
using System.Transactions;

namespace SgaGestionAcceso.Negocio
{
    public class BLDetalleSolicitud
    {
        public BEDetalleSolicitudList ListarDetalleSolicitud(int idSolicitud)
        {
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            return daDetalleSolicitud.ListarDetalleSolicitud(idSolicitud);
        }

        public bool InsertarDetalleSolicitud(BEDetalleSolicitud beDetalleSolicitud)
        {
            bool respuesta = false;
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();
            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daDetalleSolicitud.InsertarDetalleSolicitud(beDetalleSolicitud);
                //Insertar Todos los Detalles de Aplicacion Puesto nuevos
                if (respuesta && beDetalleSolicitud.DetSoliAplicacionPuesto != null)
                {
                    foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetalleSolicitud.DetSoliAplicacionPuesto)
                    {
                        if (beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso != 0)
                        {
                            respuesta = daDetSolAplicaPuesto.InsertaDetSolAplicaPuesto(beDetSolAplicaciPuesto);
                        }
                    }
                }

                transaccion.Complete();
            }
            return respuesta;
        }

        public bool ActualizarDetalleSolicitud(BEDetalleSolicitud beDetalleSolicitud)
        {
            bool respuesta = false;
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();
            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daDetalleSolicitud.ActualizarDetalleSolicitud(beDetalleSolicitud);
                //Insertar Todos los Detalles de Aplicacion Puesto nuevos
                if (respuesta && beDetalleSolicitud.DetSoliAplicacionPuesto != null)
                {
                    foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetalleSolicitud.DetSoliAplicacionPuesto)
                    {
                        if (beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso == Constantes.VALOR_CERO)
                        {
                            respuesta = daDetSolAplicaPuesto.InsertaDetSolAplicaPuesto(beDetSolAplicaciPuesto);
                        }
                    }
                }

                transaccion.Complete();
            }
            return respuesta;
        }

        public bool EliminarDetalleSolicitud(int idDetalleSolicitud)
        {
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            return daDetalleSolicitud.EliminarDetalleSolicitud(idDetalleSolicitud);
        }

        public BEDetalleSolicitud ObtenerDetalleSolicitud(int idDetalleSolicitud)
        {
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();
            BEDetalleSolicitud beDetalleSolicitud = new BEDetalleSolicitud();
            beDetalleSolicitud = daDetalleSolicitud.ObtenerDetalleSolicitud(idDetalleSolicitud);
            beDetalleSolicitud.DetSoliAplicacionPuesto = daDetSolAplicaPuesto.ListarDetSolAplicaPuesto(idDetalleSolicitud);

            return beDetalleSolicitud;
        }

        public bool ActualizarDetalleSolicitudEstadoVal(BEDetalleSolicitud beDetalleSolicitud)
        {
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            return daDetalleSolicitud.ActualizarDetalleSolicitudEstadoVal(beDetalleSolicitud);
        }
    }
}
