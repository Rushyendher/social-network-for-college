<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CIR.aspx.cs" Inherits="SLAC_Project.CIR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/spark.main.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        #default_forms {
            margin-left: 250px;
            width: 1000px;
            margin-top: 25px;
        }

        #header, #header2, #header3 {
            font-size: medium;
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
                            <a href="CIR.aspx">Home</a></li>
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
                                <li class="course-navbar-item"><a href="SResources.aspx"><span>Resources</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SProfile.aspx"><span>Profile</span><span></span></a></li>
                            </ul>
                            <ul style="list-style-type: none; margin-left: 10px;"></ul>
                        </div>
                    </div>
                </div>
            </div>

            <div id="default_forms">
                <div id="header">
                    <asp:Label ID="Labeel1" runat="server" Text="Take Exam"></asp:Label>
                </div>
                <hr />
                <div>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="TESTNAME" HeaderText="Test Name" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnKEXAM" runat="server" Text="Take Test" OnClick="lnKEXAM_Click"
                                        CommandArgument='<%# Eval("TESTNAME") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div id="header2">
                    <asp:Label ID="Label2" runat="server" Text="Exam Papers of different companies"></asp:Label>
                </div>
                <div id="papers">
                    <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover table-bordered" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="COMPANYPAPER" HeaderText="Paper Name" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                                        CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div id="announcements">
                    <div id="header3">
                        <asp:Label ID="Label1" runat="server" Text="Announcements"></asp:Label>
                    </div>
                    <hr />
                </div>
                <div id="announ">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false"  CssClass="table table-hover table-bordered"></asp:GridView>
                </div>

            </div>

        </div>


    </form>
</body>
</html>
