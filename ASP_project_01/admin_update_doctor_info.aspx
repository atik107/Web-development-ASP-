<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_update_doctor_info.aspx.cs" Inherits="ASP_project_01.admin_update_doctor_info" %>

<!DOCTYPE html>


<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/add_doctor.css" rel="stylesheet" />
    <title>
        Hospital Website 
    </title>
</head>


<body>
<div class="container">
        <div class="wrapper">
            <div class="title"><span>Update Doctor Info</span></div>

            <form action="#" runat="server">
                <div class="row">
                    <i class="fas fa-id-card"></i>
                    <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Id" required=""></asp:TextBox>
                </div>
                
                <div class="row">
                  
                    <i class="fas fa-user-md"></i>
                    <asp:TextBox ID="TextBox2" runat="server" type="text" placeholder="Name" required=""></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fas fa-phone"></i>
                    <asp:TextBox ID="TextBox3" runat="server" type="text" placeholder="Phone Number" required></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fas fa-neuter"></i>
                    <asp:TextBox ID="TextBox4" runat="server" type="text" placeholder="Gender" required></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fa-child"></i>
                    <asp:TextBox ID="TextBox5" runat="server" type="text" placeholder="Age" required></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fas fa-map-marker-alt"></i>
                    <asp:TextBox ID="TextBox6" runat="server" type="text" placeholder="Expertise category" required></asp:TextBox>
                </div>

                

                <div class="row button">
                    <asp:Button ID="Button1" runat="server" Text="Update" type="submit" value="Update" OnClick="Button1_Click" />
  
                </div>
              
            </form>

        </div>
    </div>



    <script src="Bootstrap/popper.min.js"></script>
    <script src="Bootstrap/jquery-3.2.1.slim.min.js"></script>
    <script src="Bootstrap/bootstrap.min.js"></script>
</body>



</html>
