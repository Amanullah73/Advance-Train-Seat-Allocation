<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ACCOUNTDETAILS.aspx.cs" Inherits="ACCOUNTDETAILS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            color: #00FF00;
            border: 4px solid #333300;
            background-color: #99CC00;
        }
        .style2
        {
            text-align: center;
            font-style: italic;
            font-weight: bold;
        }
        .style3
        {
            text-decoration: underline;
            color: #FF0000;
            font-size: xx-large;
            background-color: #FF6699;
        }
        .style4
        {
            text-decoration: underline;
            color: #333300;
            font-size: xx-large;
            background-color: #FF6699;
        }
        .style5
        {
            text-decoration: underline;
            color: #FF0000;
            font-size: xx-large;
            background-color: #00CC00;
        }
        .style6
        {
            text-decoration: underline;
            color: #FF0066;
            font-size: xx-large;
            background-color: #FF6699;
        }
        .style7
        {
            width: 100%;
            border: 4px solid #000000;
            background-color: #C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="10" style="font-size: 30px; color: Blue; font-weight: bolder;"
        width="100%" border="5" bgcolor="fuchsia" bordercolor="purple">
        <tr>
            <td>
                ACCOUNT DETAILS OF THE PASSENGERS
            </td>
        </tr>
    </table>
    <hr size="10" color="blue" />
    <a href="homepage.aspx">HOME</a>
    <hr size="10" color="blue" />
    <table cellpadding="8" cellspacing="0" class="style7">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="AccNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="AccNo" HeaderText="AccNo" ReadOnly="True" SortExpression="AccNo" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                        <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                        <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True"
                    DeleteCommand="DELETE FROM [Account] WHERE [AccNo] = @AccNo" InsertCommand="INSERT INTO [Account] ([AccNo], [FName], [Lname], [BankName], [BranchName], [Amount], [Date]) VALUES (@AccNo, @FName, @Lname, @BankName, @BranchName, @Amount, @Date)"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Account]"
                    UpdateCommand="UPDATE [Account] SET [FName] = @FName, [Lname] = @Lname, [BankName] = @BankName, [BranchName] = @BranchName, [Amount] = @Amount, [Date] = @Date WHERE [AccNo] = @AccNo">
                    <DeleteParameters>
                        <asp:Parameter Name="AccNo" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="Lname" Type="String" />
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="BranchName" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="AccNo" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AccNo" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="Lname" Type="String" />
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="BranchName" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataKeyNames="AccNo" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None"
                    Height="50px" OnItemInserted="DetailsView1_ItemInserted1" Width="125px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="AccNo" HeaderText="AccNo" ReadOnly="True" SortExpression="AccNo" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                        <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                        <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True"
                    DeleteCommand="DELETE FROM [Account] WHERE [AccNo] = @AccNo" InsertCommand="INSERT INTO [Account] ([AccNo], [FName], [Lname], [BankName], [BranchName], [Amount], [Date]) VALUES (@AccNo, @FName, @Lname, @BankName, @BranchName, @Amount, @Date)"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Account] WHERE ([AccNo] = @AccNo)"
                    UpdateCommand="UPDATE [Account] SET [FName] = @FName, [Lname] = @Lname, [BankName] = @BankName, [BranchName] = @BranchName, [Amount] = @Amount, [Date] = @Date WHERE [AccNo] = @AccNo">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="AccNo" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="AccNo" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="Lname" Type="String" />
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="BranchName" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="AccNo" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AccNo" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="Lname" Type="String" />
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="BranchName" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
    <a href="homepage.aspx">Back</a> <a href="airlinedetails.aspx">firstpage</a>
</body>
</html>
