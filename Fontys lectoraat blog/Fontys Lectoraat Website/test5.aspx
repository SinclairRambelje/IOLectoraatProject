<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="test5.aspx.cs" Inherits="Fontys_Lectoraat_Website.test5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script>
      




    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
     
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" >
 
    </asp:PlaceHolder>
    <br />
    <asp:Button ID="btnAddControls" runat="server" Text="Add Control"
        onclick="btnAddControls_Click" />
</asp:Content>
