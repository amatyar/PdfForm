<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateTest.aspx.cs" Inherits="CreateTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPosition" Runat="Server" >

    <h2 align="center" > PDF file filled out Test form</h2>
    
    <p>
        <b>Given Name:</b> <asp:TextBox ID="txtGName" Width="22%" runat="server"></asp:TextBox>
        <b>Family Name:</b> <asp:TextBox ID="txtFName" Width="22%" runat="server"></asp:TextBox>
    </p>
    
    <p>
        Address 1: <asp:TextBox ID="txtAdd1" Width="22%" runat="server"></asp:TextBox>
    
        House Number: <asp:TextBox ID="txtHouseNo" Width="5%" runat="server"></asp:TextBox>
    </p>
    <p>
        Address 2: <asp:TextBox ID="txtAdd2" Width="22%" runat="server"></asp:TextBox>
    </p>
    <p>
        Postcode: <asp:TextBox ID="txtPostcode" Width="10%" runat="server"></asp:TextBox>
    </p>
    <p>
        City: <asp:TextBox ID="txtCity" Width="12%" runat="server"></asp:TextBox>
    </p>
    <p>Country :<asp:DropDownList ID="ddlCountry" runat="server">
        <asp:ListItem>Select Country</asp:ListItem>    
        <asp:ListItem>Austria</asp:ListItem>
            <asp:ListItem>Belgium</asp:ListItem>
            <asp:ListItem>Britain</asp:ListItem>
            <asp:ListItem>Bulgaria</asp:ListItem>
            <asp:ListItem>Croatia</asp:ListItem>
            <asp:ListItem>Cyprus</asp:ListItem>
            <asp:ListItem>Czech-Republic</asp:ListItem>
            <asp:ListItem>Denmark</asp:ListItem>
            <asp:ListItem>Estonia</asp:ListItem>
            <asp:ListItem>Finland</asp:ListItem>
            <asp:ListItem>France</asp:ListItem>
            <asp:ListItem>Germany</asp:ListItem>
            <asp:ListItem>Greece</asp:ListItem>
            <asp:ListItem>Hungary</asp:ListItem>
            <asp:ListItem>Ireland</asp:ListItem>
            <asp:ListItem>Italy</asp:ListItem>
            <asp:ListItem>Latvia</asp:ListItem>
            <asp:ListItem>Lithuania</asp:ListItem>
            <asp:ListItem>Luxembourg</asp:ListItem>
            <asp:ListItem>Malta</asp:ListItem>
            <asp:ListItem>Netherlands</asp:ListItem>
            <asp:ListItem>Poland</asp:ListItem>
            <asp:ListItem>Portugal</asp:ListItem>
            <asp:ListItem>Romania</asp:ListItem>
            <asp:ListItem>Slovakia</asp:ListItem>
            <asp:ListItem>Slovenia</asp:ListItem>
            <asp:ListItem>Spain</asp:ListItem>
            <asp:ListItem>Sweden</asp:ListItem>
    </asp:DropDownList></p>
    <p> Gender :<asp:DropDownList ID="ddlGender" runat="server">
        <asp:ListItem>Select Gender</asp:ListItem>
        <asp:ListItem>Man</asp:ListItem>
        <asp:ListItem>Woman</asp:ListItem>     
        
    </asp:DropDownList> </p>

    <p>Height : <asp:TextBox ID="txtHeight" Width="4%" runat="server"></asp:TextBox></p>

    <p>Car driving license : <asp:CheckBox ID="ChbDL" runat="server" /></p>

    <p>
        I  can speak and understand (tick all apply)
        <asp:CheckBoxList ID="ChkList" runat="server" AutoPostBack="true"  RepeatDirection="Horizontal"  >
            <asp:ListItem>Deutsch</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Francais</asp:ListItem>
            <asp:ListItem>Esperanto</asp:ListItem>
            <asp:ListItem>Latin</asp:ListItem>    
        </asp:CheckBoxList>
    </p>
    <p>Favourite colour: <asp:DropDownList ID="ddlColor" runat="server">
        <asp:ListItem>Select a Color</asp:ListItem>
        <asp:ListItem>Red</asp:ListItem>
        <asp:ListItem>Black</asp:ListItem>
        <asp:ListItem>Brown</asp:ListItem>
        <asp:ListItem>Orange</asp:ListItem>
        <asp:ListItem>Yellow</asp:ListItem>
        <asp:ListItem>Green</asp:ListItem>
        <asp:ListItem>Blue</asp:ListItem>
        <asp:ListItem>Violet</asp:ListItem>
        <asp:ListItem>Grey</asp:ListItem>
        <asp:ListItem>White</asp:ListItem>
    </asp:DropDownList>


    </p>
        
    <p> Important : Save the completed PDF form(Use menu file- save)</p>
    <p>
        <asp:Button ID="btnGeneratePDF" Width="30%" runat="server" Text="Generate Complete test Form" OnClick="btnGeneratePDF_Click" />
    </p>
</asp:Content>




