using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Bodegas_de_Guatemala.clases;
using System.Web.Services;
using System.Drawing;
using System.Data;



namespace Bodegas_de_Guatemala
{
    public partial class menu_administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");

        protected void btn_reg_client_Click(object sender, EventArgs e)
        {

        }

        protected void btn_reg_bod_Click(object sender, EventArgs e)
        {
            conexion.Open();
            string query = "insert into bodegas values(SEC_ID_BODEGA.nextval,:cod_bod,:area_bod,:desc_bod,:dir_bod,:estado)";
            OracleCommand insertar = new OracleCommand(query, conexion);
            /* 
             insertar.Parameters.Add("cod_bod", txt_cod_bod.Text);
             insertar.Parameters.Add("area_bod",txt_area_bod.Text);
             insertar.Parameters.Add("desc_bod",txt_area_bod.Text);
             insertar.Parameters.Add("dir_bod", txt_dir_bod.Text);
             insertar.Parameters.Add("estado", txt_estado_bod.Text);
             int rowsUpdated = insertar.ExecuteNonQuery();

             if (rowsUpdated == 0)
             {
                 msg.Text = "no se realizo la insercion";
             }
             else {
                 msg.Text = "datos insertados correctamente";
                 txt_cod_bod.Text = "";
                 txt_area_bod.Text = "";
                 txt_desc_bod.Text = "";
                 txt_dir_bod.Text = "";
                 txt_estado_bod.Text = "";
             }
             */
            conexion.Close();
        }

        protected void btn_abrir_conexion_Click(object sender, EventArgs e)
        {
            Conexion_base_de_datos conn = new Conexion_base_de_datos();
            conn.Conexion("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
        }

        protected void btn_listar_bod_Click(object sender, EventArgs e)
        {
            conexion.Open();
            string query = "select * from bodegas";
            OracleCommand listar = new OracleCommand(query, conexion);

        }


        [WebMethod]

        public static List<bodega> listar_bodega()
        {

            OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
            conexion.Open();
            string consulta = "SELECT  ID_BODEGA,COD_BOD,AREA,DESCRIPCION,DIRECCION,ALQUILER,PRECIO,bodegas.id_img,ESTADO FROM BODEGAS INNER JOIN GALERIA  ON bodegas.id_img = galeria.id_img WHERE ESTADO = 'A' ";
            OracleCommand consultar = new OracleCommand(consulta, conexion);

            OracleDataReader datos = consultar.ExecuteReader();

            List<bodega> lista_bodega = new List<bodega>();

            while (datos.Read())
            {
                bodega bod = new bodega();
                bod.id_bod = Convert.ToString(datos["ID_BODEGA"]);
                bod.cod_bod = Convert.ToString(datos["COD_BOD"]);
                bod.area_bod = Convert.ToString(datos["AREA"]);
                bod.desc_bod = Convert.ToString(datos["DESCRIPCION"]);
                bod.dir_bod = Convert.ToString(datos["DIRECCION"]);
                bod.alq_bod = Convert.ToString(datos["ALQUILER"]);
                bod.precio_bod = Convert.ToString(datos["PRECIO"]);
                bod.id_img = Convert.ToString(datos["id_img"]);
                bod.estado_bod = Convert.ToString(datos["ESTADO"]);

                lista_bodega.Add(bod);
            }

            return lista_bodega;
        }

        [WebMethod]
        public static Boolean editar_bodega(string id, string codigo, string area_bod,string desc_bod,string dir_bod, string alq_bod,string precio_bod, string id_img) {
             
             OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
             String query = "update bodegas set COD_BOD = :codigo,AREA =:espacio ,DESCRIPCION =:descrip,DIRECCION =:direc,ALQUILER = :alqui,PRECIO =:preci,ID_IMG =:imagen WHERE ID_BODEGA =:identificador";
             conexion.Open();

             OracleCommand update_bodega = conexion.CreateCommand();

             update_bodega.CommandType = System.Data.CommandType.Text;
             update_bodega.CommandText = query;
             update_bodega.Parameters.Add(":codigo", OracleDbType.Varchar2).Value =codigo;
             update_bodega.Parameters.Add(":espacio", OracleDbType.Varchar2).Value = area_bod;
             update_bodega.Parameters.Add(":descrip", OracleDbType.Varchar2).Value =desc_bod;
             update_bodega.Parameters.Add(":direc", OracleDbType.Varchar2).Value =dir_bod;
             update_bodega.Parameters.Add(":alqui", OracleDbType.Varchar2).Value =alq_bod;
             update_bodega.Parameters.Add(":preci", OracleDbType.Int32).Value = precio_bod;
             update_bodega.Parameters.Add(":imagen", OracleDbType.Varchar2).Value= id_img;
             update_bodega.Parameters.Add(":identificador", OracleDbType.Int32).Value = id;
            int resultado= update_bodega.ExecuteNonQuery();

             if (resultado != 0)
             {

                 return true;
             }
             else
             {
                 return false;
             }
            
         
        }



        [WebMethod]
        public static Boolean eliminar_bodega(string id, string estado_bod) {

         
            if (estado_bod == "A")
            {
                

                OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
                conexion.Open();
                string query = "update bodegas set ESTADO =:est WHERE ID_BODEGA =:identificador";
                OracleCommand delete_bodega = new OracleCommand(query, conexion);
                delete_bodega.Parameters.Add(":est", OracleDbType.Varchar2).Value = "ELIMINADO";
                delete_bodega.Parameters.Add(":identificador", OracleDbType.Int32).Value = id;
                
                int resultado = delete_bodega.ExecuteNonQuery();
                
                if (resultado != 0)
                {

                    return true;
                }
                else
                {
                    return false;
                }

            }else { return false; }
        }

        [WebMethod]

        public static Boolean insertar_bodega(string codigo, string area_bod, string desc_bod, string dir_bod, string alq_bod, string precio_bod, string id_img) {
               
                      OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
                      conexion.Open();
                      string query = "insert into bodegas(ID_BODEGA,COD_BOD,AREA,DESCRIPCION,DIRECCION,ALQUILER,PRECIO,ID_IMG,ESTADO) values(SEC_ID_BODEGA.nextval,:codb,:areab,:descb,:dirb,:alqb,:preciob,:imgb,:estb)";
                      OracleCommand insert_bodega = new OracleCommand(query, conexion);
                      insert_bodega.Parameters.Add("codb", OracleDbType.Varchar2).Value = codigo;
                      insert_bodega.Parameters.Add("areab", OracleDbType.Varchar2).Value = area_bod;
                      insert_bodega.Parameters.Add("descb", OracleDbType.Varchar2).Value = desc_bod;
                      insert_bodega.Parameters.Add("dirb", OracleDbType.Varchar2).Value = dir_bod;
                      insert_bodega.Parameters.Add("alqb", OracleDbType.Varchar2).Value = alq_bod;
                      insert_bodega.Parameters.Add("preciob", OracleDbType.Int32).Value = precio_bod;
                      insert_bodega.Parameters.Add("imgb",OracleDbType.Varchar2).Value = id_img;
                      insert_bodega.Parameters.Add("estb", "A");

                      int resultado = insert_bodega.ExecuteNonQuery();

            if (resultado != 0)
            {

                return true;
            }
            else
            {
                return false;
            }
            

           
        }

        protected void btn_subir_Click(object sender, EventArgs e)
        {

            //verificacion de archivo subido
            if (fuploadImagen.HasFile) {

                string ext = System.IO.Path.GetExtension(fuploadImagen.FileName);
                ext.ToLower();

                if (ext==".jpg") {
                    
                    fuploadImagen.SaveAs(Server.MapPath("~/content/galeria/" + fuploadImagen.FileName));
                    String direccion = "/content/galeria/" + fuploadImagen.FileName;
  
                    //subir la imagen a la base de datos
                    conexion.Open();
                    string query = "insert into galeria values(:id_img,:dt_img,:desc_img,'A')";
                    OracleCommand insertar = new OracleCommand(query, conexion);
                    insertar.Parameters.Add("id_img", txt_id.Text);
                    insertar.Parameters.Add("dt_img", direccion);
                    insertar.Parameters.Add("desc_img", txt_titulo.Text);
                    int rowsUpdated = insertar.ExecuteNonQuery();
                    if (rowsUpdated == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No se realizo la inserción');", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro correcto');", true);
                        txt_id.Text = "";
                        txt_titulo.Text = "";   
                    }
                    conexion.Close();
                }

            } else {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Seleccione un archivo a subir');", true);
                   }

        }


        [WebMethod]
        public static List<galeria> listar_galeria()
        {
            OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
            conexion.Open();
            string consulta = "SELECT ID_IMG,URL_IMG,DESC_IMG,EST_IMG FROM GALERIA WHERE est_img='A'";
            OracleCommand consultar = new OracleCommand(consulta, conexion);

            OracleDataReader datos = consultar.ExecuteReader();

            List<galeria> lista_gal = new List<galeria>();

            while (datos.Read())
            {
                galeria gal = new galeria();
                gal.ID_IMG = Convert.ToString(datos["ID_IMG"]);
                gal.URL_IMG = Convert.ToString(datos["URL_IMG"]);
                gal.DESC_IMG = Convert.ToString(datos["DESC_IMG"]);
                gal.EST_IMG = Convert.ToString(datos["EST_IMG"]);
       
                lista_gal.Add(gal);
            }

            return lista_gal;


        }

        protected void btn_editar_Click(object sender, EventArgs e)
        {

            if (txt_id.Text != "" || txt_titulo.Text != "")
            {

                if (fuploadImagen.HasFile)
                {


                    String direccion = "/content/galeria/" + fuploadImagen.FileName;
                    conexion.Open();
                    string query1 = "update galeria set URL_IMG =:img_url,DESC_IMG=:img_desc WHERE id_img=:identific";
                    OracleCommand consulta1 = new OracleCommand(query1, conexion);

                    consulta1.Parameters.Add(":img_url", direccion);
                    consulta1.Parameters.Add(":img_desc", txt_titulo.Text);
                    consulta1.Parameters.Add(":identific", txt_id.Text);
                    consulta1.ExecuteNonQuery();

                    if (consulta1.ExecuteNonQuery() == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El ID no se encuentra registrado');", true);
                    }
                    else
                    {
                        fuploadImagen.SaveAs(Server.MapPath("~/content/galeria/" + fuploadImagen.FileName));
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro editado correctamente');", true);
                    }
                }
                else { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Adjuntar un archivo JPG');", true); }
            }
            else { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar todos los campos');", true); }
        }



        [WebMethod]
        public static Boolean eliminar_galeria(string id_gal, string estado_gal)
        {


            if (estado_gal == "A")
            {


                OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");
                conexion.Open();
                string query3 = "update galeria set EST_IMG =:est WHERE ID_IMG =:identificador";
                OracleCommand delete_gal = new OracleCommand(query3, conexion);
                delete_gal.Parameters.Add(":est", OracleDbType.Varchar2).Value = "ELIMINADO";
                delete_gal.Parameters.Add(":identificador",OracleDbType.Varchar2).Value = id_gal;

                int resultado = delete_gal.ExecuteNonQuery();

                if (resultado != 0)
                {

                    return true;
                }
                else
                {
                    return false;
                }

            }
            else { return false; }
        }



    }
   
}