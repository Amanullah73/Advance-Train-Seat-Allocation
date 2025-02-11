<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            font-family: Algerian;
        }
        .style5
        {
            color: #FFFFFF;
        }
        .style6
        {
            font-family: Algerian;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table background="image/Colorful (4)3.jpg" cellpadding="10" width="100%" border="5"
            style="font-size: 30px; font-weight: bolder; color: Yellow;">
            <tr>
                <td>
                    ADMIN WEB PAGE
                </td>
            </tr>
        </table>
        <hr size="10" color="purple" />
        <hr size="10" color="purple" />
        <table cellpadding="10" bgcolor="#9966ff">
            <tr>
                <td class="style6">
                    <h1 class="style4">
                    <a href="TrainDetails.aspx"><span class="style5">TRAINDETAILS </span> </a>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <h1 class="style4">
                    <a href="passangerdetails.aspx"><span class="style5">PASSENGERDETAILS </span> </a>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <h1 class="style4">
                    <a href="bookingdetaiils.aspx"><span class="style5">BOOKINGDETAILS </span> </a>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <h1 class="style4">
                    <a href="ACCOUNTDETAILS.aspx"><span class="style5">ACCOUNTDETAILS </span> </a>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <h1 class="style4">
                    <a href="ACCOUNTFORM.aspx"><span class="style5">ACCOUNT FORM</span></a><span 
                            class="style5"> </span>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <h1 class="style4">
                    <a href="../homepage.aspx"><span class="style5">HOME
                </span>
                    </h1>
                </td>
            </tr>
        </table>
        <table style="position: absolute; top: 25%; left: 25%;" cellpadding="10" align="right"
            border="5" style="border-color: Blue;">
            <tr>
                <td>
                    <marquee behavior="alternate">
                        <img src="../image/rfg.jpg" />
                        <img src="../image/rrrtyyuui.jpg" />
                    </marquee>
                </td>
            </tr>
        </table>
        <hr size="10" color="lime" />
    </div>
    </form>
</body>
</html>
