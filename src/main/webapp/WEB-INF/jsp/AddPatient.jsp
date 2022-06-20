<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="input" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="AddPatient1.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


<body>

<div class="container">
<%--    <<form:form class="form-horizontal" role="form">--%>
        <h2>Add Patient</h2>
        <%--@elvariable id="addPatient" type="addpatient"--%>

        <%--@elvariable id="addPatient" type=""--%>
        <form:form method="post" action="/Addpatient" modelAttribute="addPatient" class="form-horizontal" role="form">
        <div class="form-group">
            <label for="first_name" class="col-sm-3 control-label">First Name</label>
            <div class="col-sm-9">
                <form:input path="first_name" type="text"  placeholder="First Name" name="first_name"/>
            </div>
        </div>
        <div class="form-group">
            <label for="last_name" class="col-sm-3 control-label">Last Name</label>
            <div class="col-sm-9">
                <form:input path="last_name" placeholder="Last Name" name="last_name"/>
            </div>
        </div>
        <div class="form-group">
            <label for="patient_id" class="col-sm-3 control-label">Patient ID </label>
            <div class="col-sm-9">
                <form:input path="patient_id" placeholder="Patient ID" name="patient_id"/>
            </div>
        </div>

        <div class="form-group">
            <label for="date_of_birth" class="col-sm-3 control-label">Date-of-Birth</label>
            <div class="col-sm-9">
                <form:input path="date_of_birth" placeholder="Date of Birth" class="form-control" name="date_of_birth"/>
            </div>
        </div>



        <div class="form-group">
            <label for="city" class="col-sm-3 control-label">City</label>
            <div class="col-sm-9">
                <form:input path="city" placeholder="Enter your City" name="city"/>
            </div>
        </div>
        <div class="form-group">
            <label for="state" class="col-sm-3 control-label">State </label>
            <div class="col-sm-9">
                <form:input path="state"  placeholder="Enter your state" name="state"/>

            </div>
        </div>
        <div class="form-group">
            <label for="address" class="col-sm-3 control-label">Address</label>
            <div class="col-sm-9">
                <form:input path="address" class="form-control" placeholde ="Enter your Address" name="address"/>
            </div>
        </div>
        <div class="form-group">
            <label for="mobilenumber" class="col-sm-3 control-label">MobileNumber</label>
            <div class="col-sm-9">
                <form:input path="mobilenumber"  class="form-control" placeholder = "Enter your Mobile Number" name="mobilenumber"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Gender</label>
            <div path="gender" name="gender">
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="radio-inline">Female</label>
                                <form:radiobutton path="gender" id="femaleRadio" value="Female"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="radio-inline">Male</label>
                                <form:radiobutton path="gender" id="maleRadio" value="Male"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="allergy" class="col-sm-3 control-label">Allergy</label>
            <div class="col-sm-9">
                <form:input path="allergy"  placeholder="Enter your Allergy if any otherwise write None" name="allergy"/>
            </div>
        </div>
            <div class="col-sm-4 mb-2">
                <label for="doctor_to_be_assigned" class="form-label">Doctor to be assigned</label>
                <form:select path="doctor_to_be_assigned" name="doctor_to_be_assigned">
                    <option selected>Doctor1</option>
                    <option>Doctor2</option>
                    <option>Doctor3</option>
                </form:select>
            </div>

        <input type="submit" value="Add Patient"/>
    </form:form> <!-- /form -->]

</div> <!-- ./container -->
<%--</form:form>--%>
</body>
</head>
</html>