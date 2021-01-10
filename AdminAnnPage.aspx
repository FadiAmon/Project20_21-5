<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAnnPage.aspx.cs" Inherits="project2021.zpages.AdminAnnPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter your announcment to everyone&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="115px" Width="323px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
            <br />
            <br />
            <asp:Label ID="msg" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
