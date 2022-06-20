<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div>
    <%--@elvariable id="receptionist" type=""--%>
    <form:form action="/receptionist" method="post" modelAttribute="receptionist">
        <div>
            <label>Employee ID: </label>

            <form:input path="Employee_id"/>
        </div>
        <div>
            <label>Full Name: </label>
            <form:input path="Fullname"/>
        </div>
        <div>
            <label>Date Of Birth: </label>
            <form:input path="Date_of_Birth"/>
        </div>
        <div>
            <label>Gender: </label>
            <form:input path="Gender"/>
        </div>
        <div>
            <label>Email: </label>
            <form:input path="Email"/>
        </div>
        <div>
            <label>Phone number: </label>
            <form:input path="Phone_Number"/>
        </div>
        <div>
            <label>Address: </label>
            <form:input path="Address"/>
        </div>
        <div>
            <label>Degree: </label>
            <form:input path="Degree"/>
        </div>
        <div>
            <label>Institute: </label>
            <form:input path="Institute"/>
        </div>
        <div>
            <label>Year_of_Passing</label>
            <form:input path="Year_of_Passing"/>
        </div>
        <div>
            <label>Percentage: </label>
            <form:input path="Percentage"/>
        </div>
        <div>
            <label>Job Description: </label>
            <form:input path="Job_Description"/>
        </div>
        <div>
            <label>From: </label>
            <form:input path="From"/>
        </div>
        <div>
            <label>To: </label>
            <form:input path="To"/>
        </div>
        <div>
            <label>Organization: </label>
            <form:input path="Organization"/>
        </div>
        <div>
            <input type="submit" value="submit"/>

        </div>
    </form:form>
</div>
</body>
</html>