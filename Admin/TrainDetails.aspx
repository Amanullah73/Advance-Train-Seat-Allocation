<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrainDetails.aspx.cs" Inherits="airlinedetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellpadding="10" style="font-size:30px; color:Blue; font-weight:bolder;" width="100%" border="5" bgcolor="fuchsia" bordercolor="purple">
        <tr>
            <td>
                TRAIN DETAILS
            </td>
        </tr>
    </table>
    
    <hr size="10" color="blue" />
    <a href="homepage.aspx"> HOME</a>
    <hr size="10" color="blue" />
    
    </div>
    <p>
        &nbsp;</p>
    <table cellpadding="6" cellspacing="0">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="TrainNumber" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" 
                            ShowEditButton="True" />
                        <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" ReadOnly="True" 
                            SortExpression="TrainNumber" />
                        <asp:BoundField DataField="TrainName" HeaderText="TrainName" 
                            SortExpression="TrainName" />
                        <asp:BoundField DataField="Source" HeaderText="Source" 
                            SortExpression="Source" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" 
                            SortExpression="Destination" />
                        <asp:BoundField DataField="Timing" HeaderText="Timing" 
                            SortExpression="Timing" />
                        <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                        <asp:BoundField DataField="NoOfSeat" HeaderText="NoOfSeat" 
                            SortExpression="NoOfSeat" />
                        <asp:BoundField DataField="Descrioption" HeaderText="Descrioption" 
                            SortExpression="Descrioption" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Train] WHERE [TrainNumber] = @TrainNumber" 
                    
                    InsertCommand="INSERT INTO [Train] ([TrainNumber], [TrainName], [Source], [Destination], [Timing], [Days], [NoOfSeat], [Descrioption]) VALUES (@TrainNumber, @TrainName, @Source, @Destination, @Timing, @Days, @NoOfSeat, @Descrioption)" SelectCommand="SELECT * FROM [Train]" 
                    
                    UpdateCommand="UPDATE [Train] SET [TrainName] = @TrainName, [Source] = @Source, [Destination] = @Destination, [Timing] = @Timing, [Days] = @Days, [NoOfSeat] = @NoOfSeat, [Descrioption] = @Descrioption WHERE [TrainNumber] = @TrainNumber">
                    <DeleteParameters>
                        <asp:Parameter Name="TrainNumber" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TrainName" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Timing" Type="String" />
                        <asp:Parameter Name="Days" Type="String" />
                        <asp:Parameter Name="NoOfSeat" Type="String" />
                        <asp:Parameter Name="Descrioption" Type="String" />
                        <asp:Parameter Name="TrainNumber" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="TrainName" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Timing" Type="String" />
                        <asp:Parameter Name="Days" Type="String" />
                        <asp:Parameter Name="NoOfSeat" Type="String" />
                        <asp:Parameter Name="Descrioption" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="TrainNumber" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None" Height="50px" 
                    oniteminserted="DetailsView1_ItemInserted1" Width="125px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" ReadOnly="True" 
                            SortExpression="TrainNumber" />
                        <asp:BoundField DataField="TrainName" HeaderText="TrainName" 
                            SortExpression="TrainName" />
                        <asp:BoundField DataField="Source" HeaderText="Source" 
                            SortExpression="Source" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" 
                            SortExpression="Destination" />
                        <asp:BoundField DataField="Timing" HeaderText="Timing" 
                            SortExpression="Timing" />
                        <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                        <asp:BoundField DataField="NoOfSeat" HeaderText="NoOfSeat" 
                            SortExpression="NoOfSeat" />
                        <asp:BoundField DataField="Descrioption" HeaderText="Descrioption" 
                            SortExpression="Descrioption" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Train] WHERE [TrainNumber] = @TrainNumber" 
                    InsertCommand="INSERT INTO [Train] ([TrainNumber], [TrainName], [Source], [Destination], [Timing], [Days], [NoOfSeat], [Descrioption]) VALUES (@TrainNumber, @TrainName, @Source, @Destination, @Timing, @Days, @NoOfSeat, @Descrioption)" 
                    SelectCommand="SELECT * FROM [Train] WHERE ([TrainNumber] = @TrainNumber)" 
                    
                    UpdateCommand="UPDATE [Train] SET [TrainName] = @TrainName, [Source] = @Source, [Destination] = @Destination, [Timing] = @Timing, [Days] = @Days, [NoOfSeat] = @NoOfSeat, [Descrioption] = @Descrioption WHERE [TrainNumber] = @TrainNumber">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="TrainNumber" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="TrainNumber" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TrainName" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Timing" Type="String" />
                        <asp:Parameter Name="Days" Type="String" />
                        <asp:Parameter Name="NoOfSeat" Type="String" />
                        <asp:Parameter Name="Descrioption" Type="String" />
                        <asp:Parameter Name="TrainNumber" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="TrainName" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Timing" Type="String" />
                        <asp:Parameter Name="Days" Type="String" />
                        <asp:Parameter Name="NoOfSeat" Type="String" />
                        <asp:Parameter Name="Descrioption" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
    <a href="homepage.aspx">Back</a>
<img src="image/dewqdf.jpg" style="position:absolute; top:30%; left:80%;" />
</body>
</html>
