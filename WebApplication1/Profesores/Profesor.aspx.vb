Public Class TareasProfesor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Session("logged") = False Then
        '    Response.Redirect("/Inicio.aspx")
        'End If
        'If Session("role") <> "P" Then
        '    Response.Write("No Estas Autorizado para acceder a este reurso <a href='/Inicio.aspx'>Inicio</a>")
        '    Response.End()

        'End If
        Label1.Text = Session("username")
        Label2.Text = Application.Contents("numusers")
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        'Label2.Text = Application.Contents("numusers")
        'For Each elem In Application.Contents("listaprof")
        '    ListBox1.Items.Add(elem)
        'Next
        'For Each elem In Application.Contents("listaalum")
        '    ListBox1.Items.Add(elem)
        'Next
    End Sub
End Class