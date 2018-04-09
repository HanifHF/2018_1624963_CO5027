<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="_1624963_CO5027.admin.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>List</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    List of Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">



    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_Item" DataSourceID="ID_SqlDataSrcGridView">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_Item" HeaderText="ID_Item" ReadOnly="True" SortExpression="ID_Item" />
                <asp:BoundField DataField="ID_Name" HeaderText="ID_Name" SortExpression="ID_Name" />
                <asp:BoundField DataField="ID_Display" HeaderText="ID_Display" SortExpression="ID_Display" />
                <asp:ButtonField CommandName="Delete" HeaderText="Remove" ShowHeader="True" Text="Remove" />
                <asp:HyperLinkField DataNavigateUrlFields="ID_Item" DataNavigateUrlFormatString="edit.aspx?ID_Item={0}" HeaderText="Edit" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="ID_Item" DataNavigateUrlFormatString="uploadimage.aspx?Id={0}" HeaderText="Upload Images" Text="Upload Images" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ID_SqlDataSrcGridView" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624963_hfdatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_Product]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tbl_Product] WHERE [ID_Item] = @original_ID_Item AND [ID_Name] = @original_ID_Name AND [ID_Display] = @original_ID_Display" InsertCommand="INSERT INTO [tbl_Product] ([ID_Item], [ID_Name], [ID_Display]) VALUES (@ID_Item, @ID_Name, @ID_Display)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tbl_Product] SET [ID_Name] = @ID_Name, [ID_Display] = @ID_Display WHERE [ID_Item] = @original_ID_Item AND [ID_Name] = @original_ID_Name AND [ID_Display] = @original_ID_Display">
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
