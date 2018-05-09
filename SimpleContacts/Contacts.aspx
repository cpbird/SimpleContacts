<%@ Page Title="Contacts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="SimpleContacts.Contacts" %>
<script runat="server">
 private void OnDSUpdatedHandler(Object source, SqlDataSourceStatusEventArgs e) {
    if (e.AffectedRows > 0) {
        Label1.Text = Request.LogonUserIdentity.Name +
            " Changed contact information sucessfully!";
    }
    else {
        Label1.Text = "No data updated!";
    }
 }
</script>
<script runat="server">
 private void OnDSDeletedHandler(Object source, SqlDataSourceStatusEventArgs e) {
    if (e.AffectedRows > 0) {
        Label1.Text = Request.LogonUserIdentity.Name +
            " Contact Deleted!";
    }
    else {
        Label1.Text = "No data updated!";
    }
 }
</script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>SimpleContacts</h1>
        <asp:Label ID="SearchContacts" runat="server" Text="Search First or Last Name:"></asp:Label>
        <asp:TextBox ID="SearchBox" runat="server"></asp:TextBox>
        <asp:Button ID="SearchButton" runat="server" Text="Submit" OnClick="SearchButton_Click" />
        <br />
        <asp:Button ID="AddButtonID" runat="server" OnClick="AddButton" Text="Add" />
        <br />

        <p class="lead">
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="ContactID" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                    <asp:BoundField DataField="StreetAddress" HeaderText="StreetAddress" SortExpression="StreetAddress" />
                    <asp:BoundField DataField="CityAddress" HeaderText="CityAddress" SortExpression="CityAddress" />
                    <asp:BoundField DataField="StateAddress" HeaderText="StateAddress" SortExpression="StateAddress" />
                    <asp:BoundField DataField="ZipAddress" HeaderText="ZipAddress" SortExpression="ZipAddress" />
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter email"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid email"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                </Columns>
                <EmptyDataTemplate>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter valid email"></asp:RegularExpressionValidator>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                SelectCommand="SELECT * FROM Contacts"
                UpdateCommand="Update Contacts SET FirstName=@FirstName, LastName=@LastName, Note=@Note, StreetAddress=@StreetAddress, 
                CityAddress=@CityAddress, StateAddress=@StateAddress, ZipAddress=@ZipAddress, Email=@Email, Phone=@Phone WHERE ContactID=@ContactID"
                 OnUpdated="OnDSUpdatedHandler"
                DeleteCommand="DELETE FROM Contacts WHERE ContactID=@ContactID"
                OnDeleted="OnDSDeletedHandler">
            </asp:SqlDataSource>
            <asp:Label id="Label1" runat="server">
      </asp:Label>
        </p>
    </div>

    </asp:Content>