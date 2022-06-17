<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="Login2.css">

<body>

<div class="login2">
    <h1>Login</h1>
    <%--@elvariable id="loginuser" type=""--%>
    <form:form method="post" action="/UserLogin" modelAttribute="loginuser">

        <label>Username</label>
        <form:input path="username" type="text" placeholder="Enter your Employee id"
                    name="username"/>

        <label>Password</label>
        <form:input path="password" type="password" placeholder="Enter Password"
                    name="password"/>


        <div class="container text-center">
            <input type="submit" class="btn btn-primary btn-lg" value="Login">
            <!--<a href="#" class="btn btn-primary btn-lg" role="button" aria-disabled="true">Login</a>-->
        </div>

<p>${msg}</p>


    </form:form>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</head>
</html>