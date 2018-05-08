<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="SimpleContacts.Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>SimpleContacts</h1>
    <p>Groups Members:</p>
    <p>
        &nbsp;</p>
    <p>&nbsp;</p>
    <p>
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
                <asp:BoundField DataField="GroupId" HeaderText="GroupId" SortExpression="GroupId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Contacts] WHERE ([GroupId] = @GroupId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="GroupId" QueryStringField="GroupId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
     <br />
    <br />
    Add a Member:<br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactID" DataSourceID="SqlDataSource2" >
        <Columns>
            <asp:ButtonField Text="Button" CommandName="Select"  />
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
            <asp:BoundField DataField="GroupId" HeaderText="GroupId" SortExpression="GroupId" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Contacts]"></asp:SqlDataSource>
       
    <br />
    <br />
           
</asp:Content>
