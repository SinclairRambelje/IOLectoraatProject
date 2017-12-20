<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="Projecten.aspx.cs" Inherits="Fontys_Lectoraat_Website.Test3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/listjs/list.min.js">
           
    </script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/list.fuzzysearch.js/0.1.0/list.fuzzysearch.min.js"></script>
    <script>
        $( document ).ready(function() {

         
          

            var options = {
                valueNames: [
                    'content',
            'name',
            'tags',
                    { data: ['id'] }
                
                ],
                page: 3,
                pagination: true,
                
            };


            var Projects = <%=Projects %>;
            var Tags = <%=Tags %>;
            var projectList = new List('projectlist', options);
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

    <h1>Projecten</h1>

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
    </div>

    <div id="projectlist" class="projectlist">




        <ul class="list">
            <li data-id="template">
                <div class="content"></div>

            </li>
        </ul>


        <ul class="pagination"></ul>
    </div>


</asp:Content>






<%--  <div class=" projectlist"></li>
<li><img src="http://fontysblogt.nl/wp-content/uploads/2017/11/Talentmanagement.jpg"></img><div class="test"><h2></h2>
  
  <p></a>
  <br>
  <div class="tagcontainer">Tags:
  <span><a class="tag">UI</a>, <a class="tag">ICT en Techniek</a></span></div>
</div></li>
    <li>item1</li>
    <li>item1</li>
    <li>item1</li>
    <li>item1<br>asd</li>
    <li>item1</li>
</ul>
</div>--%>



<%--    <asp:button class="sort" data-sort="name" ID="btnNameSort" runat="server" text="Sorteer naam" OnClientClick="return false;" />
          <asp:button ID="Button1" runat="server" text="Button" OnClientClick="return false;" />--%>