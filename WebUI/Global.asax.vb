Imports System.Web.Mvc
Imports System.Web.Routing

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Se desencadena al iniciar la aplicación
        AreaRegistration.RegisterAllAreas()
        RouteConfig.RegisterRoutes(RouteTable.Routes)

        ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
     New ScriptResourceDefinition() With {
         .Path = "~/Scripts/jquery-3.7.1.min.js",
         .DebugPath = "~/Scripts/jquery-3.7.1.js",
         .CdnPath = "https://code.jquery.com/jquery-3.7.1.min.js",
         .CdnDebugPath = "https://code.jquery.com/jquery-3.7.1.js"
     })
    End Sub
End Class