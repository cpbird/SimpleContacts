<%--  Web forms in visual studio generate a default form that is used as the start page. 
    I have deleted most of the template html formatting and added a simple title and description
    of this application.
    
    --%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleContacts._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>SimpleContacts</h1>
        <p class="lead">This is a simple demo that uses ASP.NET web forms and SQL server to create a contact list.
            Please click the contact link located in the top right to continue.
        </p>
        

    </div>

</asp:Content>
