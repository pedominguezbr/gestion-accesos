using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;
using System.Collections;

namespace SgaGestionAcceso.Negocio
{
    public class BLPersona
    {
        public BEPersona ObtenerPersona(string dni, int idPersona)
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.ObtenerPersona(dni, idPersona);
        }

        public BEPersonaList ListarPersonaDatosCompletos()
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.ListarPersonaDatosCompletos();
        }

        public IList ListarPersona()
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.ListarPersona();
        }
        public IList ListarAutorizante()
        {
            DAPersona dapersona = new DAPersona();
            return dapersona.ListarAutorizante();
        }

        public bool RegistrarCierre(string idDetEscaneoValidacion, int idEspecialista)
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.RegistrarCierre(idDetEscaneoValidacion, idEspecialista);
        }

        public bool InsertarPersona(BEPersona bePersona)
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.InsertarPersona(bePersona);
        }

        public bool ActualizarPersona(BEPersona bePersona)
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.ActualizarPersona(bePersona);
        }

        public bool EliminarPersona(int idPersona)
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.EliminarPersona(idPersona);
        }

        public BEPersonaList PersonaBuscar(BEPersona bePersonaIn)
        {
            DAPersona daPersona = new DAPersona();
            return daPersona.PersonaBuscar(bePersonaIn);
        }
    }
}
