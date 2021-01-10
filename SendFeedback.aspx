<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendFeedback.aspx.cs" Inherits="project2021.zpages.SendFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Tell us what you think<br />
        <asp:TextBox ID="TextBox1" runat="server" Height="141px" Width="291px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Feedback" />
        <br />
        <br />
        <asp:Label ID="msg" runat="server"></asp:Label>
        <br />
    </form>
</body>
</html>
