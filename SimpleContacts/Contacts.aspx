<%@ Page Title="Contacts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="SimpleContacts.Contacts" %>
<script runat="server">
 private void OnDSUpdatedHandler(Object source, SqlDataSourceStatusEventArgs e) {
    if (e.AffectedRows > 0) {
        // Perform any additional processing,
        // such as setting a status label after the operation.
        Label1.Text = Request.LogonUserIdentity.Name +
            " changed user information successfully!";
    }
    else {
        Label1.Text = "No data updated!";
    }
 }
</script>
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
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="ContactID" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Contacts]"
                UpdateCommand="Update Contacts SET FirstName=@FirstName, LastName=@LastName, Note=@Note, StreetAddress=@StreetAddress, 
                CityAddress=@CityAddress, StateAddress=@StateAddress, ZipAddress=@ZipAddress, Email=@Email, Phone=@Phone WHERE ContactID=@ContactID"
                 OnUpdated="OnDSUpdatedHandler">
            </asp:SqlDataSource>
            <asp:Label
          id="Label1"
          runat="server">
      </asp:Label>
        </p>
    </div>

    </asp:Content>