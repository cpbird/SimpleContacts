<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="SimpleContacts.Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>Groups Members:</p>
    
      <p>  &nbsp;</p>
    <p>&nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MapId" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="MapId" HeaderText="MapId" InsertVisible="False" ReadOnly="True" SortExpression="MapId" />
            <asp:BoundField DataField="ContactId" HeaderText="ContactId" SortExpression="ContactId" />
            <asp:BoundField DataField="GroupId" HeaderText="GroupId" SortExpression="GroupId" />
        </Columns>
    </asp:GridView>
       
   
     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [ContactMapping]"></asp:SqlDataSource>
       
   
     <br />
    <br />
    Add a Member:<br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactID" DataSourceID="SqlDataSource2" >
        <Columns>
            <asp:ButtonField Text="Button" CommandName="Insert"   />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Contacts]"
        InsertCommand="">  
    </asp:SqlDataSource>
       
    <br />
    <br />
           
</asp:Content>
