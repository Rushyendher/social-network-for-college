<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PublishPaper.aspx.cs" Inherits="SLAC_Project.PublishPaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teach Your Thoughts</title>
    <link href="css/spark.main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({ selector: 'textarea' });
    </script>

    <style type="text/css">
        #write_stuff {
            margin-left: 300px;
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
                            <a href="SHome.aspx">Home</a></li>
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
                                <li class="course-navbar-item"><a href="CIR.aspx"><span>CIR</span><span></span></a>
                                </li>
                                <li class="course-navbar-item"><a href="#"><span>Notifications</span><span></span></a></li>
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

            <table id="write_stuff">


                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Faculty ID"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="500px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>


    </form>
</body>
</html>
