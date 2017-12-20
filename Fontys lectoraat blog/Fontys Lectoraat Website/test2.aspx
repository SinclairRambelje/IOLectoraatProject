<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="Fontys_Lectoraat_Website.test2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="Scripts/listjs/list.min.js"></script>
    <script>
        $( document ).ready(function() {

            var options = {
                valueNames: [
                  'homedisplay',
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
 

     <h1>Lopende Projecten</h1>


    <div class="container " id="projectlist">
        <ul class="list">
            <li data-id="template">
                <div class="homedisplay"></div>
            </li>
        </ul>
    </div>
    



</asp:Content>

   <%--  <img id="imgSignature"src="FileHandler.ashx?op=download&id=1" style="width: 304px; height: 228px;">--%>


<%--<div class="container ">
  <h1>Lopende Projecten</h1>
<ul>
  <li><div class="homedisplay">
    <div><P>Team management</P></div>
     <img src="http://fontysblogt.nl/wp-content/uploads/2017/11/Talentmanagement-400x250.jpg" style="width:100%; height:100%;">

   

  </div></li>
    <li>item1</li>
    <li>item1</li>
    <li>item1</li>
    <li>item1</li>
    <li>item1<br>asd</li>
    <li>item1</li>
</ul>
</div>--%>
