using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;
using System.Transactions;
using SgaGestionAcceso.Negocio.BL;

namespace SgaGestionAcceso.Negocio
{
    public class BLAprovisionamiento
    {
        public bool InsertarAprovisionamiento(BEAprovisionamiento beAprovisionamiento)
        {
            bool respuesta = false;
            DAAprovisionamiento daAprovisionamiento = new DAAprovisionamiento();
            DADetalleAprovisionamiento daDetalleAprovisionamiento = new DADetalleAprovisionamiento();

            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daAprovisionamiento.InsertarAprovisionamiento(beAprovisionamiento);

                //Insertar Detalle de Aprovisionamiento
                foreach (BEDetalleAprovisionamiento beDetalleAprovisionamiento in beAprovisionamiento.DetalleAprovisionamiento)
                {
                    if (beDetalleAprovisionamiento.IdDetAprovisionamiento == Constantes.VALOR_CERO)
                    {
                        //Asignar el numero de Aprovisionamiento
                        beDetalleAprovisionamiento.IdAprovisionamiento = beAprovisionamiento.IdAprovisionamiento;
                        //Insertar Detalle de Aprovisionamiento
                        respuesta = daDetalleAprovisionamiento.InsertarDetalleAprovisionamiento(beDetalleAprovisionamiento);
                    }
                }
                BLValidacionEndPoint BLValidacionEndPoint = new BLValidacionEndPoint();

                transaccion.Complete();
            }
            return respuesta;
        }

        public BEAprovisionamiento ObtenerAprovisionamiento(int idAprovisionamiento)
        {
            DAAprovisionamiento daAprovisionamiento = new DAAprovisionamiento();
            DADetalleAprovisionamiento daDetalleAprovisionamiento = new DADetalleAprovisionamiento();

            BEAprovisionamiento beAprovisionamiento;
            beAprovisionamiento = daAprovisionamiento.ObtenerAprovisionamiento(idAprovisionamiento);
            beAprovisionamiento.DetalleAprovisionamiento = daDetalleAprovisionamiento.ListarDetalleAprovisionamiento(idAprovisionamiento);

            return beAprovisionamiento;

        }
    }
}
