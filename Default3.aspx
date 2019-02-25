<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:Panel ID="pnlTextBoxes" runat="server"></asp:Panel>
        <div>
            <asp:Button ID="btnAdd"  runat="server" Text="Add" OnClick="AddTextBox" />
           <asp:Button ID="btnGet" runat="server" OnClick="GetTextBoxValues" Text="Get Values" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
