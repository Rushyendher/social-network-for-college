<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="year1.aspx.cs" Inherits="SLAC_Project.year1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Year1 Resources</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />

    <style type="text/css">
        #lb_heading {
            font-size: x-large;
            font-family: Verdana, Arial, Helvetica, sans-serif;
        }
    </style>

        <link href="css/spark.main.css" rel="stylesheet" type="text/css" />

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

        <div id="tables">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Cat</th>
                        <th>Code</th>
                        <th>Subject</th>
                        <th>L-T-P</th>
                        <th>Credits</th>
                        <th>Exam Slot</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>H
                        </td>
                        <td>ENG111
                        </td>
                        <td>Communicative English
                        </td>
                        <td>202
                        </td>
                        <td>3
                        </td>
                        <td>G
                        </td>
                    </tr>
                    <tr>
                        <td>S
                        </td>
                        <td>PHY/100/CHY100
                        </td>
                        <td>Physics/Chemistry
                        </td>
                        <td>300
                        </td>
                        <td>3
                        </td>
                        <td>B
                        </td>
                    </tr>
                    <tr>
                        <td>M
                        </td>
                        <td>MAT111
                        </td>
                        <td>Calculus, Matrix Algebra and Ordinary Differential Equations
                        </td>
                        <td>310
                        </td>
                        <td>4
                        </td>
                        <td>A
                        </td>
                    </tr>
                    <tr>
                        <td>G
                        </td>
                        <td>EEE100
                        </td>
                        <td>Electrical Engineering
                        </td>
                        <td>300
                        </td>
                        <td>3
                        </td>
                        <td>C
                        </td>
                    </tr>
                    <tr>
                        <td>G
                        </td>
                        <td>MEC100/CSE100
                        </td>
                        <td>Engineering Mechanics/Computer programming
                        </td>
                        <td>310/300
                        </td>
                        <td>4
                        </td>
                        <td>D
                        </td>
                    </tr>
                    <tr>
                        <td>G
                        </td>
                        <td>MEC181
                        </td>
                        <td>Engineering Drawing
                        </td>
                        <td>103
                        </td>
                        <td>2
                        </td>
                        <td>-
                        </td>
                    </tr>
                    <tr>
                        <td>S
                        </td>
                        <td>PHY181/CHY181
                        </td>
                        <td>Physics Lab/Chemistry Lab
                        </td>
                        <td>003
                        </td>
                        <td>1
                        </td>
                        <td>-
                        </td>
                    </tr>
                    <tr>
                        <td>G
                        </td>
                        <td>MEC180/EEE180
                        </td>
                        <td>WorkshopA/WorkshopB
                        </td>
                        <td>102
                        </td>
                        <td>2
                        </td>
                        <td>-
                        </td>
                    </tr>
                    <tr>
                        <td>G
                        </td>
                        <td>CSE180*
                        </td>
                        <td>Computer Programming Lab
                        </td>
                        <td>003
                        </td>
                        <td>1
                        </td>
                        <td>-
                        </td>
                    </tr>
                    <tr>
                        <td>H
                        </td>
                        <td>CUL101
                        </td>
                        <td>Cultural Education - 1
                        </td>
                        <td>200
                        </td>
                        <td>2
                        </td>
                        <td>H
                        </td>
                    </tr>
                </tbody>
            </table>

            <br />
            <div>
                <asp:Label runat="server" ID="lb_heading" Text="Reference Books"></asp:Label>
            </div>
            <br />
            <div id="grid">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="COURSECODE" HeaderText="Course Code" />
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                                    CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </form>
</body>
</html>
