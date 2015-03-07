<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyProfile.aspx.cs" Inherits="SLAC_Project.FacultyProfile" %>

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

    <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />

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
            margin-left: 40px;
            width: 800px;
            margin-top:40px;
        }

        #image {
            margin-left: 180px;
        }
    </style>

    <link href="css/pagerstyle.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div id="header-wrapper">

            <div id="tbox">

                <br />
                <br />
            </div>
            <div id="x">
                <label for="user_name">Hello User1</label><br>
                <label for="quote">Quote</label>
            </div>

        </div>

        <div id="sub-wrapper">
            <ul id="ulist">
                <li><a href="SHome.aspx">Home</a></li>
                <li><a href="#news">Settings</a></li>

            </ul>

        </div>
        <div id="ss-wrapper">
            <span class="button">Update Status</span>
            <div id="triangle"></div>
            <div id="form">
                <asp:TextBox ID="txt_writepost" runat="server" placeholder="What's on your mind?" TextMode="MultiLine"></asp:TextBox>
                <div id="picpost">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btn_post" runat="server" Text="POST" OnClick="btn_post_Click" />
                    <asp:Label ID="lb_success" runat="server" Text=""></asp:Label>
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
                                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("USERID") %>'  />
                                        <br />

                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("POSTTEXT") %>'></asp:Label><br />
                                        <div id="image">
                                            <asp:Image ID="Image1" runat="server" Width="500px" Height="300px"
                                                ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("ID")%>' />
                                        </div>
                                        <asp:LinkButton ID="link_like" runat="server" Text='Like' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
</body>
</html>
