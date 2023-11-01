using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLParametroGeneracionCuenta
    {

        public string ProcesarCuenta(int idparametrocuenta,BEPersona bePersona)
        {

            if (idparametrocuenta == 1)
            {
                return ProcesarCuenta01();
            }

            if (idparametrocuenta == 2)
            {
                return ProcesarCuenta02(bePersona);
            }

            return string.Empty;          

        
        }
        public string ProcesarCuenta01()
        {
            string CodigoGenerado;
            DAParametroGeneracionCuenta daParametroGeneracionCuenta = new DAParametroGeneracionCuenta();
            BEParametroGeneracionCuenta beParametroGeneracionCuenta=null;
            beParametroGeneracionCuenta = daParametroGeneracionCuenta.ObtenerParametroGeneracionC(1);

            CodigoGenerado = string.Format("{0}{1}", beParametroGeneracionCuenta.Prefijo, beParametroGeneracionCuenta.Correlativo.ToString().PadLeft(beParametroGeneracionCuenta.LongiturCuenta,'0'));
            daParametroGeneracionCuenta.ActualizarCorrelativo(beParametroGeneracionCuenta);

            return CodigoGenerado;
        }

        public string ProcesarCuenta02(BEPersona bePersona)
        {
            string CodigoGenerado;
            DAParametroGeneracionCuenta daParametroGeneracionCuenta = new DAParametroGeneracionCuenta();
            BEParametroGeneracionCuenta beParametroGeneracionCuenta = null;
            beParametroGeneracionCuenta = daParametroGeneracionCuenta.ObtenerParametroGeneracionC(2);

            CodigoGenerado = string.Format("{0}{1}{2}", bePersona.Nombres.ToUpper().Substring(0,1), bePersona.ApellidoPaterno.ToUpper(), bePersona.ApellidoMaterno.ToUpper().Substring(0,1));
           
            return CodigoGenerado;
        }
        
    }
}
