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
    public class BLDetSolAplicaPuesto
    {

        public BEDetSolAplicaciPuestoList ListarDetSolAplicaPuesto(int idDetalleSolicitud)
        {
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();
            return daDetSolAplicaPuesto.ListarDetSolAplicaPuesto(idDetalleSolicitud);
        }

        public bool InsertaDetSolAplicaPuesto(BEDetSolAplicaciPuesto beDetSolAplicaPuesto)
        {
            bool respuesta = false;
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();

            respuesta = daDetSolAplicaPuesto.InsertaDetSolAplicaPuesto(beDetSolAplicaPuesto);


            return respuesta;
        }

        public bool ActualizarDetSolAplicaPuesto(BEDetSolAplicaciPuesto beDetSolAplicaPuesto)
        {
            throw new System.NotImplementedException();
        }

        public bool EliminarDetSolAplicaPuesto(int IdDetSolApliPuesto)
        {
            bool respuesta = false;
            DADetSolAplicaPuesto daDetSolAplicaPuesto = new DADetSolAplicaPuesto();

            respuesta = daDetSolAplicaPuesto.EliminarDetSolAplicaPuesto(IdDetSolApliPuesto);

            return respuesta;
        }

        public BEDetSolAplicaciPuesto ObtenerDetSolAplicaPuesto(int IdDetSolApliPuesto)
        {
            throw new System.NotImplementedException();
        }
    }
}
