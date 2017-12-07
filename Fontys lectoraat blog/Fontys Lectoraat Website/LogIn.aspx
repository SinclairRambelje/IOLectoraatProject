<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Fontys_Lectoraat_Website.Log_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
              Log in
            </h1>
    
    <div id="divLoginForm">
<asp:Login ID="LoginForm" runat="server" OnAuthenticate="LoginForm_Authenticate">
</asp:Login>
    </div>

</asp:Content>
