<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormRequestResponseDemo.aspx.cs" Inherits="MasterPagesDemo.WebFormRequestResponseDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>This is a Request Response Demo</h1>
            <h3>This is the greeting</h3>
            <asp:Label runat="server" ID="LabelMessage"></asp:Label>
            
            <h3>This is the cookies</h3>
            <asp:Label runat="server" ID="LabelCookies"></asp:Label>
            
            
            <h3>Creating a dummy cookie</h3>
            <asp:Button runat="server" ID="ButtonCreateCookie" OnClick="ButtonCreateCookie_OnClick" Text="Create Dummy Cookie" />
            
            <h3>Saving Dummy Data</h3>
            <asp:Button runat="server" id="ButtonSave" OnClick="ButtonSave_OnClick" text="Save Dummy Data" />
        </div>
    </form>
</body>
</html>
