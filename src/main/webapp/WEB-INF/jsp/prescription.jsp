
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div>
    <%--@elvariable id="pres" type=""--%>
    <form:form action="/newPrescription" method="post" modelAttribute="pres">
        <div>
            <label>Name</label>
            <form:input path="p_name"/>
        </div>
        <div>
            <label>Id</label>
            <form:input path="p_id"/>
        </div>
        <div>
            <label>Symptoms</label>
            <form:input path="p_symptoms"/>
        </div>
        <div>
            <label>Diagnosis</label>
            <form:input path="p_diagnosis"/>
        </div>
        <div>
            <label>Don'ts</label>
            <form:input path="p_donts"/>
        </div>
        <div>
            <label>Dos</label>
            <form:input path="p_dos"/>
        </div>
        <div>
            <label>Medicine and Dosage</label>
            <form:input path="p_meds"/>
        </div>
        <div>
            <label>FollowUp Date</label>
            <form:input path="p_followup"/>
        </div>
        <div>
            <input type="submit" value="submit"/>
        </div>
    </form:form>
</div>
</body>
</html>