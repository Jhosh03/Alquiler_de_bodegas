using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.DataAccess.Client;
namespace Bodegas_de_Guatemala
{
    public class Conexion_base_de_datos
    {
        // Crear un método que reciba los componentes del string de conexion y regrese el string completo de conexión.
        OracleConnection cn;
        public Boolean Conexion(string query) {

            try
            {
                cn = new OracleConnection(query);
                cn.Open();
                return true;
            }

            catch
            {
                return false;
            }
        }

        //c) Cear un método para abrir la base de datos evaluado que si esta cerrada la conexión.
        public Boolean Conn(string datos)
        {
            cn = new OracleConnection(datos);

            if (cn.State == System.Data.ConnectionState.Closed)
            {
                try
                {
                    cn.Open();
                    return true;
                }

                catch
                {
                    return false;
                }
            }
            else {
                return false;
            }
        }

        //d) Crear un método para cerrar la base de datos.
        public Boolean Cerrar_conexion() {
            cn = new OracleConnection();

            if (cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
                return true;
            }
            else {
                return false; 
            }
        
        }

    }
}