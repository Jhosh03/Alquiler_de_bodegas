using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Bodegas_de_Guatemala.clases;
using System.Web.Services;
namespace Bodegas_de_Guatemala
{
    public partial class portal_galeria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        public static List<bodega> listar_gale()
        {
            OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
            conexion.Open();
            string consulta = "SELECT id_bodega,cod_bod,area,descripcion,direccion,alquiler,precio,url_img FROM bodegas INNER JOIN galeria ON bodegas.id_img =galeria.id_img where estado='A'";
            OracleCommand consultar = new OracleCommand(consulta, conexion);

            OracleDataReader datos = consultar.ExecuteReader();

            List<bodega> lista_gal = new List<bodega>();

            while (datos.Read())
            {
                bodega gal = new bodega();
                gal.id_bod = Convert.ToString(datos["id_bodega"]);
                gal.cod_bod = Convert.ToString(datos["cod_bod"]);
                gal.area_bod = Convert.ToString(datos["area"]);
                gal.desc_bod = Convert.ToString(datos["descripcion"]);
                gal.dir_bod = Convert.ToString(datos["direccion"]);
                gal.alq_bod = Convert.ToString(datos["alquiler"]);
                gal.precio_bod = Convert.ToString(datos["precio"]);
                gal.id_img = Convert.ToString(datos["url_img"]);
                lista_gal.Add(gal);
            }

            return lista_gal;


        }



    }
}