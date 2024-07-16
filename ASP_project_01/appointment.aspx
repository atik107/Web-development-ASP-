<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="ASP_project_01.appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="CSS/appointment_page.css"/>
    <title>
        Hospital Website 
    </title>
</head>

<body>
    

<!--Booking section starts-->
     <section class="book" id="book">
        <h1 class="heading"><span>book</span> now</h1>
        <div class="row">
            <div class="image">
                <img src="project_pic/book-img.svg" alt="">
            </div>

            <form action="">
                <h3>book appointment</h3>
                <input type="text" placeholder="your name" class="box">
                <input type="number" placeholder="your number" class="box">
                <input type="email" placeholder="your email" class="box">
                <input type="date" class="box">
                <input type="submit" value="book now" class="btn">
            </form>
        </div>
     </section>
</body>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
