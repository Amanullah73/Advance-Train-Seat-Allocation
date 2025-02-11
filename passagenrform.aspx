<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passagenrform.aspx.cs" Inherits="passagenrform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 2px solid #800000;
            background-color: #00FFFF;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 100%;
            border-left-style: solid;
            border-left-width: 2px;
            border-right: 2px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 2px;
            border-bottom: 2px solid #C0C0C0;
            background-color: #00FF00;
        }
        .style4
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <table cellpadding="10" style="font-size:30px; color:Blue; font-weight:bolder;" width="100%" border="5" bgcolor="fuchsia" bordercolor="purple">
        <tr>
            <td>
               PASSENGER FORM
            </td>
        </tr>
    </table>
    
    <hr size="10" color="blue" />
    <a href="homepage.aspx"> HOME</a>
    <hr size="10" color="blue" />
    
    </div>
   
    <table class="style3">
        <tr>
            <td>
                SRNO</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="ENTER THE SR NO"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                FIRSTNAME</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="ENTER TH FIRST NAME"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                LASTNAME</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="ENTER THE LAST NAME"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                CONTACTNUMBER</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="ENTER THE CONTACT NUMBER"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                EMAILID</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="ENTER YOUR EMAIL ID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                ADRESS</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="ENTER YOUR CURRECT ADRESSS"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                GENDER</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="ENTER GENDER"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                AGE</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="ENTER THEAGE"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                PASSPORTNO</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="ENTER  THE PASSSPORT NO"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
                <input id="Reset1" type="reset" value="reset" /><asp:Label ID="Label1" 
                    runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <img src="image/kmum.jpg" />
    <img src="image/qqqqq.jpg" />
    </form>
</body>
</html>
