<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultySettings.aspx.cs" Inherits="SLAC_Project.FacultySettings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

        <div id="settings">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="User Name"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="password" TextMode="Password"></asp:TextBox><br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="10 digit mobile"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn-default" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
