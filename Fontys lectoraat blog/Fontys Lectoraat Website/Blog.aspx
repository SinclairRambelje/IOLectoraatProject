<%@ Page Title="" Language="C#" MasterPageFile="~/Fontys.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Fontys_Lectoraat_Website.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class='blog'>
  <div class='first'>
  <div class='header1'>
          <%=Titel %>
  </div>
<div class='details'>
        <%=Details %>
</div>
        <%=BlogImage %>
    
  <p>
    <%=Blogtext %>
</p>    
    <div class='tagcontainer'>
    <%=Tags %>
    </div>
      
                <%=ResearchMethods %>
     <div class="header4" >
 Reactie
</div>
    <div class="reactions">
      <br>
      <label class="name"></label>
      <label class="details"> </label>
      <p>

</p>
    </div>

    <textarea placeholder=' Schrijf hier uw reactie'></textarea>
     <input type='text' placeholder=' Naam*'></input>
    <input type='text' placeholder=' Email*'></input>
  <input type='text' placeholder=' Website'></input>
<button>Reactie Verzenden</button>
  </div>


  
  
  <div class='second'>
      <div class="header2" >
  <%=ProjecTitel %>
  </div>
    <br>
       
         <%=ProjectProposal %>

  <Br /><Br /><a class="project-link">Zie meer over dit project </a>
   
<div class="recent-blogs" > 
 <div class="header2" >
Recenste blogs uit dit onderzoek
        
   

 

</div>
  </div>
  </div>
    </div>
  














</asp:Content>
