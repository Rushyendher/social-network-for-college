<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CIRConductExam.aspx.cs" Inherits="SLAC_Project.CIRConductExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #header{
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
    </style>

    <link rel="stylesheet" href="css/Amazon.css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <div id="header">
            <asp:Label ID="Label2" runat="server" Text="Conduct Online Exam"></asp:Label>
        </div>

        <div id="questions">
            <table>
                <tbody>
                    <tr>
                        <td class="col-lg-1 col-md-4">
                            <asp:Label ID="Label1" runat="server" Text="Exam Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_examname" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-1 col-md-4">
                            <asp:Label ID="lb_uid" runat="server" Text="Question"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_conductexam_ques" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-1 col-md-4">
                            <asp:Label ID="lb_q1" runat="server" Text="Option 1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_cexam_q1" runat="server" CssClass="form-control" Width="225px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-1 col-md-4">
                            <asp:Label ID="lb_q2" runat="server" Text="Option 2"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_cexam_q2" runat="server" CssClass="form-control" Width="225px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-1 col-md-4">
                            <asp:Label ID="lb_q3" runat="server" Text="Option 3"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_cexam_q3" runat="server" CssClass="form-control" Width="225px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-1 col-md-4">
                            <asp:Label ID="lb_q4" runat="server" Text="Option 4"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_cexam_q4" runat="server" CssClass="form-control" Width="225px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-1 col-md-4">
                            <asp:Label ID="lb_ans" runat="server" Text="Answer" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_test_ans" runat="server" CssClass="form-control" Width="225px"></asp:TextBox><br />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div id="btn">
            <asp:Button ID="btn_submit_questions" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="btn_submit_questions_Click"  />
        </div>
        <div>
            <asp:Label ID="lb_err" runat="server" Text="" Visible="false"></asp:Label>
        </div>

    </form>
</body>
</html>
