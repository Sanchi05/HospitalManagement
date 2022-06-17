<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"-->
    <!--          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">-->
    <script src="https://kit.fontawesome.com/7ca9103238.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="Home.css">



</head>
<body>

<div class="container-fluid nav justify-content-end nav1">
    <div class="navbar navbar-light ">
        <ul class="nav ">
            <li class="nav-item navigation"><a href="#" class="nav-link text-center p-2 h-3">Home</a></li>
            <li class="nav-item navigation"><a href="#" class= "nav-link p-2 h3">Contact Us</a></li>
            <li class="nav-item navigation"><a href="Register.html" class="nav-link p-2 h-3">Register</a></li>
        </ul>
    </div>
</div>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" img src="Images/demo3.png" alt="First slide">
            <div class="carousel-caption">
                <h1>Welcome to Hospital Manager</h1>
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" img src="Images/demoo.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" img src="Images/demo2.png" alt="Third slide">
        </div>
    </div>
    <!--    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">-->
    <!--        <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
    <!--        <span class="sr-only">Previous</span>-->
    <!--    </a>-->
    <!--    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">-->
    <!--        <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
    <!--        <span class="sr-only">Next</span>-->
    <!--    </a>-->

    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class = "visually hidden">Previous</span>

    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class = "visually hidden">Next</span>

    </button>


</div>

<!--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>



</body>
</html>

