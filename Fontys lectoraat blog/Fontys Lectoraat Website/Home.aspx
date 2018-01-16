<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Fontys_Lectoraat_Website.WebForm1" %>
<%@ Import Namespace="System.Activities.Statements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script src="Scripts/listjs/list.min.js"></script>
    <script>
        $( document ).ready(function() {

            var options = {
                valueNames: [
                  'homedisplay',
                     { attr: 'onclick', name: 'li' },
                  { data: ['id'] }
                ]
            };

            var projectList = new List('projectlist', options);

            projectList.add( <%=Projects %>);
            projectList.remove("id", "template");
        });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1>
                Lopende Projecten
            </h1>
    
  <div class="container " id="projectlist">
        <ul class="list">
            <li data-id="template"  >
                <div class="homedisplay" ></div>
            </li>
        </ul>
    </div>

</asp:Content>
