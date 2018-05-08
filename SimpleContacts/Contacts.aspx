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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ContactID" HeaderText="ContactID" InsertVisible="False" ReadOnly="True" SortExpression="ContactID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                    <asp:BoundField DataField="StreetAddress" HeaderText="StreetAddress" SortExpression="StreetAddress" />
                    <asp:BoundField DataField="CityAddress" HeaderText="CityAddress" SortExpression="CityAddress" />
                    <asp:BoundField DataField="StateAddress" HeaderText="StateAddress" SortExpression="StateAddress" />
                    <asp:BoundField DataField="ZipAddress" HeaderText="ZipAddress" SortExpression="ZipAddress" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ></asp:SqlDataSource>
        </p>
    </div>

    </asp:Content>