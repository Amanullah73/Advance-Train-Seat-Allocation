<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: Georgia;
            font-size: x-large;
            font-weight: bold;
            color: #000000;
            width: 297px;
            background-color: #FF9900;
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            color: #000000;
        }
        .style4
        {
            font-size: x-large;
            color: #000000;
        }
        .style5
        {
            font-family: Georgia;
            font-size: x-large;
            font-weight: bold;
            color: #000000;
            height: 51px;
            width: 297px;
            background-color: #FF9900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table background-color ="White" cellpadding="10" width="100%" border="5"
            
            style="font-size: 30px; font-weight: bolder; color: Black; background-color: #FFFFFF;">
            <tr>
                <td>
               Advance Train Seat Allocation 
                </td>
            </tr>
        </table>
        <hr size="10" color="purple" />
        <hr size="10" color="purple" />
        <table cellpadding="10" bgcolor="#cedaf2">
            <tr>
                <td class="style5">
                    <h1 class="style2">
                    <a href="TrainDetails.aspx"><span class="style3">TRAIN DETAILS </span> </a>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <h1 class="style2">
                        <a href="passangerdetails.aspx"><span class="style3">PASSENGER DETAILS </span> </a>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <h1 class="style2">
                    <a href="bookingdetaiils.aspx"><span class="style3">BOOKING DETAILS </span> </a>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <h1>
                    <a href="passagenrform.aspx"><span class="style4">PASSENGER FORM</span></a><span 
                            class="style4"> </span>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <h1 class="style2">
                    <a href="admin/homepage.aspx"><span class="style3">ADMIN
                </span>
                    </h1>
                </td>
            </tr>
        </table>
        <table style="position: absolute; top: 20%; left: 30%;" cellpadding="10" align="right"
            border="5" style="border-color: Blue;">
            <tr>
                <td>
                    <img src="image/11.jpg" style="height: 430px" />&nbsp;
                </td>
            </tr>
        </table>
        <hr size="10" color="lime" />
    </div>
    </form>
</body>
</html>
