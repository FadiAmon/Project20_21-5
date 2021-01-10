<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project2021.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Login Page"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="ID Number"></asp:Label>
            <asp:TextBox ID="IDNtext" runat="server" style="margin-left: 14px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="passtxt" runat="server" style="margin-left: 20px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        <br />
        <p>
            <asp:Label ID="msg" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
