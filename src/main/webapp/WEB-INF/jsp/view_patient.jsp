<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
</head>
<body>
<form method="post" action="" modelAttribute="search_patient">
    <label>Seacrh here</label>
    <form:input path="pt_id" type="text"/>

    <button type="submit" value="Search"></button>
</form>
</body>
</html>

