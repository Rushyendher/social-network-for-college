<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SLAC_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Slac</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <script src="js/jquery.min.js"></script>
    <link href="css/theme-style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <link rel="stylesheet" href="fonts/css/font-awesome.min.css" />

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css' />

    <link href="css/toogle.css" rel="stylesheet" type="text/css" />

    <link href="css/Theme-style2.css" rel="stylesheet" type="text/css"/>

    <script>
        $(function () {
            var pull = $('#pull');
            menu = $('nav ul');
            menuHeight = menu.height();
            $(pull).on('click', function (e) {
                e.preventDefault();
                menu.slideToggle();
            });
            $(window).resize(function () {
                var w = $(window).width();
                if (w > 320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
		</script>
    <script src="js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
			  </script>
    <link rel="stylesheet" href="css/slider.css" type="text/css" />
    <script type="text/javascript" src="js/jquery.cslider.js"></script>
    <script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
    <script type="text/javascript">
        $(function () {

            $('#da-slider').cslider({
                autoplay: true,
                bgincrement: 450
            });

        });
		</script>
    <script type="text/javascript">
        $(function () {

            $('#da-slider1').cslider({
                autoplay: true,
                bgincrement: 450
            });

        });
		</script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="hello" class="top-header">
            <div id="top" class="callbacks_container">
                <ul class="rslides" id="slider4">
                    <li>
                        <img src="images/url.jpg" alt="" />
                    </li>
                    <li>
                        <img src="images/url.jpg" alt="" />
                    </li>
                    <li>
                        <img src="images/url.jpg" alt="" />
                    </li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="container">
                <div class="header">
                    <div class="container">
                        <div class="logo">
                            <a href="#">Together</a>
                        </div>
                        <nav class="top-nav">
                            <ul class="top-nav">
                                <li class="page-scroll"><a href="#" class="scroll"><span id="toggle-login">Login</span></a></li>
                                <li class="page-scroll"><a href="Registration.aspx" class="scroll">Sign Up</a></li>
                            </ul>
                            <a href="#" id="pull">
                                <img src="images/nav-icon.png" title="menu" /></a>
                        </nav>


                        <div id="login">
                            <div id="triangle"></div>
                            <h1>Log in</h1>

                            <div id="form">
                                <asp:Label ID="lb_err" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="txt_userid" runat="server" placeholder="User ID"></asp:TextBox>
                                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
                            </div>

                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="over" class="features text-center">
            <div class="container">
                <h2>Go online to be Together</h2>

            </div>

        </div>
    </form>
</body>
</html>
