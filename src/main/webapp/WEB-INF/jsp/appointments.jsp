<%--
  Created by IntelliJ IDEA.
  User: lentraadmin
  Date: 22/06/22
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
<div class="container font-monospace prescription" id="appointments">
    <h2 class="text-center mt-3 mb-5">Make an Appointment</h2>
    <div class="container">
        <%--@elvariable id="pres" type=""--%>
        <%--@elvariable id="appt" type=""--%>
        <form:form action="/newAppointment" method="post" modelAttribute="appt">
            <div class="row m-3">
                <label class="col-2 col-form-label fs-5">Patient Name</label>
                <div class="col-4">
                    <form:input path="apt_name" class="form-control fs-5" type="text" placeholder="Patient's Name" id="name"/>
                </div>
                <label class="col-2 col-form-label text-center fs-5">Patient Id:</label>
                <div class="col-4">
                    <form:input path="apt_id" class = "form-control fs-5" type="text" placeholder="Patient's Id" id="id"/>
                </div>
            </div>

            <div class="row m-3">
                <label class="col-2 col-form-label fs-5 text-start">Time</label>
                <div class="col-4 text-start justify-content-start">
                    <form:input path="apt_time" class="form-control fs-5" type="time" placeholder="Appointment time" id="time"/>
                </div>
                <label class="col-2 col-form-label fs-5 text-center">Date</label>
                <div class="col-4">
                    <form:input path="apt_date" class = "form-control fs-5" type="date" placeholder="Appointment date" id="date"/>
                </div>
            </div>

            <div class="row m-3">
                <label class="col-2 col-form-label fs-5">Comments</label>
                <div class="col-10 text-start justify-content-start">
                    <form:textarea path="apt_comments" class="form-control fs-5" type="text" placeholder="Any comments" id="comments"/>
                </div>
            </div>
            <div class="row m-3">
                <label class="col-2 col-form-label fs-5">Doctor Assigned</label>
                <div class="col-10">
                    <form:input path="apt_doctorasg" class = "form-control fs-5" type="text" placeholder="The assigned Doctor" id="doctor"/>
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
</body>
</html>
