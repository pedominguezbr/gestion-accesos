using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLSucursal
    {
        public BESucursalList ListarSucursal(int idAgencia)
        {
            DASucursal daSucursal = new DASucursal();
            return daSucursal.ListarSucursal(idAgencia);
        }

        public bool InsertarSucursal(BESucursal beSucursal)
        {
            DASucursal daSucursal = new DASucursal();
            return daSucursal.InsertarSucursal(beSucursal);
        }

        public bool ActualizarSucursal(BESucursal beSucursal)
        {
            DASucursal daSucursal = new DASucursal();
            return daSucursal.ActualizarSucursal(beSucursal);
        }

        public bool EliminarSucursal(int idSucursal)
        {
            DASucursal daSucursal = new DASucursal();
            return daSucursal.EliminarSucursal(idSucursal);
        }

        public BESucursal ObtenerSucursal(int idSucursal)
        {
            DASucursal daSucursal = new DASucursal();
            return daSucursal.ObtenerSucursal(idSucursal);
        }
    }
}
