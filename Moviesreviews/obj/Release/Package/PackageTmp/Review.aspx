<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="Moviesreviews.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body  >
    
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
        
                
                 

        <div align="center" style="background-color: black;color: aliceblue;" class="jumbotron  ">
            <h1><b  style="font-family:Segoe ui;font-size:100px;" > <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /> </b></h1>  
            <asp:Label ID="VideoLabel" runat="server" Text='<%# Eval("Video") %>' />
    <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button"  data-toggle="dropdown">Cast
                <span class="caret"></span></button>
                <ul style="background-color: black;" class="dropdown-menu" >
                  <div  style="color: aliceblue;"
                    <asp:Label  ID="CastLabel" runat="server" Text='<%# Eval("Cast") %>' /> 
                                      </div>
                </ul>
              </div>
            
<p><asp:Label ID="RunTimeLabel" runat="server" Text='<%# Eval("RunTime") %>' /> <span class="glyphicon glyphicon-time"></span></p>
              <p><asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />  <span class="glyphicon glyphicon-calendar"></span></p> 
            
            <div  class="container " align="left">
            <h2 style=" font-size: 50px;
    font-family: segoe ui;
    text-align: justify;
    display: block;" class ="media-heading">  Synopsis :</h2>
                </br>
              <p style="font-size: 23px;
    font-family: segoe ui;
    text-align: justify;
    line-height: 1.6;
    display: block;" > <asp:Label ID="SynopsisLabel" runat="server" Text='<%# Eval("Synopsis") %>' />  </p>
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                </div>
            
<div   class="well well-lg" align="left" style="background-color: black;color: aliceblue;" class="jumbotron">
                        <br>
            <h2  style=" font-size: 50px;
    font-family: segoe ui;
    text-align: justify;
    display: block;" > Story : </h2>
    <p style="font-size: 23px;
    font-family: segoe ui;
    text-align: justify;
    line-height: 1.6;
    display: block;" > <asp:Label ID="StoryLabel" runat="server" Class="container" Text='<%# Eval("Story") %>' /> </p>
                 <h2 style=" font-size: 50px;
    font-family: segoe ui;
    text-align: justify;
    display: block;" > Review : </h2>
    </br>
           <p style="font-size: 23px;
    font-family: segoe ui;
    text-align: justify;
    line-height: 1.6;
    display: block;" > <asp:Label ID="ReviewLabel" runat="server" Text='<%# Eval("Review") %>' /> </p>
    </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBMovieReviewsConnectionString2 %>" SelectCommand="SELECT [Video], [Id], [Review], [Story], [Synopsis], [Date], [RunTime], [Cast], [Name] FROM [Reviews] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
