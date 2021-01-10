<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherSearch.aspx.cs" Inherits="project2021.zpages.TeacherSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter studnets IDN<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />

            <br />
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
        </div>
    </form>
</body>
</html>
