<html>
<head>
    <title>All Doctors</title>
    <%--    <%@page import="java.sql.*;"%>--%>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.ResultSet" %>
</head>
<body>
<%
    Statement st = null;
    Connection con = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = (Connection) DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/hospital1?", "root", "Password@123");
        st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from receptionists;");
%>


<table border=1 align=center style="text-align:center">
    <h2 class="text-center">View All Receptionists</h2>
    <thead>
    <tr>
        <th>Employee ID</th>
        <th>Fullname</th>
        <th>Date Of Birth</th>
        <th>Gender</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Address</th>
        <th>Degree</th>
        <th>Institute</th>
        <th>Year of Passing</th>
        <th>Percentage</th>
        <th>Job Description</th>
        <th>From</th>
        <th>To</th>
        <th>Organization</th>
    </tr>
    </thead>
    <tbody>
    <%
        while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getString("Employee_id")%>
        </td>
        <td><%=rs.getString("Fullname")%>
        </td>
        <td><%=rs.getString("Date_of_Birth")%>
        </td>
        <td><%=rs.getString("Gender")%>
        </td>
        <td><%=rs.getString("Email")%>
        </td>
        <td><%=rs.getString("Phone_Number")%>
        </td>
        <td><%=rs.getString("Address")%>
        </td>
        <td><%=rs.getString("Degree")%>
        </td>
        <td><%=rs.getString("Institute")%>
        </td>
        <td><%=rs.getString("Year_of_Passing")%>
        </td>
        <td><%=rs.getString("Percentage")%>
        </td>
        <td><%=rs.getString("Job_Description")%>
        </td>
        <td><%=rs.getString("From")%>
        </td>
        <td><%=rs.getString("To")%>
        </td>
        <td><%=rs.getString("Organization")%>
        </td>
    </tr>
    <%}%>
    </tbody>
</table>
<br>
<%
} catch (Exception e) {
    out.print(e.getMessage());
%><br><%
    } finally {
        st.close();
        con.close();
    }
%>
</body>
</html>

<!--executeUpdate() mainupulation and executeQuery() for retriving-->