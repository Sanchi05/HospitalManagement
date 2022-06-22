<%--
  Created by IntelliJ IDEA.
  User: lentraadmin
  Date: 22/06/22
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://kit.fontawesome.com/7f35d14aff.js" crossorigin="anonymous"></script>

    <title>Doctor's Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

    <!---JavaScript--->


</head>
<body>
<div class="side-navbar active-nav justify-content-between flex-wrap flex-column" id="side-navbar">
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
        <ul class="nav text-dark text-center" >
            <li class="nav-link">
                <a href="#" class="text-dark" onclick="viewDropdown()">
                    <p><span class="h3 ">Patient Information &ensp;<i class="fa-solid fa-angle-right dropbtn" onclick="viewDropdown()"></i></span></p>
                </a>
                <div class="dropdownMenu w-50 flex-column" id="drop">
                    <a class="dropdown-item h2 p-4" href="#">Add Patient</a>
                    <a class="dropdown-item h2 p-4" href="<%=request.getContextPath()%>/Search Patients">View Patient</a>
                </div>
            </li>
            <li class="nav-link prescription" id="pres">
                <a href="<%=request.getContextPath()%>/newPrescription" class="text-dark">
                    <p><span class="h3">Prescription</span></p>
                </a>
            </li>
            <li class="nav-link">
                <a href="doctor_home.html" class="text-dark" id="appt">
                    <p><span class="h3">Appointments</span></p>
                </a>
            </li>
        </ul>
    </div>
</div>

<nav class="nav">
    <ul>
        <button class="btn active-btn" id="btn"><i class="fa-solid fa-bars icon-link fa-2xl m-3" id="sidebtn"></i></button>
    </ul>

</nav>

<div class="container justify-content-center appointments" id="appointment">
    <h2 class="text-center mb-4">Your Appointments</h2>
    <table class="table table-stripped">
        <thead>
        <tr class="text-center">
            <th scope="col">#</th>
            <th scope="col">Patient Id</th>
            <th scope="col">Patient Name</th>
            <th scope="col">Time</th>
            <th scope="col">Date</th>
            <th scope="col">Comments</th>
            <th scope="col">Edit Appointment</th>
        </tr>
        </thead>
        <tbody>
        <tr class="text-center">
            <th scope="row">1</th>
            <td>A123</td>
            <td>ABC</td>
            <td>4:45</td>
            <td>4/05/2022</td>
            <td>No comments for now.</td>
            <td><a href="#">Edit</a></td>
        </tr>
        <tr class="text-center">
            <th scope="row">2</th>
            <td>A123</td>
            <td>ABC</td>
            <td>4:45</td>
            <td>4/05/2022</td>
            <td>No comments for now.</td>
            <td><a href="#">Edit</a></td>
        </tr>
        <tr class="text-center">
            <th scope="row">3</th>
            <td>A123</td>
            <td>ABC</td>
            <td>4:45</td>
            <td>4/05/2022</td>
            <td>No comments for now.</td>
            <td class="text-center"><a href="#">Edit</a></td>
        </tr>
        <tr class="text-center">
            <th scope="row">4</th>
            <td>A123</td>
            <td>ABC</td>
            <td>4:45</td>
            <td>4/05/2022</td>
            <td>No comments for now.</td>
            <td class="text-center"><a href="#">Edit</a></td>
        </tr>
        <tr class="text-center">
            <th scope="row">5</th>
            <td>A123</td>
            <td>ABC</td>
            <td>4:45</td>
            <td>4/05/2022</td>
            <td>No comments for now.</td>
            <td class="text-center"><a href="#">Edit</a></td>
        </tr>
        <tr class="text-center">
            <th scope="row">6</th>
            <td>A123</td>
            <td>ABC</td>
            <td>4:45</td>
            <td>4/05/2022</td>
            <td>No comments for now.</td>
            <td class="text-center"><a href="#">Edit</a></td>
        </tr>
        </tbody>

    </table>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="slider.js"></script>
</body>
</html>
