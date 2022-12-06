<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Moviesreviews.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Movies Reviews </title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
    
    <div align="center" style="background-color:BLACK ;color:white ;" class="jumbotron container">
      
                <img style="width:20%;" src="images/LOGO1.jpg" />
            </div>

              
</head>
        

    <body  style="background-color:black ;">
    <form id="form1" runat="server">
        
        <asp:DataList align="center" ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" CellPadding="5" CellSpacing="10" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>

               
                <div class="item">
                <a href="Review.aspx?Id=<%# Eval("Id") %>">
                <asp:Image  Width="420"  ID="ImageLabel" runat="server" ImageUrl ='<%# Eval("Image") %>' />
                        <div style="color: WHITE;" class="caption">
                   <h2 align="center"> <asp:Label  ID="NameLabel" runat="server" style="color:white;" Text='<%# Eval("Name") %>' />

                  </h2>
            
                </a>
            </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBMovieReviewsConnectionString %>" SelectCommand="SELECT [Name], [Id], [Image] FROM [Reviews]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
