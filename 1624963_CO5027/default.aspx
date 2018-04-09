<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1624963_CO5027._default" %>
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
  <li><a class="active" href="default.aspx">Home</a></li>
  <li><a href="product.aspx">Product</a></li>
  <li><a href="about.aspx">About</a></li>
  <li><a href="contact.aspx">Contact</a></li>
  <li><a href="register.aspx">Register</a></li>
</ul>


        </div>
    </div>

    <!--Dynamic Navigation end here-->

    <div style="margin-left: 15%;padding:1px 16px;height:1000px;">
 

<p> <img src="images/logo.jpeg" class="image1" alt="Duchamp London Logo"/> </p> 
<p class="b"> Includes luxury shirts, trousers, neckties, tailored suits and much more. Duchamp is a British men's clothing and accessories company founded in 1989. </p>

<!--Slide show start here--> 
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/banner1.jpeg" alt="Slide Show 1" height="500" width="1000"/>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/banner2.jpeg" alt="Slide Show 2" height="500" width="1000"/>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/banner3.jpeg" alt="Slide Show 3" height="500" width="1000"/>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>

<br/>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
<!--Slide show end here-->

<!--Table start  here-->
<br/>
<br/>

<table style="margin-left: auto; margin-right:auto; padding:1px 16px;height:1000px;">

  <tr>
   <td> <p> <img src="images/Item1.JPEG" alt="Item1" height="400" width="300"> </p>  <p class="c">   Summer Garden silk tie | White  </p>   <p class="d"> BND 138.00  </p>   <p class="e"> __________________________________ </p>  <p class="f"> View Details  | 	<img src="images/trolley.JPEG" alt="Trolley" height="20" width="20"> Add to cart </p> </td>
    <td> <p> <img src="images/Item2.JPEG" alt="Item2" height="400" width="300"> </p>  <p class="c">   Classical floral silk tie | Green  </p>   <p class="d"> BND 135.00 </p>   <p class="e"> __________________________________ </p>  <p class="f"> View Details  | 	<img src="images/trolley.JPEG" alt="Trolley" height="20" width="20"> Add to cart </p> </td>
  </tr>
  
</table>
    
<br/>
<br/>

</div>
<!--Table end here-->



</asp:Content>
