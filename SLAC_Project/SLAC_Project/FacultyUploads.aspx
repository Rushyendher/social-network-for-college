﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyUploads.aspx.cs" Inherits="SLAC_Project.FacultyUploads" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FUpload Resources</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />

    <style type="text/css">
        #upload {
            margin-top: 200px;
            margin-left: 550px;
        }

        #header {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


        <div id="upload">
            <asp:TextBox ID="txt_coursecode" runat="server" placeholder="Course Code" CssClass="form-control" Width="225px"></asp:TextBox><br />
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Button ID="btn_upload" runat="server" Text="Upload File" CssClass="btn btn-info" OnClick="btn_upload_Click" />
            <asp:Label ID="lb_msg" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
