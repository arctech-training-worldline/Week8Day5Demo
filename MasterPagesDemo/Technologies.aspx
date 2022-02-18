<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeBehind="Technologies.aspx.cs" Inherits="MasterPagesDemo.Technologies" %>

<%@ Register Src="~/StockDisplay.ascx" TagPrefix="uc1" TagName="StockDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMainData" runat="server">
    <h1>Technologies we use</h1>
    <ol>
        <li>HTML</li>
        <li>C#</li>
        <li>Sql Server</li>
        <li>Azure</li>
    </ol>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="EndingMessage">
    Technologies make us who we are. We are in the matrix
    
    <uc1:StockDisplay runat="server" id="StockDisplay" />
</asp:Content>