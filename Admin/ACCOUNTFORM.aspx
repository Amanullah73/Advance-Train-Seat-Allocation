<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ACCOUNTFORM.aspx.cs" Inherits="ACCOUNTFORM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size: xx-large;
            border: 6px solid #800000;
            background-color: #FF6600;
        }
        .style2
        {
            text-align: center;
            color: #00FF00;
            font-size: x-large;
            text-decoration: underline;
            background-color: #CC3300;
        }
        .style3
        {
            width: 60%;
            border: 4px solid #00FFFF;
            background-color: #669900;
        }
        .style4
        {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="10" style="font-size:30px; color:Blue; font-weight:bolder;" width="100%" border="5" bgcolor="fuchsia" bordercolor="purple">
        <tr>
            <td>
                ACCOUNT DETAILS OF THE PASSENGERS
            </td>
        </tr>
    </table>
    
    <hr size="10" color="blue" />
    <a href="homepage.aspx"> HOME</a>
    <hr size="10" color="blue" />
    <img src="image/g54t.jpg" /> 
    
    <table align="right" cellpadding="8" cellspacing="0" class="style3">
        <tr>
            <td>
                ACCOUNTNO</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="ENTER ACCOUNT NUMBER"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                FIRSTNAME</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="ENTER THE FIRST NAME"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                LASTNAME</td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="enter last name" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                BANKNAME</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Required bank name" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                BRANCHNAME</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Required branch name" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                AMOUNT</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="Requiread amount" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                DATE</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Required date" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
                <input id="Reset1" type="reset" value="reset" /></td>
        </tr>
    </table>
    </form>
    
  
</body>
</html>
