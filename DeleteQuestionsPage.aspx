<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteQuestionsPage.aspx.cs" Inherits="project2021.zpages.EditQuestionsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Edit or Delete a question<br />
            <br />
            enter question number
            <asp:TextBox ID="qn" runat="server" Width="33px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
            <br />
            <asp:Label ID="msg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
