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
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="ContactID" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"  Width="100%" CssClass="myGrid" >
                <AlternatingRowStyle BackColor="White"/>
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" Width="5%"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this contact');"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle Width="5%" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="FirstName" HeaderText="First" SortExpression="FirstName" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="Last" SortExpression="LastName" ItemStyle-Width="10%" >
                    
<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="StreetAddress" HeaderText="Street Address" SortExpression="StreetAddress" ItemStyle-Width="30%">
<ItemStyle Width="30%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="CityAddress" HeaderText="City" SortExpression="CityAddress" ItemStyle-Width="5%">
<ItemStyle Width="5%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="StateAddress" HeaderText="State" SortExpression="StateAddress" ItemStyle-Width="5%">
<ItemStyle Width="5%"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Zip Code" SortExpression="ZipAddress">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ZipAddress") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter 6 digit zip" MaximumValue="6" MinimumValue="6">*</asp:RangeValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ZipAddress") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="5%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email" ItemStyle-Width="10%">
                        <EditItemTemplate>
                            <asp:TextBox ID="EmailId" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailId" ErrorMessage="Enter email">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailId" ErrorMessage="Enter valid email" EnableClientScript="False" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>

<ItemStyle Width="10%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter 10 digit number" MaximumValue="10" MinimumValue="10">*</asp:RangeValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="10%" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" ItemStyle-Width="10%">
<ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter valid email"></asp:RegularExpressionValidator>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <p>
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