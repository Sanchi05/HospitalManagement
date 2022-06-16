<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://kit.fontawesome.com/7f35d14aff.js" crossorigin="anonymous"></script>

    <title>Welcome Admin!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="styleadmin.css">
</head>

<body>

<!--Header-->
<div class="container-fluid nav justify-content-end nav1">
    <div class="navbar navbar-light ">
        <ul class="nav">
            <li class="nav-item navigation"><a href="home.jsp" class="nav-link text-center p-2 h-3">Home</a></li>
            <li class="nav-item navigation"><a href="contact.jsp" class="nav-link p-2 h-3">Contact Us</a></li>
            <li class="nav-item navigation"><a href="Login1.html" class="nav-link p-2 h-3">Login</a></li>
        </ul>
    </div>
</div>


<div class="side-navbar active-nav justify-content-between flex-wrap flex-column" id="sidenavbar">
    <div class="container text-center mt-5">
        <h1>
            <span><i class="fa-solid fa-circle-user fa-2xl"></i></span>
        </h1>
        <h5 class="mt-3">
            Username:
        </h5>
        <h5>
            User ID:
        </h5>
    </div>

    <div class="container-fluid mt-5">
        <ul class="nav text-dark text-center">
            <li class="nav-link doctors" id="docs">
                <a href="#" class="text-dark" onclick="viewDropdown()">
                    <p><span class="h3 ">Doctors &ensp;<i class="fa-solid fa-angle-right dropbtn" onclick="viewDropdown()"></i></span></p>
                </a>
                <div class="dropdownMenu w-50 flex-column" id="drop">
                    <a class="dropdown-item h2 p-4" href="doctoradd.html">Add Doctors</a>
                    <a class="dropdown-item h2 p-4" href="#">View Doctors</a>
                </div>
            </li>


            <li class="nav-link Receptioninsts" id="receps">
                <a href="#" class="text-dark" onclick="viewDropdown1()">
                    <p><span class="h3 ">Receptionists &ensp;<i class="fa-solid fa-angle-right dropbtn"
                                                                onclick="viewDropdown1()"></i></span></p></a>
                <div class="dropdownMenu w-50 flex-column" id="drop1">
                    <a class="dropdown-item h2 p-4" href="#">Add Receptionist</a>
                    <a class="dropdown-item h2 p-4" href="#">View Receptionists</a>
                </div>
            </li>


            <li class="nav-link patients" id="pats">
                <a href="#" class="text-dark" onclick="viewDropdown2()">
                    <p><span class="h3 ">Patients &ensp;<i class="fa-solid fa-angle-right dropbtn"
                                                           onclick="viewDropdown2()"></i></span></p></a>
                <div class="dropdownMenu w-50 flex-column" id="drop2">
                    <a class="dropdown-item h2 p-4" href="#">View Patients</a>
                </div>
            </li>
        </ul>
    </div>
</div>

<nav class="nav">
    <ul>
        <button class="btn active-btn" id="btn">
            <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
        </button>
    </ul>
</nav>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
<script src="slider.js"></script>


<div id="main">
    <div class="row justify-content-center align-items-center">
        <div class="col-md-offset-3">
            <div class="row" style="margin-left: 250px">
                <div class="col-sm-3">
                    <div class="card text-white bg-primary mb-3" style="max-width: 20rem;" >
                        <div class="card-body" >
                            <h4 class="card-title" >Doctors</h4>
                            <p class="card-text">3</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3" >
                    <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
                        <div class="card-body">
                            <h4 class="card-title">Receptionists</h4>
                            <p class="card-text">1</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
                        <div class="card-body">
                            <h4 class="card-title">Patients</h4>
                            <p class="card-text">10</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
                        <div class="card-body">
                            <h4 class="card-title">Appointment Fees</h4>
                            <p class="card-text">Rs. 200</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</body>

</html>

