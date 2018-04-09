<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="_1624963_CO5027.admin.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Edit Product
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="Edit_SqlDataSource" DataKeyNames="ID_Item">
            <EditItemTemplate>
                ID_Item:
                <asp:Label ID="ID_ItemLabel1" runat="server" Text='<%# Eval("ID_Item") %>' />
                <br />
                ID_Name:
                <asp:TextBox ID="ID_NameTextBox" runat="server" Text='<%# Bind("ID_Name") %>' />
                <br />
                ID_Display:
                <asp:TextBox ID="ID_DisplayTextBox" runat="server" Text='<%# Bind("ID_Display") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ID_Item:
                <asp:TextBox ID="ID_ItemTextBox" runat="server" Text='<%# Bind("ID_Item") %>' />
                <br />
                ID_Name:
                <asp:TextBox ID="ID_NameTextBox" runat="server" Text='<%# Bind("ID_Name") %>' />
                <br />
                ID_Display:
                <asp:TextBox ID="ID_DisplayTextBox" runat="server" Text='<%# Bind("ID_Display") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_Item:
                <asp:Label ID="ID_ItemLabel" runat="server" Text='<%# Eval("ID_Item") %>' />
                <br />
                ID_Name:
                <asp:Label ID="ID_NameLabel" runat="server" Text='<%# Bind("ID_Name") %>' />
                <br />
                ID_Display:
                <asp:Label ID="ID_DisplayLabel" runat="server" Text='<%# Bind("ID_Display") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:Image ID="ID_photo" runat="server" />
        <asp:SqlDataSource ID="Edit_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624963_hfdatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_Product] WHERE ([ID_Item] = @ID_Item)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_Item" QueryStringField="ID_Item" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    &nbsp;
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Gmap" runat="server">
</asp:Content>
