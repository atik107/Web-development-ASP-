<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="ASP_project_01.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="CSS/about_page.css"/>
    <title>
        Hospital Website 
    </title>
</head>

<body>
    

    
   

     <!--About section starts-->
     <section class="about" id="About">
        <h1 class="heading"><span>about</span> us</h1>

        <div class="row">
            <div class="image">
                <img src="project_pic/about-img.svg" alt="About Image">
            </div>

            <div class="content">
                <h3>
                    we take care of your healthy life
                </h3>
                <p style="padding-right:10rem">
                    Welcome to our hospital website, where we strive to provide high-quality medical care and services to our patients.
                    Our hospital is dedicated to improving the health and well-being of individuals and families within our community and beyond.
                    We are committed to providing compassionate and personalized care to each of our patients.<br> <br>
                    Our hospital's core values of respect, 
                    excellence, and compassion guide our actions and decisions, 
                    and we strive to deliver the highest level of care to every patient who walks through our doors.
                    We invite you to explore our website and learn more about our hospital. <br> <br> <br>
                    Thank you for considering us as your healthcare provider, 
                    and we look forward to serving you and your family.
                </p>
                <a href="#" class="btn">learn more <span class="fas fa-chevron-right"></span></a>
            </div>
        </div>
     </section>

</body>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
