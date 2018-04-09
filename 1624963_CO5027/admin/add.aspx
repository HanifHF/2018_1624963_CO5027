<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="_1624963_CO5027.admin.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Add Product
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

        <!--Dynamic Navigation start here-->

        <div id="menu">
        <div id="nav">
<ul>
  <li><a class="active" href="add.aspx">Add</a></li>
  <li><a href="edit.aspx">Edit</a></li>
  <li><a href="list.aspx">List</a></li>
  <li><a href="uploadingimage.aspx">Upload</a></li>
</ul>

        </div>
    </div>

    <!--Dynamic Navigation end here-->



    <form id="form1" runat="server">




        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_Item" DataSourceID="ID_SqlDataSrc" DefaultMode="Insert">
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
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ID_SqlDataSrc" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624963_hfdatabaseConnectionString %>" DeleteCommand="DELETE FROM [tbl_Product] WHERE [ID_Item] = @original_ID_Item AND [ID_Name] = @original_ID_Name AND [ID_Display] = @original_ID_Display" InsertCommand="INSERT INTO [tbl_Product] ([ID_Item], [ID_Name], [ID_Display]) VALUES (@ID_Item, @ID_Name, @ID_Display)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Product]" UpdateCommand="UPDATE [tbl_Product] SET [ID_Name] = @ID_Name, [ID_Display] = @ID_Display WHERE [ID_Item] = @original_ID_Item AND [ID_Name] = @original_ID_Name AND [ID_Display] = @original_ID_Display">
            <DeleteParameters>
                <asp:Parameter Name="original_ID_Item" Type="Int32" />
                <asp:Parameter Name="original_ID_Name" Type="String" />
                <asp:Parameter Name="original_ID_Display" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_Item" Type="Int32" />
                <asp:Parameter Name="ID_Name" Type="String" />
                <asp:Parameter Name="ID_Display" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_Name" Type="String" />
                <asp:Parameter Name="ID_Display" Type="String" />
                <asp:Parameter Name="original_ID_Item" Type="Int32" />
                <asp:Parameter Name="original_ID_Name" Type="String" />
                <asp:Parameter Name="original_ID_Display" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="Gmap" runat="server">
</asp:Content>