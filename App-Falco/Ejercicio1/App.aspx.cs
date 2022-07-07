using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio1
{
    public partial class Ejercicio_2 : System.Web.UI.Page
    {
        int contador = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                txtInicio.Text = "Hola Mundo- Es la primera vez que se ha cargado la página";
                lblContador.Text = "0";
            }
            else
            {
                txtInicio.Text = "Esta página ya ha sido visitada";
            }

            Response.Write("Cantidad de sesiones de usuario:" + Application["SesionesUsuarios"]);
        }

        protected void Recargar(object sender, EventArgs e)
        {

            if (ViewState["click"]!=null) 
            {
                contador = (int)ViewState["click"] + 1;
            }
            
            lblContador.Text = contador.ToString();

            ViewState["click"] = contador;
        }
    }
    
}