<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SResources.aspx.cs" Inherits="SLAC_Project.SResources" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Respurces</title>
    <link href="ResourcesCSS/bootstrap.css" rel='stylesheet' type='text/css' />

        <link href="css/spark.main.css" rel="stylesheet" type="text/css" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
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

        <link href="ResourcesCSS/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <div id="price" class="pricing-plans">
            <div class="container">
                <div class="price-head">
                    <h3>Choose your Year!</h3>

                </div>
                <div class="col-md-4 pricing-grid1">

                    <div class="price-number1">
                        <h4>Year 1</h4>
                    </div>


                    <div class="price-bg">
                        <a href="year1.aspx">
                            <img src="images/Number-1-icon.png" alt="camera" height="200" width="200" /></a>
                    </div>
                </div>



                <div class="col-md-4 pricing-grid2">

                    <div class="price-number2">
                        <h4>Year 2</h4>
                    </div>


                    <div class="price-bg">
                        <a href="#">
                            <img src="images/Number-2-icon.png" alt="camera" height="200" width="200" /></a>
                    </div>
                </div>

                <div class="col-md-4 pricing-grid3">

                    <div class="price-number3">
                        <h4>Year 3</h4>
                    </div>
                    <div class="price-bg">
                        <a href="#">
                            <img src="images/Number-3-icon.png" alt="camera" height="200" width="200" /></a>

                    </div>
                </div>
                <div class="col-md-4 pricing-grid4">

                    <div class="price-number4">
                        <h4>Year 4</h4>
                    </div>
                    <div class="price-bg">
                        <a href="#">
                            <img src="images/Number-4-icon.png" alt="camera" height="200" width="200" /></a>

                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
