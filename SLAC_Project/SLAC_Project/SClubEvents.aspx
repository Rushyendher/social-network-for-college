<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SClubEvents.aspx.cs" Inherits="SLAC_Project.SClubEvents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CLUB</title>

    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/spark.main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">


        <div role="banner" class="course-topbar container-fluid">
            <div class="row-fluid">
                <div style="float: right;" class="course-topbar-nav-container span9">
                    <h2 class="hidden">Top Navigation Bar</h2>
                    <ul class="course-topbar-nav-list">
                        <li class="course-topbar-nav-list-item">
                            <a href="SHome.aspx">Home</a></li>
                        <li tabindex="0" role="button" aria-haspopup="true" aria-expanded="false" aria-owns="course-topbar-my" class="course-topbar-nav-list-item">
                            <a href="#">User Name</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="price-head">
                <h3>CLUB</h3>
                <p></p>
            </div>
            <div class="pricing-grids">
                <div class="col-md-4 pricing-grid1">
                    <div class="price-number1">
                        <h4><span>FACE</span></h4>
                    </div>
                    <div class="price-bg">
                        <a href="Face.aspx">
                            <img src="images/com.png" /></a>
                    </div>
                </div>
                <div class="col-md-4 pricing-grid2">
                    <div class="price-number2">
                        <h4><span>SMRITI</span></h4>
                    </div>
                    <div class="price-bg">

                        <a href="#">
                            <img src="images/camera.png" /></a>
                    </div>
                </div>
                <div class="col-md-4 pricing-grid3">
                    <div class="price-number3">
                        <h4><span>MARDHANI</span></h4>
                    </div>
                    <div class="price-bg">
                        <a href="#">
                            <img src="images/Music.png" /></a>

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </form>
</body>
</html>
