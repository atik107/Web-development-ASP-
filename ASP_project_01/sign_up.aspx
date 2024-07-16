<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="ASP_project_01.sign_up_03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">



<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/login_page.css">
    <title>
        Hospital Website 
    </title>
</head>




<body>


    <header class="header">
        <a href="#" class="logo"><i class="fas fa-heartbeat"></i>Heart Foundation</a>
        
        <nav class="navbar">
            <a href="home_page.aspx">Home</a>
            <a href="service_page_01.aspx">Services</a>
            <a href="doctor_info.aspx">Doctors</a>
            <a href="appointment.aspx">Appoinment</a>
            <a href="review_page_01.aspx">Review</a>
            <a href="about.aspx">About</a>
            <a href="log_in_02.aspx">Log In</a>
        </nav>
    </header>


    <div class="container">
        <div class="wrapper">
            <div class="title"><span>Sign Up</span></div>

            <form action="#" runat="server">
                <div class="row">
                    <i class="fas fa-user"></i>
                    <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Name" required=""></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fas fa-phone"></i>
                    <asp:TextBox ID="TextBox2" runat="server" type="text" placeholder="Phone Number" required></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fas fa-lock"></i>
                    <asp:TextBox ID="TextBox3" runat="server" type="password" placeholder="Password" required></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fas fa-tint"></i>
                    <asp:TextBox ID="TextBox4" runat="server" type="text" placeholder="Blood Group" required></asp:TextBox>
                </div>

                <div class="row">
                    <i class="fas fa-map-marker-alt"></i>
                    <asp:TextBox ID="TextBox5" runat="server" type="text" placeholder="Address" required></asp:TextBox>
                </div>

                

                <div class="row button">
                    <asp:Button ID="Button1" runat="server" Text="Button" type="submit" value="Sign Up" OnClick="Button1_Click"/>
  
                </div>
                <div class="signup-link">Already a member? <a href="log_in_02.aspx">Log in</a></div>
            </form>

        </div>
    </div>

</body>

</html>
