<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
    <!-- bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7ca9103238.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/stylerecep.css">
    <title> Add Receptionist</title>
    <div class="bg-image"></div>
</head>

<!--Header-->
<body>
<div class="container-fluid nav justify-content-end nav1">
    <div class="navbar navbar-light">
        <ul class="nav">
            <li class="nav-item navigation"><a href="/Home" class="nav-link text-center p-2 h-3">Home</a></li>
            <li class="nav-item navigation"><a href="/contact" class="nav-link p-2 h-3">Contact Us</a></li>
            <li class="nav-item navigation"><a href="Login1.html" class="nav-link p-2 h-3">Login</a></li>
        </ul>
    </div>
</div>

<!--Add Receptionist Form-->
<section>
    <div class="container">
        <div class="row">
            <div class="col-10">
                <h2 class="text-center">Add Receptionist</h2>
                <p class="text-center">You can add a receptionist with this form.</p>
            </div>
        </div>
    </div>
</section>


<section class="form-section">
    <div class="container">
        <%--        <div class="row">--%>
        <div class="col-md-10">
            <%--@elvariable id="receptionist" type=""--%>
            <form:form action="/receptionist" method="post" modelAttribute="receptionist">
            <div class="row">
                    <%--                    <form class="row g-3">--%>
                <div class="col-md-5">
                    <label for="Employee_id" class="form-label">Employee ID: </label>
                    <form:input path="Employee_id" type="text" Class="form-control" id="inputid"
                                placeholder="Employee ID *"/>
                </div>
                <div class="col-md-5">
                    <label>Full Name: </label>
                    <form:input path="Fullname" type="text" class="form-control" id="inputname"
                                placeholder="Full Name *"/>
                </div>
                <div class="col-md-5">
                    <label for="Date_of_Birth" class="form-label">Date Of Birth: </label>
                    <form:input path="Date_of_Birth" type="text" class="form-control" id="inputDate"
                                placeholder="DD/MM/YYYY *"/>
                </div>
                <div class="col-md-5">
                    <label for="Gender" class="form-label">Gender: </label>
                    <form:input path="Gender" type="text" class="form-control" id="inputgender"
                                placeholder="M or F *"/>
                </div>
                <div class="col-md-5">
                    <label for="Email" class="form-label">Email: </label>
                    <form:input path="Email" type="text" class="form-control" id="inputemail"
                                placeholder="abcd@gmail.com *"/>
                </div>
                <div class="col-md-5">
                    <label for="Phone_Number" class="form-label">Phone number: </label>
                    <form:input path="Phone_Number" type="text" class="form-control" id="inputnumber"
                                placeholder="+91-1234567890 *"/>

                </div>
                <div class="col-md-10">
                    <label for="Address" class="form-label">Address: </label>
                    <form:input path="Address" type="text" class="form-control" id="inputaddress"
                                placeholder="Full Address *"/>
                </div>
                <h4>Qualifications: </h4>
                <div class="col-md-5">
                    <label for="Degree" class="form-label">Degree: </label>
                    <form:input path="Degree" type="text" class="form-control" id="inputdegree"
                                placeholder="Degree *"/>
                </div>
                <div class="col-md-5">
                    <label for="Institute" class="form-label">Institute: </label>
                    <form:input path="Institute" type="text" class="form-control" id="inputinstitute"
                                placeholder="Institute *"/>
                </div>
                <div class="col-md-5">
                    <label for="Year_of_Passing" class="form-label">Year_of_Passing</label>
                    <form:input path="Year_of_Passing" type="year" class="form-control" id="inputyear"
                                placeholder="YYYY *"/>
                </div>
                <div class="col-md-5">
                    <label for="Percentage" class="form-label">Percentage: </label>
                    <form:input path="Percentage" type="text" class="form-control" id="inputemail"
                                placeholder="Percentage *"/>
                </div>
                <h4>Job Experience: </h4>
                <div class="col-md-5">
                    <label for="Job_Description" class="form-label">Job Description: </label>
                    <form:input path="Job_Description" type="text" class="form-control" id="inputemail"
                                placeholder="Describe your Job *"/>
                </div>
                <div class="col-md-5">
                    <label for="From" class="form-label">From: </label>
                    <form:input path="From" type="text" class="form-control" id="inputemail"
                                placeholder="From Date *"/>
                </div>
                <div class="col-md-5">
                    <label for="To" class="form-label">To: </label>
                    <form:input path="To" type="text" class="form-control" id="inputemail"
                                placeholder="To Date *"/>
                </div>
                <div class="col-md-5">
                    <label for="Organization" class="form-label">Organization: </label>
                    <form:input path="Organization" type="text" class="form-control" id="inputemail"
                                placeholder="Organization *"/>
                </div>
                <div class="col-md-10 text-center">
                    <button type="submit" class="btn btn-primary w-100 mt-3 mb-3">Submit <i
                            class="fas fa-paper-plane"></i>
                    </button>
                </div>
                </form:form>
            </div>

            <div class="col-10">
                <a href="${pageContext.request.contextPath}/getreceptionist">
                    <button type="submit" class="btn btn-primary w-100 mt-3 mb-3">Show Receptionists</button></a>
            </div>
</body>
</html>