<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestHouseBooking.aspx.cs" Inherits="SLAC_Project.GuestHouseBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Guest house booking</title>
    <link href="css/gueststyle.css" rel="stylesheet" type="text/css" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css' />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <h1>Booking</h1>
            </div>
            <div>
                <asp:Label ID="lb_error" runat="server" Text="" Visible="false"></asp:Label>
            </div>
            <ul class="left-form">
                <li>
                    <div class="clear"></div>
                    <asp:TextBox ID="txt_N_members" runat="server" placeholder="Number Of Members" class="t1"></asp:TextBox>
                </li>
                <li>
                    <div class="clear"></div>
                    <asp:TextBox ID="txt_G_name" runat="server" placeholder="Name Of Guest" class="t1"></asp:TextBox>

                </li>



                <li>
                    <div class="clear"></div>
                    <asp:DropDownList ID="DropDownList1" runat="server" class="t1">
                        <asp:ListItem Value="-1">Choose Relationship</asp:ListItem>
                        <asp:ListItem>Choose your Relationship</asp:ListItem>
                        <asp:ListItem>Parents</asp:ListItem>
                        <asp:ListItem>LG</asp:ListItem>
                        <asp:ListItem>Relative</asp:ListItem>
                    </asp:DropDownList>


                </li>
                <li>
                    <div class="clear"></div>
                    <asp:TextBox ID="txt_add" runat="server" placeholder="Address" TextMode="MultiLine" class="t1"></asp:TextBox>


                </li>
                <li>
                    <div class="clear"></div>
                    <asp:TextBox ID="txt_mobile" runat="server" placeholder="10 digit Mobile" MaxLength="10" class="t1"></asp:TextBox>


                </li>
                <li>
                    <div class="clear"></div>
                    <asp:TextBox ID="arivaldate" runat="server" placeholder="Arival date"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" ImageUrl="~/images/calendar.png" Width="41px" />
                </li>
                <li>
                    <div id="move">
                        <div class="clear1"></div>
                        <asp:TextBox ID="depdate" runat="server" placeholder="Dep date"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="38px" ImageUrl="~/images/calendar.png" Width="41px" />
                    </div>
                </li>
                <li>
                    <div class="clear"></div>
                    <asp:Button ID="btn_book" runat="server" Text="BOOK" Width="114px" />


                </li>

            </ul>
        </div>
    </form>
</body>
</html>
