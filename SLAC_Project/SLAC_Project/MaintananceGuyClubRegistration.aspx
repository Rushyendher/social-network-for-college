<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaintananceGuyClubRegistration.aspx.cs" Inherits="SLAC_Project.MaintananceGuyClubRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Club Registeration</title>
    <style type="text/css">
        body {
            background: #eee;
        }

        form {
            padding-bottom: 2em;
            margin-left: 400px;
        }

        .clear {
            clear: both;
        }

        .t1 {
            font-family: 'Open Sans', sans-serif;
            padding: 0.7em 2em 0.7em 1em;
            color: #000;
            font-size: 15px;
            float: left;
            font-family: 'Open Sans', sans-serif;
            width: 300px;
            padding: 0.7em 2em 0.7em 1em;
            border: none;
            font-size: 15px;
            float: left;
            outline: none;
        }

        .left-form li {
            display: block;
            margin-bottom: 10px;
        }

        .t1:focus {
            outline: none;
            box-shadow: 0px 0px 4px purple;
            border-radius: 2px;
        }

        .t1hover {
            border: 1px solid #999;
        }

        #Button1 {
            padding: 10px 19px;
            border-radius: 0;
            -webkit-border-radius: 0.3em;
            -moz-border-radius: 0.3em;
            -o-border-radius: 0.3em;
            color: #4D4949;
            background: #F3F3F3;
            border: 1px solid #000;
            font-weight: bold;
            font-size: 15px;
            outline: none;
            transition: all 0.5s ease-out;
            -webkit-transition: all 0.5s ease-out;
            -moz-transition: all 0.5s ease-out;
            -ms-transition: all 0.5s ease-out;
            -o-transition: all 0.5s ease-out;
            margin-top: 20px;
            cursor: pointer;
        }

            #Button1:hover {
                background-color: purple;
                color: #fff;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <ul class="left-form">
            <li>
                <asp:DropDownList ID="ddl_selectclub" runat="server" placeholder="Chosse Club" class="t1">
                    <asp:ListItem Value="-1">Chose..</asp:ListItem>
                    <asp:ListItem Value="1">FACE</asp:ListItem>
                    <asp:ListItem Value="2">SMRITI</asp:ListItem>
                    <asp:ListItem Value="3">MARDHANI</asp:ListItem>
                </asp:DropDownList>

                <div class="clear"></div>
            </li>
            <li>
                <asp:TextBox ID="txt_id" runat="server" placeholder="Member ID" class="t1"></asp:TextBox>
                <div class="clear"></div>
            </li>
            <asp:Button ID="Button1" runat="server" Text="Register" value="But" OnClick="Button1_Click" />

            <asp:Label ID="lb_success" runat="server" Text=""></asp:Label>
            <div class="clear"></div>
        </ul>

        <div class="clear"></div>
    </form>
</body>
</html>
