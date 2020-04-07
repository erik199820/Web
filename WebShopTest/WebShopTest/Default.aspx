<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebShopTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container" runat="server" id="textcontainer">
        <div class="row no-gutters">
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:Label runat="server" Text="Menge" CssClass="col-1"></asp:Label>
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:Label runat="server" Text="Artikel-Name" CssClass="col-3"></asp:Label>
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:Label runat="server" Text="Einzelpreis" CssClass="col-1"></asp:Label>
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:Label runat="server" Text="Gesamtpreis" CssClass="col-1"></asp:Label>
        </div>
        <br />
        <div class="row no-gutters">
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:TextBox runat="server" CssClass="col-1" ID="textBoxMenge1" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:TextBox runat="server" CssClass="col-3" ID="textBoxArtikel1" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:TextBox runat="server" CssClass="col-1" ID="textBox1EinzelPreis1" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-1"></asp:Label>
            <asp:TextBox runat="server" CssClass="col-1" ID="textBox1GesamtPreis1" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
    </div>
    <br />
    <br />
    <div class="container" runat="server" id="buttonContainer">
        <div class="row no-gutters">
            <asp:Label runat="server" CssClass="col-7"></asp:Label>
            <asp:Label runat="server" Text="Summe Gesamt" CssClass="col-2"></asp:Label>
            <asp:Textbox runat="server" CssClass="col-1" ID="Gesamt" ReadOnly="true"></asp:Textbox>
        </div>
        <br />
        <div class="row no-gutters">
            <asp:Label runat="server" CssClass="col-8"></asp:Label>
            <asp:Button runat="server" Text="Angaben prüfen" CssClass="col-2" OnClick="Check_Click" />
        </div>
    </div>
    <br />
</asp:Content>
