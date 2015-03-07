<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyStudentInteraction.aspx.cs" Inherits="SLAC_Project.FacultyStudentInteraction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Interact with faculty</title>
    <style type="text/css">
        #header {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }

        #welcome_msg {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: medium;
        }

        #default_forms {
            margin-left: 250px;
            width: 1000px;
            margin-top: 25px;
        }

        #header2 {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: medium;
        }
    </style>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/spark.main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div role="banner" class="course-topbar container-fluid " id="navbar">
            <div class="row-fluid">
                <div style="float: right;" class="course-topbar-nav-container span9">
                    <h2 class="hidden">Top Navigation Bar</h2>
                    <ul class="course-topbar-nav-list">
                        <li class="course-topbar-nav-list-item">
                            <a href="SHome.aspx">Home</a></li>
                        <li tabindex="0" role="button" aria-haspopup="true" aria-expanded="false" aria-owns="course-topbar-my" class="course-topbar-nav-list-item">
                            <a href="#">
                                <asp:Label ID="lb_name" runat="server" Text=""></asp:Label></a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div role="menubar" class="coursera-sidebar">


            <div id="course-page-sidebar" role="navigation">
                <div class="course-navbar-container">
                    <h2 class="hidden">Side Navigation Bar</h2>
                    <ul class="course-navbar-list">
                        <li class="course-navbar-item"></li>
                        <li class="course-navbar-item">
                            <a href="SClubEvents.aspx"><span>Clubs</span><span></span></a></li>
                        <li class="course-navbar-item"><a href="#"><span>CIR</span><span></span></a>
                        </li>
                        <li class="course-navbar-item"><a href="#"><span>Apply leave forms</span><span></span></a></li>
                        <li class="course-navbar-item"><a href="#"><span>Publish Paper</span><span></span></a></li>
                        <li class="course-navbar-item"><a href="SResources.aspx"><span>Resources</span><span></span></a></li>
                        <li class="course-navbar-item"><a href="#"><span>Post Tutorials</span><span></span></a></li>
                        <li class="course-navbar-item"><a href="SProfile.aspx"><span>Profile</span><span></span></a></li>
                    </ul>
                    <ul style="list-style-type: none; margin-left: 10px;"></ul>
                </div>
            </div>
        </div>

        <div id="default_forms">
            <div id="header">
                <asp:Label ID="Labeel1" runat="server" Text="Study Groups"></asp:Label>
            </div>
            <br />
            <p id="welcome_msg">Place to interact with your faculty</p>

            <br />
            <hr />

            <div id="grids">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div id="content">
                            <asp:TextBox ID="txt_facultyid" runat="server" CssClass="form-control" placeholder="FacultyID" Width="215px"></asp:TextBox>
                            <asp:TextBox ID="txt_content" runat="server" TextMode="MultiLine" Height="80px" Width="500px" placeholder="Write query" CssClass="form-control"></asp:TextBox>

                            <asp:Button ID="btn_postcontent" runat="server" Text="Post" CssClass="btn btn-info" Width="100px" OnClick="btn_postcontent_Click" />
                                        <asp:Label ID="lb_err" runat="server" Text=""></asp:Label>
                        </div>
                        <hr />
                        <div id="gdview">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered">
                            </asp:GridView>
                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

        </div>




    </form>
</body>
</html>
