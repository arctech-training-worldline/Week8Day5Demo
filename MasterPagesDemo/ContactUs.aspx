<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MasterPagesDemo.ContactUs" %>

<%@ Register Src="StockDisplay.ascx" TagPrefix="mycontrols" TagName="StockDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMainData" runat="server">
    <h1>Our Contact Us Page</h1>
    <p>
        Arctech Info has experience in various industries like Payments, Finance, Pharmaceuticals & Entertainment. We help pharma organizations transform, innovate, and optimize to build tomorrow’s healthcare enterprise. We recognize healthcare needs are global while solutions are local.
    </p>
    We continually work independently or in collaboration with the customer project teams to provide better solutions and deployments. Benefit from our Innovative Network, which brings the best brains together with the intent to create modern solutions for complex business challenges.
    
    <mycontrols:StockDisplay runat="server" />

    <form id="form1" runat="server">
        <p>
            <asp:TextBox runat="server" ID="TextBoxMessage" TextMode="MultiLine"></asp:TextBox><br />
            <asp:Button runat="server" ID="ButtonEmailUs" Text="Email Us" OnClick="ButtonEmailUs_OnClick" />
        </p>
    </form>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="EndingMessage">
    We are lonely please call us!!
    <mycontrols:StockDisplay runat="server" />
</asp:Content>
