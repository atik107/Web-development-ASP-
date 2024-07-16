<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_dashboard_01.aspx.cs" Inherits="ASP_project_01.Admin_dashboard_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous" />
    <link rel="stylesheet" href="CSS/admin_01.css" />
    <title>Admin Dashboard</title>
    

    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/bootstrap.esm.js"></script>
    <script src="Scripts/bootstrap.esm.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

 
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.rtl.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.rtl.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-reboot.css" rel="stylesheet" />
    <link href="Content/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-reboot.rtl.css" rel="stylesheet" />
    <link href="Content/bootstrap-reboot.rtl.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-utilities.css" rel="stylesheet" />
    <link href="Content/bootstrap-utilities.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-utilities.rtl.css" rel="stylesheet" />
    <link href="Content/bootstrap-utilities.rtl.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>




<body>
    <form runat="server">
        <div class="side-menu">
            <div class="brand-name">
                <h2>Admin Dashboard</h2>
            </div>

            <ul> 

                <li><asp:Button ID="Button4" runat="server" Text="Patient Info" type="button" class="btn btn-primary"/>&nbsp;</li>
                <li><asp:Button ID="Button5" runat="server" Text="Patient Info" type="button" class="btn btn-primary"/>&nbsp;</li>
                <li><asp:Button ID="Button6" runat="server" Text="Patient Info" type="button" class="btn btn-primary"/>&nbsp;</li>
           
            </ul>
        </div>
        <div class="container">
            <div class="header">
                <div class="nav">
                    <div class="search">
                        <input type="text" placeholder="Search.." />
                        <button type="submit"><img src="search.png" alt="" /></button>
                    </div>
                    <div class="user">
                        <a href="#" class="btn">Add New</a>
                        <img src="notifications.png" alt="" />
                        <div class="img-case">
                            <img src="user.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="cards">
                    <div class="card">
                        <div class="box">
                            <h1>2194</h1>
                            <h3>Students</h3>
                        </div>
                        <div class="icon-case">
                            <img src="students.png" alt="" />
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>53</h1>
                            <h3>Teachers</h3>
                        </div>
                        <div class="icon-case">
                            <img src="teachers.png" alt="" />
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>5</h1>
                            <h3>Schools</h3>
                        </div>
                        <div class="icon-case">
                            <img src="schools.png" alt="" />
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>350000</h1>
                            <h3>Income</h3>
                        </div>
                        <div class="icon-case">
                            <img src="income.png" alt="" />
                        </div>
                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                    </asp:Panel>
                </div>
                <div class="content-2">
                    <div class="recent-payments">
                        <div class="title">
                            <h2>Recent Payments</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                    </div>
                    <div class="new-students">
                        <div class="title">
                            <h2>New Students</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <asp:GridView ID="GridViewStudents" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField HeaderText="Profile">
                                    <ItemTemplate>
                                        <img src="user.png" alt="" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Name" DataField="Name" />
                                <asp:TemplateField HeaderText="Option">
                                    <ItemTemplate>
                                        <img src="info.png" alt="" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>

</html>
