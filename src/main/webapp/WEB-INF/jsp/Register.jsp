<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <meta charset="UTF-8">
    <title>Login form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="Register.css">
<body>

<div class="loginbox">
    <h1> Register </h1>
    <%--@elvariable id="userdetails" type=""--%>
    <%--@elvariable id="user" type=""--%>
    <form:form method="post" action="/UserRegister" modelAttribute="user">
        <label> Select Role </label>
        <form:select path="role" name="role">
            <option value="Doctor"> Doctor
            </option>
            <option value="Receptionist"> Receptionist
            </option>
            <option value="Admin"> Admin
            </option>
        </form:select>

        <label>Username</label>
        <form:input path="username" type="text" placeholder="Enter your Employee id"
               name="username"/>

        <label>Password</label>
        <form:input path="password" type="password" placeholder="Enter Password"
               name="password"/>


        <div class="container text-center">
            <!--<a href="#" class="btn btn-primary btn-lg" role="button" aria-disabled="true">Submit</a>-->
            <input type="submit" value="Register"/>
        </div>

        <div class="login-click">
            Already an user? <a href="Login.jsp">Login Now</a>
        </div>

    </form:form>

</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</head>
</html>