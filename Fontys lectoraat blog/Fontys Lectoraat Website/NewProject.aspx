<%@ Page Title="" ValidateRequest="false" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="NewProject.aspx.cs" Inherits="Fontys_Lectoraat_Website.Control.NewProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="Scripts/tagit/tag-it.min.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css">
    <link href="Scripts/tagit/jquery.tagit.css" rel="stylesheet" type="text/css">

    <script src="Scripts/ckeditor/ckeditor.js"></script>
    <script src="Scripts/ckeditor/contents.css"></script>


    <script>
       

        $(function() {
                var projectTags = <%= ProjectTags %>;
            var lectors = <%= Lectors %>;

             $('#<%= txtTags.ClientID %>').tagit({
                tagSource: projectTags,
                tagLimit: 10,
                autocomplete: { delay: 0, minLength: 1 },
                beforeTagAdded: function(event, ui) {
                    if (projectTags.indexOf(ui.tagLabel) === -1) {
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

            $('#<%= txtParticipants.ClientID %>').tagit({
                tagSource: lectors,

                autocomplete: { delay: 0, minLength: 1 },

                afterTagAdded: function(event, ui) {
                    $("#<%= hdnSelectedParticipants.ClientID %>")
                        .val($('#<%= txtParticipants.ClientID %>').tagit("assignedTags"));
                }
            });

               $('#<%= txtGoverend.ClientID %>').tagit({
                tagSource: lectors,

                autocomplete: { delay: 0, minLength: 1 },

                afterTagAdded: function(event, ui) {
                    $("#<%= hdnSelectedGoverend.ClientID %>")
                        .val($('#<%= txtGoverend.ClientID %>').tagit("assignedTags"));
                }
               });

              $('#<%= txtSponsor.ClientID %>').tagit({
    

                autocomplete: { delay: 0, minLength: 1 },

                afterTagAdded: function(event, ui) {
                    $("#<%= hdnSelectedDonators.ClientID %>")
                        .val($('#<%= txtSponsor.ClientID %>').tagit("assignedTags"));
                }
              });

                  $('#<%= txtPartners.ClientID %>').tagit({
    

                autocomplete: { delay: 0, minLength: 1 },

                afterTagAdded: function(event, ui) {
                    $("#<%= hdnSelectedParters.ClientID %>")
                        .val($('#<%= txtPartners.ClientID %>').tagit("assignedTags"));
                }
               });


        });

           $( document ).ready(function() {
               CKEDITOR.replace('<%= tbWYSIWYG.ClientID %>');

               $('#<%= txtLooptijdvan.ClientID %>').datepicker({
                   changeMonth: true,
                   changeYear: true,
                   showButtonPanel: true
                  
               });

                $('#<%= txtLooptijdtot.ClientID %>').datepicker({
                   changeMonth: true,
                   changeYear: true,
                   showButtonPanel: true
                  
               });
        });
   
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divMainContent">
    <h1>Nieuw Project</h1>


    <label>Titel:</label> <input id="txtTitel" runat="server" type="text"/><br/>

    <label> Tags:</label>
    <ul id="txtTags" runat="server">
    </ul>
    <label> deelnemers:</label>
    <ul id="txtParticipants" runat="server">
    </ul>
    <label> beheerders:</label>
    <ul id="txtGoverend" runat="server">
    </ul>
    <br/>
    <label>Geldschieters:</label>

      <ul id="txtSponsor" runat="server">  </ul>
    <br/>
    <label> Partners:</label>
    <input id="txtPartners" type="text" runat="server"/><br/>
   
    <label> Looptijd van </label>
    <input id="txtLooptijdvan" type="text" runat="server"/>   <label> tot </label>  <input id="txtLooptijdtot" type="text" runat="server"/> <br/>
        <label>Project thema foto:</label><asp:FileUpload id="FileUploadControl" runat="server" />
  t
    <label> Voorstel:</label>
    <asp:TextBox ID="tbWYSIWYG" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button"/>

    <br/>
        </div>

    <script type="text/javascript">
     
             

    </script>


    <asp:HiddenField ID="hdnSelectedTags" runat="server"/>
    <asp:HiddenField ID="hdnSelectedParticipants" runat="server"/>
    <asp:HiddenField ID="hdnSelectedGoverend" runat="server"/>
    
     <asp:HiddenField ID="hdnSelectedDonators" runat="server"/>
         <asp:HiddenField ID="hdnSelectedParters" runat="server"/>
</asp:Content>
