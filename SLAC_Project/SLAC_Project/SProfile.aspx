<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SProfile.aspx.cs" Inherits="SLAC_Project.Student.SProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="6cors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/profile_bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--theme-style-->
    <link href="css/profile.css" rel="stylesheet" type="text/css" media="all" />

    <link href="css/ProfilePost.css" rel="stylesheet" type="text/css" />


    <link rel="Stylesheet" type="text/css" href="css/uploadify.css" />
    <script type="text/javascript" src="scripts/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.uploadify.js"></script>


    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />


    <!--//theme-style-->
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css' />
    <!--//fonts-->
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>

    <style type="text/css">
        #grids {
            margin-left: 300px;
            width: 800px;
            position:absolute;
            top: 710px;
        }
        body{
            background-color:#eee;
        }
        #image {
            margin-left: 180px;
        }

       #header {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size:medium;
            margin-left:270px;

        }
       #form{
           margin-left:250px;
           margin-top:30px;
            left: 10px;
            top :-10px;
        }        
        #picpost {
            width: 435px;
        }
    </style>

    <link href="css/pagerstyle.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">

        <div class="header" id="home">
            <div class="header-top">
                <a href="index.html">
                    <img src="images/logo-2.png" alt="" /></a>
                <h2>WELCOME TO OUR SITE</h2>

                <h1>We create beautiful website</h1>
                <div class="header-top-bottom">

                    <asp:Label ID="lb_name" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lb_qoute" runat="server" Text="Just keep going"></asp:Label>

                </div>
            </div>
            <div class="header-home">
                <div class="fixed-header">
                    <div class="h_menu4">
                        <!-- start h_menu4 -->
                        <div class="header-left">
                            <div class="header-left-logo">
                            </div>
                            <div class="header-left-text">
                                <a class="toggleMenu" href="#">
                                    <img src="images/menu-icon.png" alt="" /></a>
                                <ul class="nav">
                                    <li><a href="SHome.aspx">Home</a></li>
                                    <li><a href="StudentSettings.aspx">Settings</a></li>

                                </ul>
                            </div>
                            <div class="clearfix"></div>
                            <script type="text/javascript" src="js/nav.js"></script>
                            <script type="text/javascript">
                                jQuery(document).ready(function ($) {
                                    $(".scroll").click(function (event) {
                                        event.preventDefault();
                                        $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                                    });
                                });
                            </script>
                            <!--script-->
                            <script>
                                $(document).ready(function () {
                                    $(".nav li a").click(function () {
                                        $(this).parent().addClass("active");
                                        $(this).parent().siblings().removeClass("active");
                                    });
                                });
                            </script>
                        </div>
                        <div class="clearfix">&nbsp;</div>
                    </div>
                    <!-- end h_menu4 -->
                </div>
            </div>
        </div>

       

        <div id="form">
            <asp:TextBox ID="txt_writepost" runat="server" CssClass="form-control" placeholder="What's on your mind?" TextMode="MultiLine"></asp:TextBox>
            <div id="picpost">
                <asp:Button ID="btn_post" runat="server" Text="POST" OnClick="btn_post_Click" CssClass="btn-default" />
                <asp:Label ID="lb_success" runat="server" Text=""></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
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
                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("USERID") %>' OnClick="LinkButton1_Click" />
                                    <br />

                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("POSTTEXT") %>'></asp:Label><br />
                                    <div id="image">
                                        <asp:Image ID="Image1" runat="server" Width="500px" Height="300px"
                                            ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("ID")%>' />
                                    </div>
                                    <asp:LinkButton ID="link_like" runat="server" Text='Like' OnClick="link_like_Click" />
                                    <asp:LinkButton ID="lnk_share" runat="server" Text='Share' OnClick="lnk_share_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
