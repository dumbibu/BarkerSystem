<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 262px">
    <form id="form1" runat="server">
        <div>
        </div>
        OwnerID
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        OwnerName<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        OwnerImage:<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Image ID="Image1" runat="server" />  
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insert" />
        <br />
        <asp:Button ID="Button2" runat="server" Height="26px" Text="Go To Products" OnClick="Button2_Click" />
    </form>
</body>
</html>
