<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passangerdetails.aspx.cs" Inherits="passangerdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 100%;
            border: 6px solid #CC0000;
            background-color: #FF00FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="10" style="font-size:30px; color:Blue; font-weight:bolder;" width="100%" border="5" bgcolor="fuchsia" bordercolor="purple">
        <tr>
            <td>
               PASSENGER DETAILS
            </td>
        </tr>
    </table>
    
    <hr size="10" color="blue" />
    <a href="homepage.aspx"> HOME</a>
    <hr size="10" color="blue" />
    <table cellpadding="8" class="style3">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="UserName" DataSourceID="SqlDataSource1" 
                    GridLines="Horizontal">
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="Cnumber" HeaderText="Cnumber" 
                            SortExpression="Cnumber" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="PassportNumber" HeaderText="PassportNumber" 
                            SortExpression="PassportNumber" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
                    DeleteCommand="DELETE FROM [Passengers] WHERE [UserName] = @UserName" 
                    InsertCommand="INSERT INTO [Passengers] ([UserName], [FName], [LName], [Cnumber], [EmailID], [Address], [Gender], [Age], [PassportNumber]) VALUES (@UserName, @FName, @LName, @Cnumber, @EmailID, @Address, @Gender, @Age, @PassportNumber)" 
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Passengers]" 
                    UpdateCommand="UPDATE [Passengers] SET [FName] = @FName, [LName] = @LName, [Cnumber] = @Cnumber, [EmailID] = @EmailID, [Address] = @Address, [Gender] = @Gender, [Age] = @Age, [PassportNumber] = @PassportNumber WHERE [UserName] = @UserName">
                    <DeleteParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="LName" Type="String" />
                        <asp:Parameter Name="Cnumber" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Age" Type="String" />
                        <asp:Parameter Name="PassportNumber" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="LName" Type="String" />
                        <asp:Parameter Name="Cnumber" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Age" Type="String" />
                        <asp:Parameter Name="PassportNumber" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="UserName" DataSourceID="SqlDataSource2" 
                    GridLines="Horizontal" Height="50px" 
                    oniteminserted="DetailsView1_ItemInserted1" Width="125px">
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <Fields>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="Cnumber" HeaderText="Cnumber" 
                            SortExpression="Cnumber" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="PassportNumber" HeaderText="PassportNumber" 
                            SortExpression="PassportNumber" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
                    DeleteCommand="DELETE FROM [Passengers] WHERE [UserName] = @UserName" 
                    InsertCommand="INSERT INTO [Passengers] ([UserName], [FName], [LName], [Cnumber], [EmailID], [Address], [Gender], [Age], [PassportNumber]) VALUES (@UserName, @FName, @LName, @Cnumber, @EmailID, @Address, @Gender, @Age, @PassportNumber)" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT * FROM [Passengers] WHERE ([UserName] = @UserName)" 
                    UpdateCommand="UPDATE [Passengers] SET [FName] = @FName, [LName] = @LName, [Cnumber] = @Cnumber, [EmailID] = @EmailID, [Address] = @Address, [Gender] = @Gender, [Age] = @Age, [PassportNumber] = @PassportNumber WHERE [UserName] = @UserName">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="UserName" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="LName" Type="String" />
                        <asp:Parameter Name="Cnumber" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Age" Type="String" />
                        <asp:Parameter Name="PassportNumber" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="LName" Type="String" />
                        <asp:Parameter Name="Cnumber" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Age" Type="String" />
                        <asp:Parameter Name="PassportNumber" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
    <a href="homepage.aspx">Back</a>
    <a href="bookingdetaiils.aspx">nextpage</a>
</body>
</html>
