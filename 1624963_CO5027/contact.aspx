<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1624963_CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <!--Dynamic Navigation start here-->

        <div id="menu">
        <div id="nav">
<ul>
  <li><a href="default.aspx">Home</a></li>
  <li><a href="product.aspx">Product</a></li>
  <li><a href="about.aspx">About</a></li>
  <li><a class="active" href="contact.aspx">Contact</a></li>
  <li><a href="register.aspx">Register</a></li>
</ul>


        </div>
    </div>

    <!--Dynamic Navigation end here-->

<div style="margin-left: 15%;padding:1px 16px;height:1000px;">
 <p> <img src="images/logo.jpeg" class="image1" alt="Duchamp London Logo"/> </p> 
<p class="b"> Includes luxury shirts, trousers, neckties, tailored suits and much more. Duchamp is a British men's clothing and accessories company founded in 1989. </p>


<table style="margin-left: auto; margin-right:auto; padding:1px 16px;height:1000px;">

  <tr>
   <td> 
       

        <br /> <p class="c">Hatherley House, <br/> 15-17 Wood Street,  <br/> Barnet EN5 4AT,  United Kingdom <br/>  <br/>  Tel: 245 7700 <br/> <br/> </td>
   
    <td> 
 		<p class="a"> In need of help? Kindly fill out the form below and we will get back to you as soon as possible. </p>
    	<form id="form1" runat="server">
   		 &nbsp;<br/> 
            <asp:ValidationSummary ID="Validation_Summary" runat="server" DisplayMode="SingleParagraph" Height="44px" Width="223px" />
            <br />
            <p class="f"> Email: </p>
 		&nbsp;<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
  		<br/> 
            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtBody" Display="None" ErrorMessage="&gt; Please enter email &lt;"></asp:RequiredFieldValidator>
            <br />
            <br/>
  		  <p class="f"> Subject: </p>
  		&nbsp;<asp:TextBox ID="txtBody" runat="server" OnTextChanged="txtBody_TextChanged"></asp:TextBox>
  		<br/> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ErrorMessage="RequiredFSubject Cannot Be emptyieldValidator" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
            <br/>
  		&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
            <br />
            <br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </form>
 	</td>
  </tr>
</table>
    

<br/>
<br/>
</div>


</asp:Content>




<asp:Content ID="Content6" runat="server" contentplaceholderid="Gmap">
                  <div id="map">
           <!--<script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 51.6529584, lng:-0.2033323},
          zoom: 8
        });
      }
    </script>-->

           <script>
      function initMap() {
        var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDKZBJRiw98YyAY844wmYX_tGfBuZyg02g&callback=initMap"
  type="text/javascript"></script>

       </div>
    
  
</asp:Content>
























































































