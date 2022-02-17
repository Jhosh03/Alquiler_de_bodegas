using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
namespace Bodegas_de_Guatemala
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        OracleConnection conexion = new OracleConnection("DATA SOURCE=XE; PASSWORD = proyectoweb; USER ID = CONTROL_BODEGAS");

        protected void btn_login_Click(object sender, EventArgs e)
        {




            if (txt_usr.Text != "" || txt_pass.Text != "")
            {


                conexion.Open();
                OracleCommand resultado = new OracleCommand("SELECT * FROM USUARIOS WHERE USR = :usuario AND PASS = :password", conexion);
                //obtener los datos que el usario ingresa en el login
                resultado.Parameters.Add(":usuario", txt_usr.Text);
                resultado.Parameters.Add(":password", txt_pass.Text);
                OracleDataReader datos = resultado.ExecuteReader();



                if (datos.Read())
                {

                    if (datos["ID_ROL"].ToString() == "1")
                    {
                        Server.Transfer("menu_administrador.aspx");
                        conexion.Close();

                    }
                    if (datos["ID_ROL"].ToString() == "2")
                    {
                        Server.Transfer("frm_usuario.aspx");
                        conexion.Close();
                    }

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('datos incorrectos');", true);
                }

            }
            else { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar todos los campos');", true); }

        }
    }
}