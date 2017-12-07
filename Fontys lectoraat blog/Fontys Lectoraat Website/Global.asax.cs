using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;

namespace Fontys_Lectoraat_Website
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            MvcApplication.ConnectionHelper.Connect(AutoCreateOption.DatabaseAndSchema);
            Session session = new Session();
            XpoDefault.Session = session;
        }


        public static class ConnectionHelper
        {
            public const string ConnectionString = @"XpoProvider=MSSqlServer;data source=LAPTOP-2DGPJUM4\SQLEXPRESS;integrated security=SSPI;initial catalog=Fontys";
            public static void Connect(DevExpress.Xpo.DB.AutoCreateOption autoCreateOption)
            {
                XpoDefault.DataLayer = XpoDefault.GetDataLayer(ConnectionString, autoCreateOption);
                XpoDefault.Session = null;
            }
            public static DevExpress.Xpo.DB.IDataStore GetConnectionProvider(DevExpress.Xpo.DB.AutoCreateOption autoCreateOption)
            {
                return XpoDefault.GetConnectionProvider(ConnectionString, autoCreateOption);
            }
            public static DevExpress.Xpo.DB.IDataStore GetConnectionProvider(DevExpress.Xpo.DB.AutoCreateOption autoCreateOption, out IDisposable[] objectsToDisposeOnDisconnect)
            {
                return XpoDefault.GetConnectionProvider(ConnectionString, autoCreateOption, out objectsToDisposeOnDisconnect);
            }
            public static IDataLayer GetDataLayer(DevExpress.Xpo.DB.AutoCreateOption autoCreateOption)
            {
                return XpoDefault.GetDataLayer(ConnectionString, autoCreateOption);
            }
        }
    }
}
