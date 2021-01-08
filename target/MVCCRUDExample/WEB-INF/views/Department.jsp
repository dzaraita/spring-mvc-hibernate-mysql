<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 1/8/2021
  Time: 6:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Department Management Screen</title>
</head>
<body>
<div align="center">
    <h1>Department List</h1>

    <table border="1">
        <th>Name</th>
        <th>Location</th>

        <c:forEach var="department" items="${listDepartment}">
            <tr>

                <td>${department.name}</td>
                <td>${department.location}</td>
                <td><a href="editDepartment?id=${department.id}">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteDepartment?id=${department.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h4>
        New Department Register <a href="newDepartment">here</a>

    </h4>
</div>
</body>
</html>
