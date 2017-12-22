<%@ Page Title="" ValidateRequest="false" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="NewProjectBlog.aspx.cs" Inherits="Fontys_Lectoraat_Website.Test4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="Scripts/tagit/tag-it.min.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css">
    <link href="Scripts/tagit/jquery.tagit.css" rel="stylesheet" type="text/css">

    <script src="Scripts/ckeditor/ckeditor.js"></script>
    <script src="Scripts/ckeditor/contents.css"></script>
    
    <script>
        
        $( document ).ready(function() {
    
            var Projects = <%=Projects %>;
    
    
            


            var Tags = <%= Tags %>;
            var lectors = <%= Lectors %>;
            $('#<%= txtTags.ClientID %>').tagit({
                tagSource: Tags,
                allowSpaces: true,
                tagLimit: 10,
                autocomplete: { delay: 0, minLength: 1 },
                beforeTagAdded: function(event, ui) {
                    if (Tags.indexOf(ui.tagLabel) === -1) {
                        return false;
                    }
                    if (ui.tagLabel == "not found") {
                        return false;
                    }
                },
                afterTagAdded: function(event, ui) {
                    $("#<%= hdnSelectedTags.ClientID %>").val($('#<%= txtTags.ClientID %>').tagit("assignedTags"));
                }


            });

            $('#<%= txtInvolved.ClientID %>').tagit({
                tagSource: lectors,
                allowSpaces: true,
                autocomplete: { delay: 0, minLength: 1 },

                afterTagAdded: function(event, ui) {
                    $("#<%= hdnSelectedInvolved.ClientID %>")
                        .val($('#<%= txtInvolved.ClientID %>').tagit("assignedTags"));
                }
            });


            CKEDITOR.replace('<%= tbWYSIWYG.ClientID %>');
            CKEDITOR.replace('<%= TxtWhatNow.ClientID %>');
          
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Nieuw Project Blog</h1>

    <div class="divMainContent">
 
    <label>Titel:</label> <input id="txtTitel" runat="server" type="text"/><br/>
    
            <label> Project:</label>
<%--    <select  id="projectselect">
<option  selected="selected">Selecteer Project</option>
       
</select>--%>
         <asp:DropDownList ID="projectselect" runat="server">
        </asp:DropDownList>
        <br/>

    <label> Trefwoorden:</label>
    <ul id="txtTags" runat="server">
    </ul><br/>
    <label> BlogAfbeelding:</label> 
    <asp:FileUpload id="FileUploadControl" runat="server" />
    <br/>
     <label> BlogTekst:</label>
    <asp:TextBox ID="tbWYSIWYG" runat="server" TextMode="MultiLine"></asp:TextBox>
      <br/>
        <h2>Sprint resultaat</h2>
           <label>Deelvraag:</label> <input id="txtSubquestion" runat="server" type="text"/><br/>
           <label>Doel deelvraag:</label> <input id="txtSubquestionGoal" runat="server" type="text"/>
        <br/>    
        
        <div class="cumulative-box"> <div class="first"><label>Methode:</label> </div>
         <div class="second"><asp:PlaceHolder ID="PlaceHolderMethode" runat="server"></asp:PlaceHolder>
        </div> </div>
        <asp:LinkButton ID="lbuttonAddMethode" runat="server" Font-Size="X-Small" OnClick="LinkButton1_Click" >Methode toevoegen+</asp:LinkButton>

        <label>Resultaat:</label>
    <asp:PlaceHolder ID="PlaceHolderResult" runat="server"></asp:PlaceHolder>
 <asp:LinkButton ID="lbuttonAddResult" runat="server" Font-Size="X-Small" OnClick="lbuttonAddResult_Click" >Resultaat toevoegen+</asp:LinkButton>
          <br/>
        Betrokkenen:
   <ul id="txtInvolved" runat="server">
    </ul>
        
         <br/>
        Impact:
        <asp:TextBox ID="txtImpact" runat="server" Height="77px" TextMode="MultiLine" Width="308px"></asp:TextBox>
        <br/>
        Hoe nu verder:
         <asp:TextBox ID="TxtWhatNow" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>

  

        <asp:HiddenField ID="hdnSelectedTags" runat="server"/>
         <asp:HiddenField ID="hdnSelectedInvolved" runat="server"/>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
