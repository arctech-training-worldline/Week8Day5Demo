<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" 
    AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MasterPagesDemo.Home" %>

<%@ Register Src="~/StockDisplay.ascx" TagPrefix="uc1" TagName="StockDisplay" %>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderMainData">
    <h1>Our Home Page</h1>
    <uc1:StockDisplay runat="server" id="StockDisplay" />
    <p>
        Arctech Info has experience in various industries like Payments, Finance, Pharmaceuticals & Entertainment. We help pharma organizations transform, innovate, and optimize to build tomorrow’s healthcare enterprise. We recognize healthcare needs are global while solutions are local.
    </p>
    We continually work independently or in collaboration with the customer project teams to provide better solutions and deployments. Benefit from our Innovative Network, which brings the best brains together with the intent to create modern solutions for complex business challenges.
    <p>
        How we help<br />
        Domain centric innovations for your business and IT needs<br />
        Scale and adapt to new frameworks and models to cater to the changing needs of the industry<br />
        Business centric approach to deliver your needs and help achieve higher business value and sustainable growth<br />
    </p>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="EndingMessage">
    <uc1:StockDisplay runat="server" id="StockDisplay1" />
</asp:Content>