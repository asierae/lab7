<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="WebApplication1.TareasProfesor" %>

<%@ Register Src="~/User Controls/OnlineUsersCounter.ascx" TagPrefix="uc1" TagName="OnlineUsersCounter" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tareas Profesor</title>
</head>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script src="js/jquery-3.1.1.min.js"></script>
<body>


    <form id="form1" runat="server">
              <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/Profesor.aspx">Menu Profesor</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Works</a></li>
            <li><a href="/LogOut.aspx">Logout</a></li>
          </ul>
            
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
        <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="/Profesor.aspx"><i class="fa fa-home fa-fw"></i>Home</a></li>
         
                <li><a href="TareasProfesor.aspx"><i class="fa fa-file-o fa-fw"></i>VerTareas</a></li>
                <li><a href="Estadisticas.aspx"><i class="fa fa-table fa-fw"></i>Estadisticas</a></li>
                <li><a href="InsertarTarea.aspx"><i class="fa fa-tasks fa-fw"></i>Insertar tarea</a></li>
                <li><a href="ImportarTareasXMLDocument.aspx"><i class="fa fa-calendar fa-fw"></i>Importar Tareas(XMLDocument)</a></li>
                <li><a href="ImportarVDataset.aspx">ImportarTareas(DataSet)</a></li>
                <li><a href="Vadillo/ExportarTareas.aspx"><i class="fa fa-book fa-fw"></i>Exportar Tareas</a></li>
                <li><a href="#">OpcionFuture</a></li>
            </ul>
        </div>
        <div id="contenido" class="col-md-9 well">
          
            Bienvenido <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <ajaxToolkit:AlwaysVisibleControlExtender ID="Label3_AlwaysVisibleControlExtender" runat="server" BehaviorID="Label3_AlwaysVisibleControlExtender" TargetControlID="Label3" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                    <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
                    <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="3000">
                    </asp:Timer>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Refreshing"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <uc1:OnlineUsersCounter runat="server" id="OnlineUsersCounter" />
            <br />
        </div>
    </div>
    </form>
</body>
</html>
