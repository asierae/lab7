Public Class LogOut_aspx
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Abandon()
        Application.Lock()

        If Session("role") = "P" Then
            Dim temp As ListBox
            temp = Application("listaprof")
            temp.Items.Remove(Session("username"))
            Application("listaprofs") = temp

        Else
            Dim temp As ListBox
            temp = Application("listaalum")
            temp.Items.Remove(Session("username"))
            Application("listaalum") = temp
        End If

        Application.UnLock()
        FormsAuthentication.SignOut()
        Response.Redirect("/Inicio.aspx?msj= Vuelve Pronto :)")
    End Sub

End Class