﻿Public Class LogOut_aspx
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Abandon()
        Application.Lock()
        Application("numusers") = Application("numusers") - 1
        Application.UnLock()
        FormsAuthentication.SignOut()
        Response.Redirect("/Inicio.aspx?msj= Vuelve Pronto :)")
    End Sub

End Class