<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="FormLists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPosition" Runat="Server">
    <h2>List of PDF Forms</h2>

    <p>
        <b>Select form</b>
        <asp:DropDownList ID="ddlPDFs" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnShowField" runat="server" Text="Show the Form Field" OnClick="btnShowField_Click" />
        <asp:Button ID="btnGenerate" runat="server" Text="Generate sample PDF" OnClick="btnGenerate_Click" />
    </p>
    <hr />
    <asp:BulletedList ID="blFields" runat="server" BulletStyle="Numbered">
    </asp:BulletedList>

</asp:Content>

