<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEditPage.aspx.cs" Inherits="SimpleContacts.AddEditPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add/Edit Contact:</h1>
    <table class="AddEditTable">
        <tr>
            <td>
     <asp:Label runat="server" Text="First :" ID="FirstNameLabel"></asp:Label>
            </td>
            <td>
      <asp:TextBox ID="FirstNameID" runat="server"></asp:TextBox>
            </td>
             <td>
     <asp:Label runat="server" Text="Last :" ID="LastNameLabel"></asp:Label>
            </td>
            <td>
      <asp:TextBox ID="LastNameID" runat="server" ></asp:TextBox>
            </td>
            <td>
             <asp:Label runat="server" Text="Email :" ID="EmailLabel"></asp:Label>
            </td>
            <td>
      <asp:TextBox ID="EmailID" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailID" ErrorMessage="Please enter an email.">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailID" ErrorMessage="Enter a valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
             <asp:Label runat="server" Text="Phone :" ID="PhoneLabel"></asp:Label>
            </td>
            <td>
      <asp:TextBox ID="PhoneID" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="PhoneID" ErrorMessage="Enter valid phone number." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
             <asp:Label runat="server" Text="Street :" ID="StreetLabel"></asp:Label>
            </td>
            <td>
      <asp:TextBox ID="StreetID" runat="server" > </asp:TextBox>
            </td>
            <td>
                <asp:Label runat="server" Text="State: " ID="StateLabel"></asp:Label>
                </td>
            <td>
                <asp:DropDownList ID="StateList" runat="server" >
                    <asp:ListItem Value="AL">Alabama</asp:ListItem>
	<asp:ListItem Value="AK">Alaska</asp:ListItem>
	<asp:ListItem Value="AZ">Arizona</asp:ListItem>
	<asp:ListItem Value="AR">Arkansas</asp:ListItem>
	<asp:ListItem Value="CA">California</asp:ListItem>
	<asp:ListItem Value="CO">Colorado</asp:ListItem>
	<asp:ListItem Value="CT">Connecticut</asp:ListItem>
	<asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	<asp:ListItem Value="DE">Delaware</asp:ListItem>
	<asp:ListItem Value="FL">Florida</asp:ListItem>
	<asp:ListItem Value="GA">Georgia</asp:ListItem>
	<asp:ListItem Value="HI">Hawaii</asp:ListItem>
	<asp:ListItem Value="ID">Idaho</asp:ListItem>
	<asp:ListItem Value="IL">Illinois</asp:ListItem>
	<asp:ListItem Value="IN">Indiana</asp:ListItem>
	<asp:ListItem Value="IA">Iowa</asp:ListItem>
	<asp:ListItem Value="KS">Kansas</asp:ListItem>
	<asp:ListItem Value="KY">Kentucky</asp:ListItem>
	<asp:ListItem Value="LA">Louisiana</asp:ListItem>
	<asp:ListItem Value="ME">Maine</asp:ListItem>
	<asp:ListItem Value="MD">Maryland</asp:ListItem>
	<asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	<asp:ListItem Value="MI">Michigan</asp:ListItem>
	<asp:ListItem Value="MN">Minnesota</asp:ListItem>
	<asp:ListItem Value="MS">Mississippi</asp:ListItem>
	<asp:ListItem Value="MO">Missouri</asp:ListItem>
	<asp:ListItem Value="MT">Montana</asp:ListItem>
	<asp:ListItem Value="NE">Nebraska</asp:ListItem>
	<asp:ListItem Value="NV">Nevada</asp:ListItem>
	<asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	<asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	<asp:ListItem Value="NM">New Mexico</asp:ListItem>
	<asp:ListItem Value="NY">New York</asp:ListItem>
	<asp:ListItem Value="NC">North Carolina</asp:ListItem>
	<asp:ListItem Value="ND">North Dakota</asp:ListItem>
	<asp:ListItem Value="OH">Ohio</asp:ListItem>
	<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	<asp:ListItem Value="OR">Oregon</asp:ListItem>
	<asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	<asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	<asp:ListItem Value="SC">South Carolina</asp:ListItem>
	<asp:ListItem Value="SD">South Dakota</asp:ListItem>
	<asp:ListItem Value="TN">Tennessee</asp:ListItem>
	<asp:ListItem Value="TX">Texas</asp:ListItem>
	<asp:ListItem Value="UT">Utah</asp:ListItem>
	<asp:ListItem Value="VT">Vermont</asp:ListItem>
	<asp:ListItem Value="VA">Virginia</asp:ListItem>
	<asp:ListItem Value="WA">Washington</asp:ListItem>
	<asp:ListItem Value="WV">West Virginia</asp:ListItem>
	<asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	<asp:ListItem Value="WY">Wyoming</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
             <asp:Label runat="server" Text="City :" ID="CityLabel"></asp:Label>
            </td>
            <td>
      <asp:TextBox ID="CityID" runat="server"></asp:TextBox>
            </td>
            <td>
             <asp:Label runat="server" Text="Zip Code :" ID="ZipLabel"></asp:Label>
            </td>
            <td>
      <asp:TextBox ID="ZipID" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ZipID" ErrorMessage="Enter a valid zip code." ValidationExpression="\d{5}(-\d{4})?">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:Label runat="server" Text="Note :" ID="NoteLabel"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
            <asp:TextBox ID="NoteID" runat="server"  ></asp:TextBox>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
        </tr>
        <tr>
        <td>
            <asp:Button ID="SaveContact" runat="server" Text="Save Contact" OnClick="SaveContact_Click" />
            <br />
        </td>
            </tr>
        </table>
</asp:Content>
