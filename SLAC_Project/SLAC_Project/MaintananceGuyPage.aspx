<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaintananceGuyPage.aspx.cs" Inherits="SLAC_Project.MaintananceGuyPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maintanance Choose</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <style type="text/css">
        #mar{
            margin-left:250px;
        }
    </style>

    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/spark.main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div role="banner" class="course-topbar container-fluid " id="navbar">
        <div class="row-fluid">
            <div style="float: right;" class="course-topbar-nav-container span9">
                <h2 class="hidden">Top Navigation Bar</h2>
                <ul class="course-topbar-nav-list">
                    <li class="course-topbar-nav-list-item">
                        <a href="MaintananceGuyPage.aspx">Home</a></li>
                    <li tabindex="0" role="button" aria-haspopup="true" aria-expanded="false" aria-owns="course-topbar-my" class="course-topbar-nav-list-item">
                        <a href="Login.aspx">
                            <asp:Label ID="lb_name" runat="server" Text="Logout"></asp:Label></a></li>
                </ul>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <div id="price" class="pricing-plans">
            <div class="container">
                <div class="price-head">
                    <h3>Maintainance</h3>

                </div>



                <div id="mar">
                    <div class="col-md-4 pricing-grid1">

                        <div class="price-number1">
                            <h4>Club</h4>
                            <h4>Registration</h4>
                        </div>
                        <div class="price-bg">
                            <a href="MaintananceGuyClubRegistration.aspx">
                                <img src="images/dslr.png" width="200px" height="200px" />
                            </a>
                        </div>

                    </div>
                    <div class="col-md-4 pricing-grid2">

                        <div class="price-number2">
                            <h4>ID</h4>
                            <h4>Registration</h4>
                        </div>
                        <div class="price-bg">
                            <a href="MaintenanceRegisterYourID.aspx">
                                <img src="images/dslr.png" width="200px" height="200px" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
