
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div>
    <%--@elvariable id="doctor" type=""--%>
    <form:form action="/addnewdoctor" method="post" modelAttribute="doctor">
        <div>
            <label>Doctor_id: </label>
            <form:input path="Doctor_id"/>
        </div>
        <div>
            <label>Full Name: </label>
            <form:input path="Fullname"/>
        </div>
        <div>
            <label>Date of birth: </label>
            <form:input path="Date_Of_Birth"/>
        </div>
        <div>
            <label>Gender: </label>
            <form:input path="Gender"/>
        </div>
        <div>
            <label>Address: </label>
            <form:input path="Address"/>
        </div>
        <div>
            <label>Specialization: </label>
            <form:input path="Specialization"/>
        </div>
        <div>
            <label>Degree: </label>
            <form:input path="Degraa"/>
        </div>
        <div>
            <label>Institute: </label>
            <form:input path="Institute"/>
        </div>
        <div>
            <label>Year: </label>
            <form:input path="Year"/>
        </div>
        <div>
            <label>CGPA: </label>
            <form:input path="CGPA"/>
        </div>
        <div>
            <label>Job_Description: </label>
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