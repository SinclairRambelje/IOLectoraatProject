<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="ProjectBlogs.aspx.cs" Inherits="Fontys_Lectoraat_Website.ProjectBlogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="Scripts/listjs/list.min.js">
           
    </script>
    
    <script>
        $( document ).ready(function() {

         
          

            var options = {
                valueNames: [
                    'content',
            'name',
            'tags',
                    { data: ['id'] }
                
                ],
                page: 6,
                pagination: true,
                
            };


            var Projects = <%=Projectblogs %>;
              var Tags = <%=Tags %>;
           // var Tags = 
            var projectList = new List('projectblogs', options);
            projectList.add( Projects);
            projectList.remove("id", "template");
            projectList.sort('name', { order: "asc" });


            $.each(Tags,function(key, value) 
            {
                $('#tagsselect').append('<option value=' + value.tag + '>' + value.tag + '</option>');
            });

            $('#tagsselect').change(function() {
                var data = $(this).val();

                if ($(this).val() !== "Geen trefwoord") {
                    projectList.filter(function(item) {
                        if  (item.values().tags.indexOf(data) !== -1) {
                            return true;
                        } else {
                            return false;
                        }
                    });
         

                } else {
                    projectList.filter();
                }
               
         
            });
    

        
            $("#openSearch").click(function(e) {

             
                $("#divSearchOptions").toggle('slow');

    
             
            });

           
            $('#searchInput').keyup(function() {
                projectList.search( $('#searchInput').val(),['name']);
          

            });
       
         
            //$('#searchInput').keydown(function (e){
            //    if(e.keyCode == 13){
            //        projectList.search( $('#searchInput').text, ['name']);
            //    }
            //})
         
        

            $('input.name-sort').on('change',
                function() {
                    $('input.name-sort').not(this).prop('checked', false);

                    if ($('#cbDescending').is(':checked'))
                        projectList.sort('name', { order: "desc" });


                    if ($('#cbAscending').is(':checked'))
                        projectList.sort('name', { order: "asc" });

                });


            $('#cbAscending').prop('checked', true);



        });

  
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <h1> Blogs</h1>
   
    
    
    
    <div class="center">
        <a class="refined-search-option" id="openSearch">Verfijn de zoekresultaten +</a>
    </div>
    <div class="search-table hidden" id="divSearchOptions">
        <input type="text" id="searchInput" value="" />





        <br>
        <div class="search-variable">
            <label class="title">Naam</label><br>

            <input class="name-sort" id="cbAscending" type="checkbox" /><label>Oplopend</label><br>
            <input class="name-sort" id="cbDescending" type="checkbox" /><label>Aflopend</label>

        </div>
        <div class="search-variable" style="padding-left: 10px;">
            <label class="title">Trefwoord</label>

            <br>
            <select  id="tagsselect">

                <option selected="selected">Geen trefwoord</option>

            </select>
        </div>
        <div class="search-variable" style="padding-left: 10px;">
            <label class="title">Auteur geselecteerd</label>

            <br>
            <select  id="authorSelect">

                <option selected="selected">Geen auteur geselecteerd</option>

            </select>
        </div>
             <div class="search-variable" style="padding-left: 10px;">
            <label class="title">Project</label>

            <br>
            <select  id="projectSelect">

                <option selected="selected">Geen project geselecteerd</option>

            </select>
        </div>
    </div>

<div id="projectblogs" class="projectblogs">




        <ul class="list projectblogs">
            <li data-id="template">
                <div class="content"></div>

            </li>
        </ul>


        <ul class="pagination"></ul>
    </div>
</asp:Content>
