<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1624963_CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    



<div style="margin-left: 15%;padding:1px 16px;height:1000px;">
<p> <img src="images/logo.jpeg" class="image1" alt="Duchamp London Logo"> </p>
<p class="b"> Includes luxury shirts, trousers, neckties, tailored suits and much more. Duchamp is a British men's clothing and accessories company founded in 1989. p</p>

<table>
  <tr>
   <td> <p> <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9901.502575475579!2d-0.2011436!3d51.6529584!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2f000acc07790ff3!2sDuchamp+London!5e0!3m2!1sms!2sbn!4v1519610579407" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> </p> <br /> <p class="c">Hatherley House, <br/> 15-17 Wood Street,  <br/> Barnet EN5 4AT,  United Kingdom <br/>  <br/>  Tel: 245 7700 <br/> <br/> </td>
   
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
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not  a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtBody"></asp:RegularExpressionValidator>
            <br/>
  		  <p class="f"> Subject: </p>
  		&nbsp;<asp:TextBox ID="txtBody" runat="server" OnTextChanged="txtBody_TextChanged"></asp:TextBox>
  		<br/> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ErrorMessage="RequiredFSubject Cannot Be emptyieldValidator" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
            <br/>
  		&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
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
