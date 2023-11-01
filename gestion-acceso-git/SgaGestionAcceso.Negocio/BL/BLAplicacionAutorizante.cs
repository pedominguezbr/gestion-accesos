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
    public class BLAplicacionAutorizante
    {
        public bool InsertarAplicacionAutorizante(BEAplicacionAutorizante beAplicacionAutorizante)
        {
            bool respuesta = false;
            DAAplicacionAutorizante daAplicacionAutorizante = new DAAplicacionAutorizante();
            DAAplicacionAutorizanteHistorico daAplicacionAutorizanteHistorico = new DAAplicacionAutorizanteHistorico();
            BEAplicacionAutorizanteHistorico beAplicacionAutorizanteHistorico;
            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daAplicacionAutorizante.InsertarAplicacionAutorizante(beAplicacionAutorizante);

                //Generar historico de aplicacion autorizante para regsitro
                beAplicacionAutorizanteHistorico = new BEAplicacionAutorizanteHistorico();
                beAplicacionAutorizanteHistorico.Aplicacion = new BEAplicacion();
                beAplicacionAutorizanteHistorico.Aplicacion.IdAplicacion = beAplicacionAutorizante.Aplicacion.IdAplicacion;
                beAplicacionAutorizanteHistorico.Autorizante = new BEAutorizante();
                beAplicacionAutorizanteHistorico.Autorizante.IdAutorizante = beAplicacionAutorizante.Autorizante.IdAutorizante;
                beAplicacionAutorizanteHistorico.FechaModificacion = beAplicacionAutorizante.FechaCreacion;
                beAplicacionAutorizanteHistorico.UsuarioModificacion = beAplicacionAutorizante.UsuarioCreacion;
                beAplicacionAutorizanteHistorico.Accion = Constantes.ACCION_REGISTRAR_PERMISO_APLAU;
                beAplicacionAutorizanteHistorico.Comentario = beAplicacionAutorizante.Comentario;
                beAplicacionAutorizanteHistorico.RutaEvidencia = beAplicacionAutorizante.RutaEvidencia;

                respuesta = daAplicacionAutorizanteHistorico.InsertarAplicacionAutorizanteHistorico(beAplicacionAutorizanteHistorico);

                transaccion.Complete();
            }
            return respuesta;

        }

        public bool ActualizarAplicacionAutorizante(BEAplicacionAutorizante beAplicacionAutorizante)
        {
            DAAplicacionAutorizante daAplicacionAutorizante = new DAAplicacionAutorizante();
            return daAplicacionAutorizante.ActualizarAplicacionAutorizante(beAplicacionAutorizante);
        }

        public bool EliminarAplicacionAutorizante(int idAplicacionAutorizante, BEAplicacionAutorizante beAplicacionAutorizante)
        {
            bool respuesta = false;
            DAAplicacionAutorizante daAplicacionAutorizante = new DAAplicacionAutorizante();
            DAAplicacionAutorizanteHistorico daAplicacionAutorizanteHistorico = new DAAplicacionAutorizanteHistorico();
            BEAplicacionAutorizanteHistorico beAplicacionAutorizanteHistorico;

            using (TransactionScope transaccion = new TransactionScope())
            {
                respuesta = daAplicacionAutorizante.EliminarAplicacionAutorizante(idAplicacionAutorizante);

                //Generar historico de aplicacion autorizante para regsitro
                beAplicacionAutorizanteHistorico = new BEAplicacionAutorizanteHistorico();
                beAplicacionAutorizanteHistorico.Aplicacion = new BEAplicacion();
                beAplicacionAutorizanteHistorico.Aplicacion.IdAplicacion = beAplicacionAutorizante.Aplicacion.IdAplicacion;
                beAplicacionAutorizanteHistorico.Autorizante = new BEAutorizante();
                beAplicacionAutorizanteHistorico.Autorizante.IdAutorizante = beAplicacionAutorizante.Autorizante.IdAutorizante;
                beAplicacionAutorizanteHistorico.FechaModificacion = beAplicacionAutorizante.FechaCreacion;
                beAplicacionAutorizanteHistorico.UsuarioModificacion = beAplicacionAutorizante.UsuarioCreacion;
                beAplicacionAutorizanteHistorico.Accion = Constantes.ACCION_ELIMINAR_PERMISO_APLAU;
                beAplicacionAutorizanteHistorico.Comentario = beAplicacionAutorizante.Comentario;
                beAplicacionAutorizanteHistorico.RutaEvidencia = beAplicacionAutorizante.RutaEvidencia;

                respuesta = daAplicacionAutorizanteHistorico.InsertarAplicacionAutorizanteHistorico(beAplicacionAutorizanteHistorico);

                transaccion.Complete();
            }
            return respuesta;
        }

        public BEAplicacionAutorizante ObtenerAplicacionAutorizante(int idAplicacionAutorizante)
        {
            DAAplicacionAutorizante daAplicacionAutorizante = new DAAplicacionAutorizante();
            return daAplicacionAutorizante.ObtenerAplicacionAutorizante(idAplicacionAutorizante);
        }

        public BEAplicacionAutorizanteList BuscarAplicacionAutorizante(int idAplicacion, int idAutorizante)
        {
            DAAplicacionAutorizante daAplicacionAutorizante = new DAAplicacionAutorizante();
            return daAplicacionAutorizante.BuscarAplicacionAutorizante(idAplicacion, idAutorizante);
        }
    }
}
