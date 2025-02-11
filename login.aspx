<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 104px;
            border: 6px solid #FFFF00;
            background-color: #800000;
        }
        .style2
        {
            text-align: center;
            font-style: italic;
            font-weight: bold;
        }
        .style3
        {
            color: #CC00FF;
            text-decoration: underline;
            font-size: xx-large;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #FFCC00;
        }
        .style4
        {
            width: 28%;
            height: 233px;
            border: 6px solid #FF6600;
            background-color: #00FF00;
        }
        .style5
        {
            width: 1065px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="16" cellspacing="0" class="style1">
        <tr>
            <td class="style2">
                <span class="style3">WEL COME TO LOGINPAGE</span>
            </td>
        </tr>
    </table>
    <hr size="10" color="lime" />
    <table align="right" cellpadding="10" cellspacing="0" class="style4">
        <tr>
            <td class="style5">
                <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4"
                    BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="~/homepage.aspx" Font-Names="Verdana"
                    Font-Size="0.8em" ForeColor="#333333" TextLayout="TextOnTop">
                    <TextBoxStyle Font-Size="0.8em" />
                    <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </asp:Login>
                <a href="registerpage.aspx">NEW ACCOUNT</a>
            </td>
        </tr>
    </table>
    <img src="image/5r.jpg" />
    </form>
</body>
</html>
