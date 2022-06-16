<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
</head>
<body>
<%--@elvariable id="search" type=""--%>
<form:form method="post" action="/searchPatient" modelAttribute="search">
    <label>Seacrh here</label>
    <form:input path="pt_id" type="text" name="pt_id"/>
    <button type="submit" value="Search">Search</button>
</form:form>
</body>
</html>

