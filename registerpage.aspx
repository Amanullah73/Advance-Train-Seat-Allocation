<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerpage.aspx.cs" Inherits="registerpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 4px solid #FF00FF;
            background-color: #006600;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            color: #FF0000;
            font-size: xx-large;
            font-family: Aharoni;
            background-color: #FFCC00;
        }
        .style4
        {
            width: 40%;
            border: 6px solid #FFCC00;
            background-color: #FF00FF;
        }
        .style5
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="16" cellspacing="0" class="style1">
        <tr>
            <td class="style2">
                <span class="style3">WEL COME TO REGISTERPAGE</span>
            </td>
        </tr>
    </table>
    </BR> </BR>
    <table cellpadding="6" cellspacing="0" class="style4">
        <tr>
            <td class="style5">
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD"
                    BorderStyle="Solid" BorderWidth="1px" ContinueDestinationPageUrl="~/login.aspx"
                    Font-Names="Verdana" Font-Size="0.8em" Style="text-align: center">
                    <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                    <SideBarButtonStyle ForeColor="White" />
                    <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
                        BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
                    <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
                        BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
                    <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px"
                        Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                    <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
                        BorderWidth="1px" Font-Names="Verdana" ForeColor="#990000" />
                    <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <WizardSteps>
                        <asp:CreateUserWizardStep runat="server" />
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>
            </td>
        </tr>
    </table>
    
    <img src="image/bfgbh.jpg" style="position:absolute; top:30%; left:60%; border-color:Blue;" border="7" />
    </form>
</body>
</html>
