
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <script src="https://kit.fontawesome.com/7f35d14aff.js" crossorigin="anonymous"></script>
    <title>Pateint's Prescription</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="side-navbar active-nav justify-content-between flex-wrap flex-column" id="side-navbar">
    <div class="container text-center mt-5">
        <h1>
            <span><i class="fa-solid fa-circle-user fa-2xl mb-5"></i></span>
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
                    <a class="dropdown-item h2 p-4" href="#">View Patient</a>
                </div>
            </li>
            <li class="nav-link prescription" id="pres">
                <a href="prescription.html" class="text-dark">
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

<div class="container font-monospace prescription" id="prescription">
    <h2 class="text-center mt-3 mb-5">Prescription and Observation</h2>
    <div class="container">
    <%--@elvariable id="pres" type=""--%>
        <form:form action="/newPrescription" method="post" modelAttribute="pres">
            <div class="row g-2 m-3">
                <label class="col-sm-1 col-form-label text-center fs-5">Name</label>
                <div class="col-sm-5">
                    <form:input path="p_name" class="form-control fs-5" type="text" placeholder="Patient's Name" id="name"/>
                </div>
                <label class="col-sm-2 col-form-label text-center fs-5">Patient Id:</label>
                <div class="col-sm-3">
                    <form:input path="p_id" class = "form-control fs-5" type="text" placeholder="Patient's Name" id="id"/>
                </div>
            </div>
            <div class="card">
                <div class="card-header p-1">
                    <h4>Observation</h4>
                    <p>(For Doctors)</p>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label fs-5">Symptoms</label>
                        <form:input path="p_symptoms" class="form-control form-control-lg fs-5" type="textarea" placeholder="Please use comma(,) to seperate the symptons"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fs-5">Diagnosis</label>
                        <form:input path="p_diagnosis" class="form-control form-control-lg fs-5" type="text" placeholder="Please write your diagnosis here."/>
                    </div>
                </div>
            </div>

            <div class="card mt-4">
                <div class="card-header">
                    <h4>Prescription</h4>
                    <p>(For Patients and Receptionist)</p>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label fs-5">Don'ts</label>
                        <form:textarea path="p_donts" class="form-control form-control-lg fs-5" type="text" placeholder="Please use comma(,) to seperate the dont's"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fs-5">Dos</label>
                        <form:textarea path="p_dos" class="form-control form-control-lg fs-5" type="textarea" placeholder="Please use comma(,) to seperate the do's"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fs-5">Medicine and Dosage</label>
                        <form:textarea path="p_meds" class="form-control form-control-lg fs-5" type="textarea" placeholder="Prescribe the medicine with the dosage."/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fs-5">Follow Up date (Please ask patient to book an appointment for the same)</label>
                        <form:input type="date"  path="p_followup" class="form-control form-control-lg fs-5"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fs-5">Fees(Pay at the reception)</label>
                        <form:input type="text"  path="p_fees" class="form-control form-control-lg fs-5"/>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-outline-dark btn-lg w-50 m-4 fs-4 fw-bold" value="Submit"/>
            </div>
        </form:form>
    </div>
</div>




<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

<script src="slider_pres.js"></script>
<script src="slider.js"></script>
</body>
</html>