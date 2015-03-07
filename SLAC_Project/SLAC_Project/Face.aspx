<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Face.aspx.cs" Inherits="SLAC_Project.Face" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/spark.main.css" rel="stylesheet" type="text/css" />
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #default_eventpage {
            margin-left: 250px;
            width: 1000px;
            margin-top: 25px;
        }
        #grids{
            margin-left: 260px;
            width: 800px;
            margin-top:40px;
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
                                <li class="course-navbar-item"><a href="#"><span>Apply leave forms</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SDiscussionForm.aspx"><span>Discussion Forums</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="PublishPaper.aspx"><span>Publish paper</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SResources.aspx"><span>Resources</span><span></span></a></li>
                                <li class="course-navbar-item"><a href="SProfile.aspx"><span>Profile</span><span></span></a></li>
                            </ul>
                    <ul style="list-style-type: none; margin-left: 10px;"></ul>
                </div>
            </div>
        </div>


        <div id="default_eventpage">
            <div id="allcontrols">
                <asp:TextBox ID="txt_writeevent" placeholder="Write status" runat="server" TextMode="MultiLine" Width="500px" Height="100px" CssClass="form-control"></asp:TextBox>
                <asp:FileUpload ID="FileUpload1" runat="server"/>
                <asp:Button ID="btn_postevent" runat="server" Text="Post" CssClass="btn btn-default" OnClick="btn_postevent_Click" />
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
                                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("CLUBNAME") %>' />
                                        <br />

                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("POSTTEXT") %>'></asp:Label><br />
                                        <div id="image">
                                            <asp:Image ID="Image1" runat="server" Width="500px" Height="300px"
                                                ImageUrl='<%# "ImageHandler2.ashx?ID=" + Eval("ID")%>' />
                                        </div>
                                        <asp:LinkButton ID="link_like" runat="server" Text='Like'  />
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
