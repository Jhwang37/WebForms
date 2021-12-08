<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebForms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
   

    <div runat="server" id="divMessage" class="message">Welcome to Contact Page.</div>

    <div>
        <label>Name</label>
        <asp:TextBox ID="txtName" CssClass="text-box" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate = "txtName" ErrorMessage="Required" Display="Dynamic" />
    </div>
    <div>
        <label>Email Address</label>
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="Valid email address is required."
            ValidationExpression="@" Display="Dynamic" />
        <asp:RequiredFieldValidator runat="server" ID="rvfEmail" ControlToValidate = "txtEmail" ErrorMessage="Required" Display="Dynamic"/>
    </div>
    <div>
        <label>Age</label>
        <asp:TextBox ID="txtAge" runat="server" />
    </div>
    <div>
        <label>Your Favorite Color:</label>
        <asp:DropDownList ID="ddlColor" runat="server">
            <asp:ListItem Text="Please Choose a Color" Value="" />
            <asp:ListItem Text="Blue" Value="Blue" />
            <asp:ListItem Text="Red" Value="Red" />
            <asp:ListItem Text="Brown" Value="Brown" />
            <asp:ListItem Text="Green" Value="Green" />
        </asp:DropDownList>
    </div>
    <div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Info" OnClick="btnSubmit_Click" />
    </div>

     <div class="message">
         <asp:Literal ID="ltMessage" runat="server" />
    </div>
</asp:Content>
