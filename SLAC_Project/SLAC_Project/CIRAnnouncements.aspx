<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CIRAnnouncements.aspx.cs" Inherits="SLAC_Project.CIRAnnouncements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #upload {
            margin-top: 200px;
            margin-left: 550px;
        }

        #header {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }

        #content{
            margin-left:100px;

        }
    </style>


    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <asp:Label ID="Label2" runat="server" Text="Make Announcements"></asp:Label>
        </div>


        <div id="content">
            <asp:TextBox ID="txt_content" runat="server" TextMode="MultiLine" Height="80px" Width="500px" CssClass="form-control"></asp:TextBox>

            <asp:Button ID="btn_postcontent" runat="server" Text="Post" CssClass="btn btn-info" Width="100px" OnClick="btn_postcontent_Click" />
            <asp:Label ID="lb_err" runat="server" Text=""></asp:Label>
        </div>

    </form>
</body>
</html>
