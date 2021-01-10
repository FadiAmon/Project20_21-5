<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditQuestionPage.aspx.cs" Inherits="project2021.zpages.EditQuestionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter question number
            <br />
            <br />
            <asp:TextBox ID="qn" runat="server"></asp:TextBox>
            <br />
            <br />
            Enter question<br />
            <br />
            <asp:TextBox ID="q" runat="server" Width="240px"></asp:TextBox>
            <br />
            <br />
            1 <asp:TextBox ID="a1" runat="server"></asp:TextBox>
            <br />
            <br />
            2
            <asp:TextBox ID="a2" runat="server"></asp:TextBox>
            <br />
            <br />
            3
            <asp:TextBox ID="a3" runat="server"></asp:TextBox>
            <br />
            <br />
            4
            <asp:TextBox ID="a4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Edit question" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
