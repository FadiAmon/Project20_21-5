<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="project2021.zpages.AddQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add questions to the students
        </div>
        <p>
            <asp:TextBox ID="q" runat="server" Height="24px" Width="212px"></asp:TextBox>
        </p>
        <p>
            Question number
        </p>
        <p>
            <asp:TextBox ID="qn" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        <p>
            add the answers
        </p>
        <p>
            1&nbsp;&nbsp;
            <asp:TextBox ID="a1" runat="server"></asp:TextBox>
        </p>
        <p>
            2&nbsp;&nbsp;
            <asp:TextBox ID="a2" runat="server"></asp:TextBox>
        </p>
        <p>
            3&nbsp;&nbsp;
            <asp:TextBox ID="a3" runat="server"></asp:TextBox>
        </p>
        <p>
            4&nbsp;&nbsp;
            <asp:TextBox ID="a4" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Question" />
        <br />
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
