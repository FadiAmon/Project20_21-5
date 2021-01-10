<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentGRDPage.aspx.cs" Inherits="project2021.zpages.StudentGRDPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
                Enter students ID number to see his grades<br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <br />
                <br />
                <br />
           <asp:Panel ID="Panel1" runat="server"> </asp:Panel>
        </div>
    </form>
</body>
</html>
