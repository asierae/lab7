﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="OnlineUsersCounter.ascx.vb" Inherits="WebApplication1.OnlineUsersCounter" %>
<style type="text/css">
    .auto-style1 {
        text-decoration: underline;
    }
</style>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        
        
        <span class="auto-style1"><strong>Usuarios Online</strong></span>:
        <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
    </Triggers>
</asp:UpdatePanel>
<asp:Timer ID="Timer1" runat="server" Interval="3000">
    </asp:Timer>
