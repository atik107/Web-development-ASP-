<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="ASP_project_01.home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="CSS/main_page.css"/>
    <title>
        Hospital Website 
    </title>
</head>


<body>    
    <!-- home section -->

    <section class="home" id="home">
        <div class="image">
            <img src="project_pic/home_img.svg" alt="Images">
        </div>
        <div class="content">
            <h3>stay safe, stay healthy</h3>
            <a href="#" class="btn"> contact us <span class="fas fa-chevron-right"> </span></a>
        </div>
    </section>
</body>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
