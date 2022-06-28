<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="view_patient.css">
</head>
<body>
<%--@elvariable id="search" type=""--%>
<div class="container p-5">
    <div class="container p-5">
        <div class="container p-5 justify-content-center">
            <%--@elvariable id="searchPatient" type=""--%>
            <form:form method="post" action="/searchPatient" modelAttribute="searchPatient" class="w-100">
                <div class="row">
                    <div class="col-12 w-100 col-sm-6">
                        <div class="text-center fs-4 p-2">
                            <label>Enter the Patient Id/Name to look for the patient</label>
                        </div>
                        <div class="text-center fs-2 p-2">
                            <form:input path="pt_id" type="text" name="pt_id" class="w-100 form-control p-3" placeholder="Enter either Patirent Id or Patient Name"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col w-100">
                        <div class="text-center fs-4 p-2">
                            <input value="Search Patient by Id" type="submit" class="btn btn-outline-dark btn-lg w-100" id="showById">
                        </div>
                    </div>
                    <div class="col w-100">
                        <div class="text-center fs-4 p-2">
                            <input value="Search Patient by Name" type="submit" class="btn btn-outline-dark btn-lg w-100">
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<p></p>
<div class="container-fluid viewResults" id="viewPts">
    <p class="fs-4 p-3">The search results:</p><br>
    <div class="container-fluid">
        <table class="table mt-0 w-75">
        <thead>
        <tr>
            <th scope="col">Patient Id</th>
            <th scope="col">Patient Name</th>
            <th scope="col">Mobile</th>
            <th scope="col">Email</th>
            <th scope="col">Doctor Assigned</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${searchPatient.patient_id}</td>
            <td>${searchPatient.first_name}</td>
            <td>${searchPatient.last_name}</td>
            <td>${searchPatient.pt_email}</td>
            <td>${searchPatient.pt_doctorasg}</td>
        </tr>
        </tbody>
    </table>
    </div>

</div>


<%--<a href="<%=request.getContextPath()--%>
<%--%>/inicio">Here!</a>--%>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
<script src="viewPatientTable.js"></script>
</body>
</html>

