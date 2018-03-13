<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="_1624963_CO5027.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    



    <form id="form1" runat="server">
    



<div style="margin-left: 15%;padding:1px 16px;height:1000px;">
<p> <img src="images/logo.jpeg" class="image1" alt="Duchamp London Logo"/> </p>
<p class="b"> try to remove this| Includes luxury shirts, trousers, neckties, tailored suits and much more. Duchamp is a British men's clothing and accessories company founded in 1989. </p>

    
<table>
  <tr>
  	<td>
  	<p class="c">  Have no account yet ? Register NOW !  </p> 
 		    <input type="text" name="fname" placeholder="User Name"/><br/>
  			<input type="text" name="lname" placeholder="Email"/><br/>
  			<input type="text" name="fname" placeholder="Password"/><br/>
  			<input type="text" name="lname" placeholder="Password Confirm"/><br/>       
  			<input type="text" name="lname" placeholder="Password"/><br/>
            <input type="submit"/>
		</td>
  	
  	<td>
  	<p class="c">  Already have an account ? Sign in below. </p>
        <p class="c">  
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </p>
  			<asp:TextBox ID="ID_SignInUserName" runat="server" OnTextChanged="ID_SignInUserName_TextChanged"></asp:TextBox>
        <br />
        <br />
        <p class="c">
  			<asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        </p>
            &nbsp;<asp:TextBox ID="ID_SignInPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BTN_Login" runat="server" Text="Login" OnClick="BTN_Login_Click" />
        <br />
        <br />
        <asp:Literal ID="ID_Register" runat="server"></asp:Literal>

  	</td>
  	
  </tr>
</table>
        <br />
        <br />
</div>
    </form>
</asp:Content>
