<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyDiscussionForum.aspx.cs" Inherits="SLAC_Project.FacultyDiscussionForum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        #header {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }

        #welcome_msg {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: medium;
        }

        #sub_forums {
        }

        #default_forms {
            margin-left: 250px;
            width: 1000px;
            margin-top: 25px;
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
                <asp:Label ID="Labeel1" runat="server" Text="Forums"></asp:Label>
            </div>
            <br />
            <p id="welcome_msg">Welcome to the Discussion Forums. Connect to everyone</p>
            <div id="sub_forums">
                <table class="table table-condensed">
                    <thead>
                        <tr>
                            <th>Sub-Forums
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td>
                                <asp:LinkButton ID="lnk_generaldiscussion" runat="server" Text="Genral Discussion" ForeColor="Blue" Font-Bold="true" OnClick="lnk_generaldiscussion_Click"  /><br />
                                <asp:Label ID="lb_exp1" runat="server" Text="General Discussion about life and everything around you"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="lnk_interactwithfaculty" runat="server" Text="Personal Interaction" ForeColor="Blue" Font-Bold="true" OnClick="lnk_interactwithfaculty_Click" /><br />
                                <asp:Label ID="lb_exp3" runat="server" Text="Place to interact with Students"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </form>
</body>
</html>
