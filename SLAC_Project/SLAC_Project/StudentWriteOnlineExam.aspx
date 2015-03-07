<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentWriteOnlineExam.aspx.cs" Inherits="SLAC_Project.StudentWriteOnlineExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">




                    <div id="header1">
                <p>Online Test</p>
            </div>
            <hr />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large" ForeColor="#00CC00"></asp:Label>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <hr />
            <div id="questions">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lb_qno" runat="server" Text="Label :-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lb_ques" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <asp:RadioButton ID="rb_op1" runat="server" Text="Optionn1" GroupName="Radio" OnCheckedChanged="rb_op1_CheckedChanged"  /><br />
                    </tr>
                    <tr>
                        <asp:RadioButton ID="rb_op2" runat="server" Text=" " GroupName="Radio" OnCheckedChanged="rb_op2_CheckedChanged1" /><br />
                    </tr>
                    <tr>
                        <asp:RadioButton ID="rb_op3" runat="server" Text="" GroupName="Radio" OnCheckedChanged="rb_op3_CheckedChanged1"  /><br />
                    </tr>
                    <tr>
                        <asp:RadioButton ID="rb_op4" runat="server" Text="" GroupName="Radio"  OnCheckedChanged="rb_op4_CheckedChanged1" /><br />
                    </tr>
                </table>
            </div>
                        <div id="next">
                <asp:Button ID="btn_next_ques" runat="server" Text="Next" CssClass="btn btn-info" OnClick="btn_next_ques_Click" />
            </div>
            <hr />
    </form>
</body>
</html>
