﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Fontys_Lectoraat_Website.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="Scripts/tagit/tag-it.min.js" type="text/javascript" charset="utf-8"></script>
    
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css">
     <link href="Scripts/tagit/jquery.tagit.css" rel="stylesheet" type="text/css">



    
      
    <script>
        $(function () {
            var sampleTags = <%=ListFilter%> 
            $('#<%=TextBsox1.ClientID %>').tagit({
                tagSource: sampleTags,
                tagLimit: 10,
                autocomplete: { delay: 0, minLength: 1 }

            });
        });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <asp:TextBox name="tags" id="singleFieldTags2" value="" class="autosuggest" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

  

       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

   <ul id="TextBsox1" runat="server">
    </ul>

</asp:Content>
