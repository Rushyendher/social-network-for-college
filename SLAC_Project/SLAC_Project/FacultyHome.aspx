<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyHome.aspx.cs" Inherits="SLAC_Project.FacultyHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #grids {
            margin-left: 250px;
            width: 800px;
        }

        #image {
            margin-left: 180px;
        }

        .ib {
            float: left;
            margin-left: 2px;
            margin-bottom: 2px;
            margin-top: 2px;
        }

        #colors {
            float: right;
            position: absolute;
            top: 100px;
            
          
        }
    </style>
    <link href="css/spark.main.css" rel="stylesheet" type="text/css" />
</head>
<body id="Body" runat="server">
    <form id="form1" runat="server">
        <div role="banner" class="course-topbar container-fluid " id="navbar">
            <div class="row-fluid">
                <div style="float: right;" class="course-topbar-nav-container span9">
                    <h2 class="hidden">Top Navigation Bar</h2>
                    <ul class="course-topbar-nav-list">
                        <li class="course-topbar-nav-list-item">
                            <a href="FacultyHome.aspx">Home</a></li>
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
                                
                                <li class="course-navbar-item"><a href="FacultyNotify.aspx"><span>Notifify Students</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SDiscussionForm.aspx"><span>Discussion Forums</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="FacultyUploads.aspx"><span>Upload Resources</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="FacultyProfile.aspx"><span>Profile</span><span></span></a></li>
                            </ul>
                            <ul style="list-style-type: none; margin-left: 10px;"></ul>
                        </div>
                    </div>
                </div>
                <div style="width: 240px; float: right; position: fixed; right: 20px" class="course-page-sidebar">

                    <div style="width: 100%; background-color: #f8f8f8; padding: 15px; border: 1px solid #d0d0d0;">

                        <div style="width: 195px; height: 147px; border: 2px solid #eee;">
                            <div style="background-color: orange;">
                                <h style="align-content: center; font-size: 20px; margin-left: 50px;">Pick a color</h>
                            </div>
                            <div style="height: 106px; width: 164px; margin-left: 15px;">

                                <asp:ImageButton ID="ImageButton1" class="ib" runat="server" Height="42px" Width="52px" ImageUrl="~/img/red.png" OnClick="ImageButton1_Click" />
                                <asp:ImageButton ID="ImageButton2" class="ib" runat="server" Height="42px" Width="52px" ImageUrl="~/img/blue.png" OnClick="ImageButton2_Click" />
                                <asp:ImageButton ID="ImageButton3" class="ib" runat="server" Height="42px" Width="52px" ImageUrl="~/img/green.png" OnClick="ImageButton3_Click" />
                                <asp:ImageButton ID="ImageButton4" class="ib" runat="server" Height="42px" Width="52px" ImageUrl="~/img/purple.png" OnClick="ImageButton4_Click" />
                                <asp:ImageButton ID="ImageButton5" class="ib" runat="server" Height="42px" Width="52px" ImageUrl="~/img/yellow.png" OnClick="ImageButton5_Click" />
                                <asp:ImageButton ID="ImageButton6" class="ib" runat="server" Height="42px" Width="52px" ImageUrl="~/img/black.png" OnClick="ImageButton6_Click" />

                            </div>
                        </div>
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
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("USERID") %>' /><br />
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("POSTTEXT") %>'></asp:Label><br />
                                            <div id="image">
                                                <asp:Image ID="Image1" runat="server" Width="500px" Height="300px"
                                                    ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("ID")%>' />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        

        </div>
        
            


    </form>
</body>
</html>
