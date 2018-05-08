<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Groups.aspx.cs" Inherits="SimpleContacts.Groups" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>SimpleContacts</h1>
    <p>Groups:</p>
    <p>
        <asp:Button ID="NewGroupID" runat="server" OnClick="Button1_Click" Text="New Group" />
    </p>
    <p>
        <asp:Label ID="GroupLabel" runat="server" Text="Group Name:"></asp:Label>
        <asp:TextBox ID="GroupText" runat="server"></asp:TextBox>
        <asp:Button ID="GroupButtonAdd" runat="server" Text="Add" OnClick="GroupButtonAdd_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:HyperLinkField DataTextField="GroupDescription" HeaderText="Group" DataNavigateUrlFields="GroupDescription" DataNavigateUrlFormatString="Members.aspx?GroupId={0}" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [Groups]"></asp:SqlDataSource>
</p>

</asp:Content>
