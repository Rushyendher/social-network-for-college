<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SHome.aspx.cs" Inherits="SLAC_Project.Student.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=IE7" />
    <meta name="fragment" content="!" />
    <meta name="robots" content="NOODP" />
    <meta charset="utf-8" />
    <link href="css/spark.main.css" rel="stylesheet" type="text/css" />


    <style type="text/css">
        #grids {
            margin-left: 250px;
            width: 800px;
        }

        #image {
            margin-left: 180px;
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
                            <a href="Login.aspx">
                                <asp:Label ID="lb_name" runat="server" Text="Logout"></asp:Label></a></li>
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
                                <li class="course-navbar-item"><a href="CIR.aspx"><span>CIR</span><span></span></a>
                                </li>
                                <li class="course-navbar-item"><a href="SNotifications.aspx"><span>Notifications</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SDiscussionForm.aspx"><span>Discussion Forums</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="PublishPaper.aspx"><span>Publish paper</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="GuestHouseBooking.aspx"><span>Guest house booking</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SResources.aspx"><span>Resources</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SProfile.aspx"><span>Profile</span><span></span></a></li>
                            </ul>
                            <ul style="list-style-type: none; margin-left: 10px;"></ul>
                        </div>
                    </div>
                </div>



                <div id="grids">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-hover table-bordered">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("USERID") %>' /><br />
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("POSTTEXT") %>'></asp:Label><br />
                                            <div id="image">
                                                <asp:Image ID="Image1" runat="server" Width="500px" Height="300px"
                                                    ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("ID")%>' />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>


            </div>
        </div>

    </form>
</body>
</html>
