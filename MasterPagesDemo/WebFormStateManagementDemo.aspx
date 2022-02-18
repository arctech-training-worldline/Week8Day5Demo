<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormStateManagementDemo.aspx.cs" Inherits="MasterPagesDemo.WebFormStateManagementDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name: <asp:TextBox runat="server" id="TextBoxName"></asp:TextBox><br/>
            Address: <asp:TextBox runat="server" ID="Address" TextMode="MultiLine"></asp:TextBox><br/>
            
            <h3>ViewState Demo</h3>
            <asp:Button runat="server" id="ButtonSaveViewState" Text="Save ViewState Demo" OnClick="ButtonSaveViewState_OnClick" /><br/>
            <asp:Label runat="server" Id="LabelStatusViewState"></asp:Label>
            
            <h3>Application Demo</h3>
            <asp:Button runat="server" id="ButtonSaveApplication" Text="Save Application Demo" OnClick="ButtonSaveApplication_Click" /><br/>
            <asp:Label runat="server" Id="LabelStatusApplication"></asp:Label>
            
            <h3>Session Demo</h3>
            <asp:Button runat="server" id="ButtonSaveSession" Text="Save Session Demo" OnClick="ButtonSaveSession_Click" /><br/>
            <asp:Label runat="server" Id="LabelStatusSession"></asp:Label>
        </div>
    </form>
</body>
</html>
