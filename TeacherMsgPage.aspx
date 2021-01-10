<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherMsgPage.aspx.cs" Inherits="project2021.zpages.TeacherMsgPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter your message to the students
            <br />
        </div>
        <asp:TextBox ID="TextBox" runat="server" Height="173px" Width="373px"></asp:TextBox>
        <p>
            Message number<asp:TextBox ID="msgnm" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
        </p>
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
