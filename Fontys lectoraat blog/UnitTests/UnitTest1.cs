using System;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTests
{
    [TestClass]
    public class UnitTest1
    {
        Logic logic = new Logic();
        
        [TestMethod]
        public void TestMethodds1()

        {
            ConnectionHelper.Connect(AutoCreateOption.DatabaseAndSchema);
            Session session = new Session();
            XpoDefault.Session = session;

            User user = logic.UserContext.Login("test", "test");
            Assert.AreEqual(user.UserName, "test");
        }

        [TestMethod]
        public void TestMethosdsd2()
        {
            Assert.AreEqual(1, 1);
        }

        
       
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
