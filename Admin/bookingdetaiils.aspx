<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingdetaiils.aspx.cs"
    Inherits="bookingdetaiils" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 100%;
            border: 4px solid #FF6600;
            background-color: #669900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="10" style="font-size: 30px; color: Blue; font-weight: bolder;"
        width="100%" border="5" bgcolor="fuchsia" bordercolor="purple">
        <tr>
            <td>
                BOOKING DETAILS OF THE PASSENGER
            </td>
        </tr>
    </table>
    <hr size="10" color="blue" />
    <a href="homepage.aspx">HOME</a>
    <hr size="10" color="blue" />
    <table cellpadding="8" cellspacing="0" class="style2">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="BookingId" DataSourceID="SqlDataSource1">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" 
                            ShowEditButton="True" />
                        <asp:BoundField DataField="BookingId" HeaderText="BookingId" ReadOnly="True" 
                            SortExpression="BookingId" />
                        <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" 
                            SortExpression="TrainNumber" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Source" HeaderText="Source" 
                            SortExpression="Source" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" 
                            SortExpression="Destination" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Booking] WHERE [BookingId] = @BookingId" 
                    
                    InsertCommand="INSERT INTO [Booking] ([BookingId], [TrainNumber], [Date], [Source], [Destination], [Price]) VALUES (@BookingId, @TrainNumber, @Date, @Source, @Destination, @Price)" SelectCommand="SELECT * FROM [Booking]" 
                    
                    UpdateCommand="UPDATE [Booking] SET [TrainNumber] = @TrainNumber, [Date] = @Date, [Source] = @Source, [Destination] = @Destination, [Price] = @Price WHERE [BookingId] = @BookingId">
                    <DeleteParameters>
                        <asp:Parameter Name="BookingId" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="BookingId" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookingId" Type="String" />
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="BookingId" DataSourceID="SqlDataSource2" 
                    Height="57px" oniteminserted="DetailsView1_ItemInserted1" Width="253px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <Fields>
                        <asp:BoundField DataField="BookingId" HeaderText="BookingId" ReadOnly="True" 
                            SortExpression="BookingId" />
                        <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" 
                            SortExpression="TrainNumber" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Source" HeaderText="Source" 
                            SortExpression="Source" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" 
                            SortExpression="Destination" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Booking] WHERE [BookingId] = @BookingId" 
                    InsertCommand="INSERT INTO [Booking] ([BookingId], [TrainNumber], [Date], [Source], [Destination], [Price]) VALUES (@BookingId, @TrainNumber, @Date, @Source, @Destination, @Price)" 
                    SelectCommand="SELECT * FROM [Booking] WHERE ([BookingId] = @BookingId)" 
                    
                    UpdateCommand="UPDATE [Booking] SET [TrainNumber] = @TrainNumber, [Date] = @Date, [Source] = @Source, [Destination] = @Destination, [Price] = @Price WHERE [BookingId] = @BookingId">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="BookingId" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="BookingId" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="BookingId" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookingId" Type="String" />
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
    <a href="homepage.aspx">Back</a> <a href="ACCOUNTDETAILS.aspx">nextpage</a>
</body>
</html>
