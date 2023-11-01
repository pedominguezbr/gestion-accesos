using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;

namespace SgaGestionAcceso.AccesoDatos
{
    public class DAValidacionEndPoint
    {

        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAValidacionEndPoint()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion
        SGA_GestionAccesoEntities DbContext = new SGA_GestionAccesoEntities();

        public int traeEstado(int idSolicitud) {
            try {
                var query = (from c in DbContext.SolicitudAcceso
                             where c.IdSolicitudAcceso == idSolicitud
                             select c).ToList();
                if (query.Count > 0)
                {
                    return query.First().IdEstado;
                }
                else {
                    return 0;
                }
            }
            catch(Exception Ex){
                return 0;
            }
        }

        public void ActualizarEstadoAprovisionado(int pIdSolicitud) {
            try {
                var query = (from c in DbContext.SolicitudAcceso
                             where c.IdSolicitudAcceso == pIdSolicitud
                             select c).ToList();

                if (query.Count > 0) {
                    query.First().IdEstado = 6;
                    DbContext.SaveChanges();
                }
            }
            catch (Exception Ex) {
                Ex.Message.ToString();
            }
        }

        public int TraeCodEstado(string valor) {
            try {
                var query = (from c in DbContext.Estado
                             where c.NombreEstado.Contains(valor)
                             select c).ToList();
                if (query.Count > 0)
                {
                    return query.First().IdEstado;
                }
                else {
                    return 0;
                }
            }
            catch (Exception Ex) {
                return 0;
            }
        
        }

        public bool VerificarPermisoEdicion(string idDetEscaneoValidacion) {
            try {
                var query = (from c in DbContext.xmls
                             where c.idagente == idDetEscaneoValidacion
                             select c).ToList();
                if (query.Count > 0)
                {
                    return query.First().estado;
                }
                else {
                    return false;
                }
            }
            catch (Exception Ex){
                return false;
            }
        }

        public void ActualizarXMLS(string pPcId)
        {
            try { 
                Guid pID = new Guid(pPcId);
                var query = (from c in DbContext.xmls
                             where c.id == pID
                             select c).ToList();
                if (query.Count > 0) {
                    query.First().estado = true;
                    DbContext.SaveChanges();
                }
            }
            catch (Exception Ex) {
                Ex.Message.ToString();
            }
        }

        public string validarSWMalicioso(string pPcId) {
            string PasoValidacion = "";
            try {
                Guid PCID = new Guid(pPcId);
                var query = (from c in DbContext.SwMalicioso
                             select c).ToList();
                if (query.Count > 0) {
                    foreach (var i in query) {
                        var query2 = (from c in DbContext.apps
                                      where c.Name.Contains(i.NombrePrograma) && c.pcid == PCID
                                      select c).ToList();
                        if (query2.Count > 0) {
                            ResultadoValidacionEquipo ResultadoValidacion = new ResultadoValidacionEquipo();
                            ResultadoValidacion.pcid = pPcId;
                            ResultadoValidacion.Tipo = "Aplicación";
                            ResultadoValidacion.Descripcion = query2.First().Name;
                            DbContext.AddToResultadoValidacionEquipo(ResultadoValidacion);
                            PasoValidacion = "No";
                        }
                    }
                    DbContext.SaveChanges();
                }
                return PasoValidacion;
            }
            catch (Exception Ex) {
                Ex.Message.ToString();
                return "No";
            }
        }

        public void InsertarResultadoValidacion(string pPcId, string pTipo, string pDescripcion ) {
            try {
                ResultadoValidacionEquipo Resultado = new ResultadoValidacionEquipo();
                Resultado.pcid = pPcId;
                Resultado.Tipo = pTipo;
                Resultado.Descripcion = pDescripcion;
                DbContext.AddToResultadoValidacionEquipo(Resultado);
                DbContext.SaveChanges();
            }
            catch (Exception Ex){
                Ex.Message.ToString();
            }

        }

        public IList<apps> ListarAplicaciones(string pPcId) {
            try
            {
                Guid xxx = new Guid(pPcId);
                var query = (from c in DbContext.apps
                             where c.pcid == xxx
                             select c).ToList();

                if (query.Count > 0)
                {
                    return query;
                }
                else {
                    return null;
                }
            }
            catch(Exception Ex) {
                Ex.Message.ToString();
                return null;
            }
        }

        public Entidades.AuxXmlsList ListarCabXMLS(string pIdAgente) {
            //Array arr;
            try {
                Entidades.AuxXmls AuxXmls = new Entidades.AuxXmls();
                Entidades.AuxXmlsList AuxXmlsList = new Entidades.AuxXmlsList();
                DbCommand cmd = db.GetStoredProcCommand("up_ObtenerCabeceraEquipo");
                db.AddInParameter(cmd, "idAgente", DbType.String, pIdAgente);

                using (IDataReader dr = db.ExecuteReader(cmd))
                {
                    while (dr.Read()) {
                        AuxXmls = new Entidades.AuxXmls();
                        AuxXmls.DescAgencia = dr["NombreAgencia"].ToString();
                        AuxXmls.DescSucursal = dr["NombreSucursal"].ToString();
                        AuxXmls.DescEquipo = dr["pcname"].ToString();
                        AuxXmls.FechaEscaneo = Convert.ToDateTime(dr["fsolicitud"].ToString());
                        AuxXmls.Usuario = dr["userName"].ToString();
                        AuxXmls.Arquitectura = dr["systemArquitecture"].ToString();
                        AuxXmls.SistemaOp = dr["operatingSystem"].ToString();
                        AuxXmls.ServicePack = dr["servicePack"].ToString();
                        AuxXmls.Procesador = dr["cpuInfo"].ToString();
                        AuxXmls.Memoria = dr["memoryRam"].ToString();
                        AuxXmls.id = dr["id"].ToString();
                        AuxXmlsList.Add(AuxXmls);
                    }
                }
                return AuxXmlsList;
                
                //IList query = (from c in DbContext.xmls
                //                                  join d in DbContext.SolicitudAcceso on c.idsolicitud equals d.NroSolicitud
                //                                  join e in DbContext.Agencia on d.IdAgencia equals e.IdAgencia
                //                                  join f in DbContext.Sucursal on d.IdSucursal equals f.IdSucursal
                //                                  where c.idagente == pIdAgente
                //                                  select new { 
                //                                    DescAgencia = e.NombreAgencia,
                //                                    DescSucursal = f.NombreSucursal,
                //                                    DescEquipo = c.pcname ,
                //                                    FechaEscaneo = c.fsolicitud,
                //                                    Usuario = c.userName,
                //                                    Arquitectura = c.systemArquitecture,
                //                                    SistemaOp = c.operatingSystem,
                //                                    ServicePack = c.servicePack,
                //                                    Procesador = c.cpuInfo,
                //                                    Memoria = c.memoryRam
                //                                  }).ToList();
                //if (query.Count > 0)
                //{
                //    arr = query.CopyTo(arr, 0);
                //}
                //else {
                //    return null;
                //}
            }
            catch {
                return null;
            }
        }
    }
}
