using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Collections;

namespace SgaGestionAcceso.AccesoDatos
{
    public class DAPersona
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAPersona()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        SGA_GestionAccesoEntities DbContext = new SGA_GestionAccesoEntities();
        #region Metodos
        public IList ListarAutorizante()
        {
            IList query = (from c in DbContext.Persona
                           join d in DbContext.Autorizante on c.IdPersona equals d.IdPersona
                           select new
                           {
                               IdAutorizante = d.IdAutorizante,
                               Nombres = c.Nombres + " " + c.ApePaterno
                           }).ToList();
            return query;

        }
        public IList ListarPersona()
        {
            IList query = (from c in DbContext.Persona
                           select new
                           {
                               IdPersona = c.IdPersona,
                               Nombres = c.Nombres + " " + c.ApePaterno + " " + c.ApeMaterno
                           }).ToList();
            return query;
        }
        public BEPersona ObtenerPersona(string dni, int idPersona)
        {
            BEPersona bePersona = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Persona_Obtener");
            if (idPersona == 0)
            { db.AddInParameter(cmd, "IdPersona", DbType.Int32, -1); }
            else
            { db.AddInParameter(cmd, "IdPersona", DbType.Int32, idPersona); }

            if (dni == string.Empty)
            { db.AddInParameter(cmd, "DocumentoIdentidad", DbType.String, DBNull.Value); }
            else
            { db.AddInParameter(cmd, "DocumentoIdentidad", DbType.String, dni); }


            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    bePersona = new BEPersona();
                    bePersona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    bePersona.Nombres = dr["Nombres"].ToString();
                    bePersona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    bePersona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    bePersona.DNI = dr["DocumentoIdentidad"].ToString();
                    bePersona.Correo = dr["Correo"].ToString();
                    bePersona.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    bePersona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    bePersona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    bePersona.Estado = Convert.ToBoolean(dr["Estado"]);
                }
            }

            return bePersona;
        }

        public bool RegistrarCierre(string idDetEscaneoValidacion, int idEspecialista)
        {
            try
            {
                int pIdGenAgenteValidador = 0;
                int pIdSolicitud = 0;
                var query = (from c in DbContext.DetalleGenAgenValidador
                             where c.CodGenerado == idDetEscaneoValidacion
                             select c).ToList();

                if (query.Count > 0)
                {
                    pIdGenAgenteValidador = query.First().IdGenAgenteValidador;
                }

                var query2 = (from c in DbContext.DetalleGenAgenValidador
                              where c.IdGenAgenteValidador == pIdGenAgenteValidador
                              select c).ToList();
                if (query2.Count > 0)
                {
                    if (query2.Count == query2.Select(h => h.Estado = 7).ToList().Count)
                    {
                        var query3 = (from c in DbContext.GenAgenValidador
                                      join d in DbContext.DetalleGenAgenValidador on c.IdGenAgenteValidador equals d.IdGenAgenteValidador
                                      where c.IdGenAgenteValidador == pIdGenAgenteValidador
                                      select new
                                      {
                                          IdSolicitud = c.IdSolicitud
                                      }).ToList();
                        if (query3.Count > 0)
                        {
                            pIdSolicitud = query3.First().IdSolicitud;
                            var query4 = (from c in DbContext.SolicitudAcceso
                                          where c.IdSolicitudAcceso == pIdSolicitud
                                          select c).ToList();
                            query4.First().IdEspecialista = idEspecialista;
                            query4.First().FechaCierre = DateTime.Now;
                            DbContext.SaveChanges();
                        }
                    }
                }
                return true;
            }
            catch (Exception Ex)
            {
                return false;
            }
        }

        public BEPersonaList ListarPersonaDatosCompletos()
        {
            BEPersonaList listaBePersona = null;
            BEPersona bePersona = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Persona_ObtenerDatosCompletos");


            listaBePersona = new BEPersonaList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    bePersona = new BEPersona();
                    bePersona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    bePersona.Nombres = dr["Nombres"].ToString();
                    bePersona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    bePersona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    bePersona.DNI = dr["DocumentoIdentidad"].ToString();
                    bePersona.Correo = dr["Correo"].ToString();
                    bePersona.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    bePersona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    bePersona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    bePersona.Estado = Convert.ToBoolean(dr["Estado"]);
                    listaBePersona.Add(bePersona);
                }
            }

            return listaBePersona;
        }

        public bool InsertarPersona(BEPersona bePersona)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Persona_Insertar");
            db.AddOutParameter(cmd, "IdPersona", DbType.Int32, bePersona.IdPersona);
            db.AddInParameter(cmd, "Nombres", DbType.String, bePersona.Nombres);
            db.AddInParameter(cmd, "ApeMaterno", DbType.String, bePersona.ApellidoMaterno);
            db.AddInParameter(cmd, "ApePaterno", DbType.String, bePersona.ApellidoPaterno);
            db.AddInParameter(cmd, "DocumentoIdentidad", DbType.String, bePersona.DNI);
            db.AddInParameter(cmd, "Correo", DbType.String, bePersona.Correo);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, bePersona.Estado);

            db.ExecuteNonQuery(cmd);

            bePersona.IdPersona = Int32.Parse(db.GetParameterValue(cmd, "IdPersona").ToString());

            if (bePersona.IdPersona == -1)
            { return false; }
            else
            { return true; }

        }

        public bool ActualizarPersona(BEPersona bePersona)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Persona_Actualizar");
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, bePersona.IdPersona);
            db.AddInParameter(cmd, "Nombres", DbType.String, bePersona.Nombres);
            db.AddInParameter(cmd, "ApeMaterno", DbType.String, bePersona.ApellidoMaterno);
            db.AddInParameter(cmd, "ApePaterno", DbType.String, bePersona.ApellidoPaterno);
            db.AddInParameter(cmd, "DocumentoIdentidad", DbType.String, bePersona.DNI);
            db.AddInParameter(cmd, "Correo", DbType.String, bePersona.Correo);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, bePersona.Estado);

            db.ExecuteNonQuery(cmd);
           
            return true;
        }

        public bool EliminarPersona(int idPersona)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Persona_Eliminar");
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, idPersona);
            db.ExecuteNonQuery(cmd);
            return true;
        }

        public BEPersonaList PersonaBuscar(BEPersona bePersonaIn)
        {
            BEPersona bePersona = null;
            BEPersonaList bePersonaList = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Persona_Buscar");

            db.AddInParameter(cmd, "Nombres", DbType.String, bePersonaIn.Nombres);
            db.AddInParameter(cmd, "ApePaterno", DbType.String, bePersonaIn.ApellidoPaterno);
            db.AddInParameter(cmd, "ApeMaterno", DbType.String, bePersonaIn.ApellidoMaterno);
            db.AddInParameter(cmd, "DocumentoIdentidad", DbType.String, bePersonaIn.DNI);

            bePersonaList = new BEPersonaList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    bePersona = new BEPersona();
                    bePersona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    bePersona.Nombres = dr["Nombres"].ToString();
                    bePersona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    bePersona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    bePersona.DNI = dr["DocumentoIdentidad"].ToString();
                    bePersona.Correo = dr["Correo"].ToString();
                    bePersona.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    bePersona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    bePersona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    bePersona.Estado = Convert.ToBoolean(dr["Estado"]);

                    bePersonaList.Add(bePersona);
                }
            }

            return bePersonaList;
        }
        #endregion
    }
}
