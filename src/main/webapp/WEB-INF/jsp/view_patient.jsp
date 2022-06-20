<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
<%--@elvariable id="search" type=""--%>
<div class="container p-5">
    <div class="container p-5">
        <div class="container p-5 justify-content-center">
            <form:form method="post" action="/searchPatient" modelAttribute="search" class="w-100">
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
                            <button value="Search" type="submit" class="btn btn-outline-dark btn-lg w-100">Search Patient By Id</button>
                        </div>
                    </div>
                    <div class="col w-100">
                        <div class="text-center fs-4 p-2">
                            <button value="Search" type="submit" class="btn btn-outline-dark btn-lg w-100">Search Patient By Name</button>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
<div class="container-fluid">
    <p>The search results:</p><br>
    <div class="container-fluid">
        <table class="table">
        <thead>
        <tr>
            <th scope="col">Patient Id</th>
            <th scope="col">Patient Name</th>
            <th scope="col">Patient </th>
            <th scope="col">Handle</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
        </tr>
        </tbody>
    </table>
    </div>

</div>

</body>
</html>

