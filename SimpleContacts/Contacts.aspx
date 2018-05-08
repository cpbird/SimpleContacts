<%@ Page Title="Contacts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="SimpleContacts.Contacts" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>SimpleContacts</h1>
        <asp:Label ID="SearchContacts" runat="server" Text="Search"></asp:Label>
        <asp:TextBox ID="SearchBox" runat="server"></asp:TextBox>
        <asp:Button ID="SearchButton" runat="server" Text="Submit" OnClick="SearchButton_Click" />
        <br />
        <asp:Button ID="AddButtonID" runat="server" OnClick="AddButton" Text="Add" />
        <br />

        <p class="lead">
            &nbsp;</p>
    </div>

    </asp:Content>