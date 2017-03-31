<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="OnlineUsersCounter.ascx.vb" Inherits="WebApplication1.OnlineUsersCounter" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" Interval="3000">
        </asp:Timer>
        Usuarios Online:
        <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
    </ContentTemplate>
</asp:UpdatePanel>

