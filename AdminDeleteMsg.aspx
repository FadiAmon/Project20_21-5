<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDeleteMsg.aspx.cs" Inherits="project2021.zpages.AdminDeleteMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose the message you want to delete (Enter Message number)<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="554px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Message" />
            <br />
            <br />
            <asp:Label ID="msg" runat="server"></asp:Label>
            <br />
            <br />

            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
        </div>
    </form>
</body>
</html>
