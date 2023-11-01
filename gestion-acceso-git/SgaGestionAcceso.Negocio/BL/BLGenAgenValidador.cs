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
    public class BLGenAgenValidador
    {
        public bool InsertarGenAgenValidador(BEGenAgenValidador beGenAgenValidador)
        {
            DAGenAgenValidador daGenAgenValidador = new DAGenAgenValidador();
            DADetalleGenAgenValidador daDetalleGenAgenValidador = new DADetalleGenAgenValidador();

            bool respuesta = false;
            int indicedet=0;

            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daGenAgenValidador.InsertarGenAgenValidador(beGenAgenValidador);

                //Insertar Detalle de Aprovisionamiento
                foreach (BEDetalleGenAgenValidador beDetalleGenAgenValidador in beGenAgenValidador.DetalleGenAgenVali)
                {
                    indicedet += 1;
                    if (beDetalleGenAgenValidador.IdDetAgenValidador == Constantes.VALOR_CERO)
                    {
                        //Asignar el numero
                        beDetalleGenAgenValidador.IdGenAgenteValidador = beGenAgenValidador.IdGenAgenteValidador;
                        beDetalleGenAgenValidador.CodGenerado = string.Concat(Constantes.ID_GEN_VALIDADOR, indicedet.ToString(),beGenAgenValidador.IdGenAgenteValidador.ToString().PadLeft(10, '0'));
                        //Insertar Detalle 
                        respuesta = daDetalleGenAgenValidador.InsertarDetalle(beDetalleGenAgenValidador);
                    }
                }

                transaccion.Complete();
            }
            return respuesta;
        }

        public BEGenAgenValidador ObtenerGenAgenValidador(int idGenAgenteValidador, int idSolicitudAcceso)
        {
            DAGenAgenValidador daGenAgenValidador = new DAGenAgenValidador();
            DADetalleGenAgenValidador daDetalleGenAgenValidador = new DADetalleGenAgenValidador();
            BEGenAgenValidador beGenAgenValidador = null;

            beGenAgenValidador = daGenAgenValidador.ObtenerGenAgenValidador(idGenAgenteValidador, idSolicitudAcceso);

            if (beGenAgenValidador != null)
            {
                beGenAgenValidador.DetalleGenAgenVali = daDetalleGenAgenValidador.ListarDetalle(beGenAgenValidador.IdGenAgenteValidador);
            }
            return beGenAgenValidador;
        }
    }
}
