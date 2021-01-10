<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="project2021.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            width: 73px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Register Page"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Firstname"></asp:Label>
            <asp:TextBox ID="fntxt" runat="server" style="margin-left: 20px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Lastname"></asp:Label>
        <asp:TextBox ID="lntxt" runat="server" style="margin-left: 20px"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="ID Number"></asp:Label>
            <asp:TextBox ID="idtxt" runat="server" style="margin-left: 20px"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="passtxt" runat="server" style="margin-left: 20px"></asp:TextBox>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="repasstxt" runat="server" style="margin-left: 20px"></asp:TextBox>
        </p>
        enter(t,T if you are a teacher or s,S if you are a student)<br />
        Enter type<asp:TextBox ID="Text" runat="server"></asp:TextBox>

                <br />
        <p>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Height="31px" />
        
        </p>
        <p>
            <asp:Label ID="msg" runat="server" Text=""></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    
    </form>
</body>
</html>
