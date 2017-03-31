<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="AlumnosConectadosLB.ascx.vb" Inherits="WebApplication1.AlumnosConectadosLB" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" Height="60px" Width="121px"></asp:ListBox>
        <br />
        <asp:Timer ID="Timer1" runat="server">
        </asp:Timer>
    </ContentTemplate>
</asp:UpdatePanel>

