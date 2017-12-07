<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="NewProject.aspx.cs" Inherits="Fontys_Lectoraat_Website.Control.NewProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Text1 {
            width: 833px;
        }
        #TextArea1 {
            height: 139px;
            width: 392px;
        }
        #Text2 {
            width: 826px;
        }
        #Text3 {
            width: 799px;
        }
        #Text5 {
            width: 793px;
        }
        #Text6 {
            width: 766px;
        }
        #Text4 {
            width: 782px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Nieuw Project</h1>
    <div id="divMainContent">
        Titel: <input id="Text1" type="text" />
         <br/>
        Tags:
         <input id="Text2" type="text" /><br/>
        Sponsor:
         <input id="Text3" type="text" /><br/>
        Partners:
         <input id="Text5" type="text" /><br/>
        Deelnemers:
         <input id="Text6" type="text" /><br/>
        Looptijd:
         <input id="Text4" type="text" /><br/>
        Voorstel:
        <textarea id="TextArea1" name="S1"></textarea><br/>

    </div>
</asp:Content>
