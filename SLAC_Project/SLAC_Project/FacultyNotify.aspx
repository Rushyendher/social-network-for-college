<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyNotify.aspx.cs" Inherits="SLAC_Project.FacultyNotify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="css/spark.main.css" rel="stylesheet" type="text/css" />
           <style type="text/css">
        #date_txt{
            margin-top:100px;
            margin-left:480px;
        }

        #cal{
            margin-left:380px;
            margin-top:20px;
        }
        #notify{
            margin-top:20px;
            margin-left:270px;
        }

        #btn{
            margin-left:900px;
        }
        #tbl{
            margin-left:380px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

                <div role="banner" class="course-topbar container-fluid " id="navbar">
            <div class="row-fluid">
                <div style="float: right;" class="course-topbar-nav-container span9">
                    <h2 class="hidden">Top Navigation Bar</h2>
                    <ul class="course-topbar-nav-list">
                        <li class="course-topbar-nav-list-item">
                            <a href="FacultyHome.aspx">Home</a></li>
                        <li tabindex="0" role="button" aria-haspopup="true" aria-expanded="false" aria-owns="course-topbar-my" class="course-topbar-nav-list-item">
                            <a href="#">
                                <asp:Label ID="lb_name" runat="server" Text=""></asp:Label></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div style="position: relative;" class="container-fluid">
            <div class="row-fluid">
                <br />
                <div role="menubar" class="coursera-sidebar">


                    <div id="course-page-sidebar" role="navigation">
                        <div class="course-navbar-container">
                            <h2 class="hidden">Side Navigation Bar</h2>
                            <ul class="course-navbar-list">
                                <li class="course-navbar-item"></li>
                                <li class="course-navbar-item">
                                    <a href="SClubEvents.aspx"><span>Clubs</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="#"><span>Notifify Students</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SDiscussionForm.aspx"><span>Discussion Forums</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="FacultyUploads.aspx"><span>Upload Resources</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="FacultyProfile.aspx"><span>Profile</span><span></span></a></li>
                            </ul>
                            <ul style="list-style-type: none; margin-left: 10px;"></ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id ="date_txt1">
                <table id="tbl">
                    <tbody>
                        <tr>
                            <td>
                                <asp:TextBox ID="txt_date" runat="server" CssClass="form-control" Width="255px" placeholder="Pick Your Date"></asp:TextBox>                                
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="cal">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </div>

                        <div id="notify">
                <table>
                    <tbody>
                        <tr>
                            <td class="col-lg-1 col-md-4">
                                <asp:Label ID="lb_notify" runat="server" Text="Notify Student"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_notify" runat="server" CssClass="form-control" Width="600px" TextMode="MultiLine" Height="100px"></asp:TextBox>                                
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <div id="btn">
                <asp:Button ID="btn_notify" runat="server" Text="Notify" CssClass="btn btn-info" OnClick="btn_notify_Click"  />
            </div>
            <div>
                <asp:Label ID="lb_err" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
