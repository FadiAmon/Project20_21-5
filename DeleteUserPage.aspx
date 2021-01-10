<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUserPage.aspx.cs" Inherits="project2021.zpages.DeleteUserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter the ID number to remove user<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete user" />
            <br />
            <br />
            <asp:Label ID="msg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
