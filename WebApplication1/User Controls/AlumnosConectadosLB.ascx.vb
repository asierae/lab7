Public Class AlumnosConectadosLB
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim listap As New LinkedList(Of String)
        Dim temp As New ListBox()
        temp = Application("listaprof")
    End Sub
End Class