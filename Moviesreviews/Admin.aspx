<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Moviesreviews.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Admin</title>
</head>
<body>
    <h1 align="center"> <b>ADMIN</b> </h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Cast" HeaderText="Cast" SortExpression="Cast" />
                <asp:BoundField DataField="RunTime" HeaderText="RunTime" SortExpression="RunTime" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Synopsis" HeaderText="Synopsis" SortExpression="Synopsis" />
                <asp:BoundField DataField="Story" HeaderText="Story" SortExpression="Story" />
                <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                <asp:BoundField DataField="Gener" HeaderText="Gener" SortExpression="Gener" />
                <asp:BoundField DataField="Video" HeaderText="Video" SortExpression="Video" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBMovieReviewsConnectionString3 %>" DeleteCommand="DELETE FROM [Reviews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Reviews] ([Name], [Cast], [RunTime], [Date], [Synopsis], [Story], [Review], [Gener], [Video], [Image]) VALUES (@Name, @Cast, @RunTime, @Date, @Synopsis, @Story, @Review, @Gener, @Video, @Image)" SelectCommand="SELECT * FROM [Reviews]" UpdateCommand="UPDATE [Reviews] SET [Name] = @Name, [Cast] = @Cast, [RunTime] = @RunTime, [Date] = @Date, [Synopsis] = @Synopsis, [Story] = @Story, [Review] = @Review, [Gener] = @Gener, [Video] = @Video, [Image] = @Image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Cast" Type="String" />
                <asp:Parameter Name="RunTime" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Synopsis" Type="String" />
                <asp:Parameter Name="Story" Type="String" />
                <asp:Parameter Name="Review" Type="String" />
                <asp:Parameter Name="Gener" Type="String" />
                <asp:Parameter Name="Video" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Cast" Type="String" />
                <asp:Parameter Name="RunTime" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Synopsis" Type="String" />
                <asp:Parameter Name="Story" Type="String" />
                <asp:Parameter Name="Review" Type="String" />
                <asp:Parameter Name="Gener" Type="String" />
                <asp:Parameter Name="Video" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Cast:
                <asp:TextBox ID="CastTextBox" runat="server" Text='<%# Bind("Cast") %>' />
                <br />
                RunTime:
                <asp:TextBox ID="RunTimeTextBox" runat="server" Text='<%# Bind("RunTime") %>' />
                <br />
                Date:
                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                <br />
                Synopsis:
                <asp:TextBox ID="SynopsisTextBox" runat="server" Text='<%# Bind("Synopsis") %>' />
                <br />
                Story:
                <asp:TextBox ID="StoryTextBox" runat="server" Text='<%# Bind("Story") %>' />
                <br />
                Review:
                <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Gener:
                <asp:TextBox ID="GenerTextBox" runat="server" Text='<%# Bind("Gener") %>' />
                <br />
                Video:
                <asp:TextBox ID="VideoTextBox" runat="server" Text='<%# Bind("Video") %>' />
                <br />
                Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Cast:
                <asp:TextBox ID="CastTextBox" runat="server" Text='<%# Bind("Cast") %>' />
                <br />
                RunTime:
                <asp:TextBox ID="RunTimeTextBox" runat="server" Text='<%# Bind("RunTime") %>' />
                <br />
                Date:
                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                <br />
                Synopsis:
                <asp:TextBox ID="SynopsisTextBox" runat="server" Text='<%# Bind("Synopsis") %>' />
                <br />
                Story:
                <asp:TextBox ID="StoryTextBox" runat="server" Text='<%# Bind("Story") %>' />
                <br />
                Review:
                <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Gener:
                <asp:TextBox ID="GenerTextBox" runat="server" Text='<%# Bind("Gener") %>' />
                <br />
                Video:
                <asp:TextBox ID="VideoTextBox" runat="server" Text='<%# Bind("Video") %>' />
                <br />
                Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Cast:
                <asp:Label ID="CastLabel" runat="server" Text='<%# Bind("Cast") %>' />
                <br />
                RunTime:
                <asp:Label ID="RunTimeLabel" runat="server" Text='<%# Bind("RunTime") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
                <br />
                Synopsis:
                <asp:Label ID="SynopsisLabel" runat="server" Text='<%# Bind("Synopsis") %>' />
                <br />
                Story:
                <asp:Label ID="StoryLabel" runat="server" Text='<%# Bind("Story") %>' />
                <br />
                Review:
                <asp:Label ID="ReviewLabel" runat="server" Text='<%# Bind("Review") %>' />
                <br />
                Gener:
                <asp:Label ID="GenerLabel" runat="server" Text='<%# Bind("Gener") %>' />
                <br />
                Video:
                <asp:Label ID="VideoLabel" runat="server" Text='<%# Bind("Video") %>' />
                <br />
                Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
