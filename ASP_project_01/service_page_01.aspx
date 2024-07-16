<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="service_page_01.aspx.cs" Inherits="ASP_project_01.service_page_01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="CSS/service_page.css"/>
    <title>
        Hospital Website 
    </title>
</head>

<body>
   
    <!--service section starts-->

    <section class="services" id="services">
        <h1 class="heading">our <span>services</span></h1>
        <div class="box-container">

            <div class="box">
                <i class="fas fa-notes-medical"></i>
                <h3>free checkups</h3>
                <p>available 24 hours</p>
                <a href="#" class="btn">learn more<span class="fas fa-chevron-right"></span></a> 
            </div>

            <div class="box">
                <i class="fas fa-ambulance"></i>
                <h3>24/7 ambulence</h3>
                <p>With in 10 minutes in city </p>
                <a href="#" class="btn">learn more<span class="fas fa-chevron-right"></span></a> 
            </div>

            <div class="box">
                <i class="fas fa-user-md"></i>
                <h3>expert doctors</h3>
                <p>Best Doctors of our country</p>
                <a href="#" class="btn">learn more<span class="fas fa-chevron-right"></span></a> 
            </div>

            <div class="box">
                <i class="fas fa-pills"></i>
                <h3>medicines</h3>
                <p>available all medicines</p>
                <a href="#" class="btn">learn more<span class="fas fa-chevron-right"></span></a> 
            </div>

            <div class="box">
                <i class="fas fa-procedures"></i>
                <h3>bed facility</h3>
                <p>very good quality</p>
                <a href="#" class="btn">learn more<span class="fas fa-chevron-right"></span></a> 
            </div>

        </div>
    </section>

</body>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
