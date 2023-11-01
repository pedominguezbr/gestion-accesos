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

namespace SgaGestionAcceso.AccesoDatos
{
    public class DAAutorizante
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAAutorizante()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEAutorizante ObtenerAutorizante(int IdAutorizante, int IdPersona)
        {

            BEAutorizante beAutorizante = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Autorizante_Obtener");
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, IdAutorizante);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, IdPersona);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beAutorizante = new BEAutorizante();
                    beAutorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());


                    if (dr["FechaCese"] == DBNull.Value)
                    {
                        beAutorizante.FechaCese = DateTime.MinValue;
                    }
                    else
                    {
                        beAutorizante.FechaCese = Convert.ToDateTime(dr["FechaCese"]);
                    }

                    if (dr["FechaIngreso"] == DBNull.Value)
                    {
                        beAutorizante.FechaIngreso = DateTime.MinValue;
                    }
                    else
                    {
                        beAutorizante.FechaIngreso = Convert.ToDateTime(dr["FechaIngreso"]);
                    }

                    beAutorizante.CodAutorizador = dr["CodAutorizador"].ToString();
                    beAutorizante.Estado = Convert.ToBoolean(dr["Estado"]);

                    beAutorizante.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());

                    beAutorizante.Persona = new BEPersona();
                    beAutorizante.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beAutorizante.Persona.Nombres = dr["Nombres"].ToString();
                    beAutorizante.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAutorizante.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beAutorizante.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beAutorizante.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Persona.Estado = Convert.ToBoolean(dr["EstadoPersona"]);

                    beAutorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beAutorizante.Jefatura = dr["Jefatura"].ToString();
                    beAutorizante.Gerencia = dr["Gerencia"].ToString();
                    beAutorizante.Direccion = dr["Direccion"].ToString();
                    beAutorizante.CIP = dr["CIP"].ToString();
                }
            }

            return beAutorizante;
        }
        public BEAutorizanteList ListarAutorizante()
        {
            BEAutorizante beAutorizante = null;

            BEAutorizanteList beAutorizantelist = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Autorizante_Listar");
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, Constantes.VALOR_CERO);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, Constantes.VALOR_CERO);



            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beAutorizantelist = new BEAutorizanteList();

                while (dr.Read())
                {
                    beAutorizante = new BEAutorizante();
                    beAutorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());


                    if (dr["FechaCese"] == DBNull.Value)
                    {
                        beAutorizante.FechaCese = DateTime.MinValue;
                    }
                    else
                    {
                        beAutorizante.FechaCese = Convert.ToDateTime(dr["FechaCese"]);
                    }

                    if (dr["FechaIngreso"] == DBNull.Value)
                    {
                        beAutorizante.FechaIngreso = DateTime.MinValue;
                    }
                    else
                    {
                        beAutorizante.FechaIngreso = Convert.ToDateTime(dr["FechaIngreso"]);
                    }

                    beAutorizante.CodAutorizador = dr["CodAutorizador"].ToString();
                    beAutorizante.Estado = Convert.ToBoolean(dr["Estado"]);

                    beAutorizante.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());

                    beAutorizante.Persona = new BEPersona();
                    beAutorizante.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beAutorizante.Persona.Nombres = dr["Nombres"].ToString();
                    beAutorizante.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAutorizante.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beAutorizante.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beAutorizante.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Persona.Estado = Convert.ToBoolean(dr["EstadoPersona"]);

                    beAutorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Jefatura = dr["Jefatura"].ToString();
                    beAutorizante.Gerencia = dr["Gerencia"].ToString();
                    beAutorizante.Direccion = dr["Direccion"].ToString();
                    beAutorizante.CIP = dr["CIP"].ToString();
                    beAutorizantelist.Add(beAutorizante);
                }
            }

            return beAutorizantelist;

        }


        public bool InsertarAutorizante(BEAutorizante beAutorizante)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Autorizante_Insertar");
            db.AddOutParameter(cmd, "IdAutorizante", DbType.Int32, beAutorizante.IdAutorizante);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, beAutorizante.IdPersona);

            if (beAutorizante.FechaIngreso != DateTime.MinValue)
            { db.AddInParameter(cmd, "FechaIngreso", DbType.Date, beAutorizante.FechaIngreso); }

            if (beAutorizante.FechaCese != DateTime.MinValue)
            { db.AddInParameter(cmd, "FechaCese", DbType.Date, beAutorizante.FechaCese); }

            db.AddInParameter(cmd, "CodAutorizador", DbType.String, beAutorizante.CodAutorizador);
            db.AddInParameter(cmd, "Jefatura", DbType.String, beAutorizante.Jefatura);
            db.AddInParameter(cmd, "Gerencia", DbType.String, beAutorizante.Gerencia);
            db.AddInParameter(cmd, "Direccion", DbType.String, beAutorizante.Direccion);
            db.AddInParameter(cmd, "CIP", DbType.String, beAutorizante.CIP);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, beAutorizante.EstadoActivo);
            db.ExecuteNonQuery(cmd);

            beAutorizante.IdAutorizante = Int32.Parse(db.GetParameterValue(cmd, "IdAutorizante").ToString());

            if (beAutorizante.IdAutorizante == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarAutorizante(BEAutorizante beAutorizante)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Autorizante_Actualizar");
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, beAutorizante.IdAutorizante);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, beAutorizante.IdPersona);

            if (beAutorizante.FechaIngreso != DateTime.MinValue)
            { db.AddInParameter(cmd, "FechaIngreso", DbType.Date, beAutorizante.FechaIngreso); }

            if (beAutorizante.FechaCese != DateTime.MinValue)
            { db.AddInParameter(cmd, "FechaCese", DbType.Date, beAutorizante.FechaCese); }

            db.AddInParameter(cmd, "CodAutorizador", DbType.String, beAutorizante.CodAutorizador);
            db.AddInParameter(cmd, "Jefatura", DbType.String, beAutorizante.Jefatura);
            db.AddInParameter(cmd, "Gerencia", DbType.String, beAutorizante.Gerencia);
            db.AddInParameter(cmd, "Direccion", DbType.String, beAutorizante.Direccion);
            db.AddInParameter(cmd, "CIP", DbType.String, beAutorizante.CIP);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, beAutorizante.EstadoActivo);

            db.ExecuteNonQuery(cmd);


            return true;
        }

        public bool EliminarAutorizante(int idAutorizante)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Autorizante_Eliminar");
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, idAutorizante);
            db.ExecuteNonQuery(cmd);
            return true;
        }

        public BEAutorizanteList BuscarAutorizante(BEAutorizante beAutorizantebusqueda)
        {
            BEAutorizante beAutorizante = null;

            BEAutorizanteList beAutorizantelist = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Autorizante_Buscar");
            db.AddInParameter(cmd, "Nombres", DbType.String, beAutorizantebusqueda.Persona.Nombres);
            db.AddInParameter(cmd, "ApePaterno", DbType.String, beAutorizantebusqueda.Persona.ApellidoPaterno);
            db.AddInParameter(cmd, "ApeMaterno", DbType.String, beAutorizantebusqueda.Persona.ApellidoMaterno);
            db.AddInParameter(cmd, "DocumentoIdentidad", DbType.String, beAutorizantebusqueda.Persona.DNI);
            db.AddInParameter(cmd, "CIP", DbType.String, beAutorizantebusqueda.CIP );


            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beAutorizantelist = new BEAutorizanteList();

                while (dr.Read())
                {
                    beAutorizante = new BEAutorizante();
                    beAutorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());


                    if (dr["FechaCese"] == DBNull.Value)
                    {
                        beAutorizante.FechaCese = DateTime.MinValue;
                    }
                    else
                    {
                        beAutorizante.FechaCese = Convert.ToDateTime(dr["FechaCese"]);
                    }

                    if (dr["FechaIngreso"] == DBNull.Value)
                    {
                        beAutorizante.FechaIngreso = DateTime.MinValue;
                    }
                    else
                    {
                        beAutorizante.FechaIngreso = Convert.ToDateTime(dr["FechaIngreso"]);
                    }

                    beAutorizante.CodAutorizador = dr["CodAutorizador"].ToString();
                    beAutorizante.Estado = Convert.ToBoolean(dr["Estado"]);
                    beAutorizante.EstadoActivo = Convert.ToBoolean(dr["Estado"]);

                    beAutorizante.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());

                    beAutorizante.Persona = new BEPersona();
                    beAutorizante.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beAutorizante.Persona.Nombres = dr["Nombres"].ToString();
                    beAutorizante.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAutorizante.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beAutorizante.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beAutorizante.Persona.Correo = dr["Correo"].ToString();
                    beAutorizante.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Persona.Estado = Convert.ToBoolean(dr["EstadoPersona"]);

                    beAutorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAutorizante.Jefatura = dr["Jefatura"].ToString();
                    beAutorizante.Gerencia = dr["Gerencia"].ToString();
                    beAutorizante.Direccion = dr["Direccion"].ToString();
                    beAutorizante.CIP = dr["CIP"].ToString();
                    beAutorizantelist.Add(beAutorizante);
                }
            }

            return beAutorizantelist;

        }
        #endregion

    }
}
