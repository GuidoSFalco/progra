using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Ejercicio1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Código que se ejecuta al iniciar la aplicación
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            Application["Aplicaciones"] = 0;
            Application["SesionesUsuarios"] = 0;
        }

        void Session_Start(object sender, EventArgs e)
        {
            Application["SesionesUsuarios"] = (int)Application["SesionesUsuarios"] + 1;
        }

        void Session_End(object sender, EventArgs e)
        {
            Application["SesionesUsuarios"] = (int)Application["SesionesUsuarios"] - 1;
        }
    }
}