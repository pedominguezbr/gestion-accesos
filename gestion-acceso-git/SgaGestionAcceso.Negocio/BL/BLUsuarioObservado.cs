﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLUsuarioObservado
    {
        public BEUsuarioObservadoList BuscarUsuarioObservados(int idAplicacion, string DNI)
        {
            DAUsuarioObservado daUsuarioObservado = new DAUsuarioObservado();
            return daUsuarioObservado.BuscarUsuarioObservados(idAplicacion,DNI);
        }
    }
}
