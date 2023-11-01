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
    public class BLSolicitudAcceso
    {

        public bool InsertarSolicitud(BESolicitudAcceso beSolicitudAcceso)
        {
            bool respuesta = false;
            DASolicitudAcceso daSolicitudAcceso = new DASolicitudAcceso();
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();
            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daSolicitudAcceso.InsertarSolicitud(beSolicitudAcceso);

                //crear el numero de Solicitud
                beSolicitudAcceso.NumeroSolicitud = string.Format("{0}{1}", Constantes.NEMOTECNICO_NUM_SOLICITUD, beSolicitudAcceso.IdSolicitud.ToString().PadLeft(7, '0'));

                //Actualizar el numero de Solicitud Generado
                respuesta = daSolicitudAcceso.ActualizarNumeroSolicitudAcceso(beSolicitudAcceso);

                //Insertar Detalle de Solicitud
                foreach (BEDetalleSolicitud beDetalleSolicitud in beSolicitudAcceso.DetalleSolicitud)
                {
                    if (beDetalleSolicitud.IdDetalleSolicitud == Constantes.VALOR_CERO)
                    {
                        //Asignar el numero de Solicitud Recien generado
                        beDetalleSolicitud.IdSolicitudAcceso = beSolicitudAcceso.IdSolicitud;

                        respuesta = daDetalleSolicitud.InsertarDetalleSolicitud(beDetalleSolicitud);
                        //Insertar Detalle Aplicacion Puesto
                        foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetalleSolicitud.DetSoliAplicacionPuesto)
                        {
                            if (beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso == Constantes.VALOR_CERO)
                            {
                                //Asignar el Detalle de Solicitud Recien Generadl
                                beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso = beDetalleSolicitud.IdDetalleSolicitud;

                                respuesta = daDetSolAplicaPuesto.InsertaDetSolAplicaPuesto(beDetSolAplicaciPuesto);
                            }
                        }
                    }
                }

                transaccion.Complete();
            }
            return respuesta;
        }

        public bool ActualizarSolicitudAcceso(BESolicitudAcceso beSolicitudAcceso)
        {
            bool respuesta = false;
            DASolicitudAcceso daSolicitudAcceso = new DASolicitudAcceso();
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();

            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daSolicitudAcceso.ActualizarSolicitudAcceso(beSolicitudAcceso);
                //Insertar Detalle de Solicitud
                foreach (BEDetalleSolicitud beDetalleSolicitud in beSolicitudAcceso.DetalleSolicitud)
                {
                    if (beDetalleSolicitud.IdDetalleSolicitud == Constantes.VALOR_CERO)
                    {
                        //Asignar el numero de Solicitud Recien generado
                        beDetalleSolicitud.IdSolicitudAcceso = beSolicitudAcceso.IdSolicitud;

                        respuesta = daDetalleSolicitud.InsertarDetalleSolicitud(beDetalleSolicitud);
                        //Insertar Detalle Aplicacion Puesto
                        foreach (BEDetSolAplicaciPuesto beDetSolAplicaciPuesto in beDetalleSolicitud.DetSoliAplicacionPuesto)
                        {
                            if (beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso == Constantes.VALOR_CERO)
                            {
                                //Asignar el Detalle de Solicitud Recien Generadl
                                beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso = beDetalleSolicitud.IdDetalleSolicitud;

                                respuesta = daDetSolAplicaPuesto.InsertaDetSolAplicaPuesto(beDetSolAplicaciPuesto);
                            }
                        }
                    }
                }
                transaccion.Complete();
            }
            return respuesta;
        }

        public bool EliminarSolicitudAcceso(int idSolicitud)
        {
            bool respuesta = false;
            DASolicitudAcceso daSolicitudAcceso = new DASolicitudAcceso();
            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daSolicitudAcceso.EliminarSolicitudAcceso(idSolicitud);

                transaccion.Complete();
            }
            return respuesta;
        }

        public BESolicitudAcceso ObtenerSolicitud(int idSolicitud)
        {

            DASolicitudAcceso daSolicitudAcceso = new DASolicitudAcceso();
            DADetalleSolicitud daDetalleSolicitud = new DADetalleSolicitud();
            BESolicitudAcceso beSolicitudAcceso = null;
            BEDetalleSolicitudList beDetalleSolicitudList = null;
            beSolicitudAcceso = daSolicitudAcceso.ObtenerSolicitud(idSolicitud);
            beDetalleSolicitudList = daDetalleSolicitud.ListarDetalleSolicitud(idSolicitud);

            if (beDetalleSolicitudList != null && beDetalleSolicitudList.Count > 0)
            {
                beSolicitudAcceso.DetalleSolicitud = beDetalleSolicitudList;
            }

            return beSolicitudAcceso;
        }

        public BESolicitudAccesoList BuscarSolicitud(BEBusquedaSolicitud beBusquedaSolicitud)
        {
            DASolicitudAcceso daSolicitudAcceso = new DASolicitudAcceso();
            return daSolicitudAcceso.BuscarSolicitud(beBusquedaSolicitud);
        }

        public bool ActEstadoSolAccesoyDetalleValOk(BESolicitudAcceso beSolicitudAcceso)
        {
            DASolicitudAcceso daSolicitudAcceso = new DASolicitudAcceso();
            return daSolicitudAcceso.ActEstadoSolAccesoyDetalleValOk(beSolicitudAcceso);
        }

        public bool ActEstadoSolAccesoyDetalleValNOk(BESolicitudAcceso beSolicitudAcceso)
        {
            DASolicitudAcceso daSolicitudAcceso = new DASolicitudAcceso();
            return daSolicitudAcceso.ActEstadoSolAccesoyDetalleValNOk(beSolicitudAcceso);
        }
  
    }
}
