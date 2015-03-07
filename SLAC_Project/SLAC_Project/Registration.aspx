<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SLAC_Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resgistration</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css' />

</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Sign Up</h1>
        </div>
        <div>
            <asp:Label ID="lb_error" runat="server" Text="" Visible="false"></asp:Label>
        </div>
        <div id="form">
            <ul class="left-form">
                <li>
                    <br />
                    <asp:TextBox ID="txt_userid" runat="server" placeholder="User ID"></asp:TextBox>

                    <div class="clear"></div>
                </li>
                <br />
                <li>
                    <asp:TextBox ID="txt_name" runat="server" placeholder="Name"></asp:TextBox>
                    <div class="clear"></div>
                </li>
                <br />
                <li>
                    <asp:TextBox ID="txt_pwd" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <div class="clear"></div>
                </li>
                <br />
                <li>
                    <asp:TextBox ID="txt_cnfpwd" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                    <div class="clear"></div>
                </li>
                <br />
                <li>
                    <asp:TextBox ID="txt_mobile" runat="server" placeholder="10 digit Mobile" MaxLength="10"></asp:TextBox>
                    <div class="clear"></div>
                </li>
                <br />
                <li>
                    <asp:RadioButton ID="rb_student" runat="server" Text="Student" GroupName="category" Checked="true" />
                    <asp:RadioButton ID="rb_faculty" runat="server" Text="Faculty" GroupName="category" />
                    <div class="clear"></div>
                </li>
                <br />
                <li>
                    <asp:DropDownList ID="ddl_branches" runat="server">
                        <asp:ListItem Value="-1">Choose Department</asp:ListItem>
                        <asp:ListItem Value="1">CSE</asp:ListItem>
                        <asp:ListItem Value="2">EEE</asp:ListItem>
                        <asp:ListItem Value="3">Mech</asp:ListItem>
                        <asp:ListItem Value="4">ECE</asp:ListItem>
                        <asp:ListItem Value="5">EIE</asp:ListItem>
                    </asp:DropDownList>
                    <div class="clear"></div>
                </li>
                <br />
                <li>
                    <asp:Button ID="btn_signup" runat="server" Text="Create Account" OnClick="btn_signup_Click" />
                    <div class="clear"></div>
                </li>

            </ul>
            <div class="clear"></div>
        </div>


    </form>
</body>
</html>
