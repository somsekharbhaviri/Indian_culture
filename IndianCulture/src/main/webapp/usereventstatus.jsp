<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pending Event Registrations</title>
</head>
<body>

<h1>Pending Event Registrations</h1>

<table border="1">
    <thead>
        <tr>
            <th>Event Title</th>
            <th>User</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${pendingRegistrations}" var="registration">
            <tr>
                <td><c:out value="${registration.eventTitle}"/></td>
                <td><c:out value="${registration.userName}"/></td>
                <td><c:out value="${registration.status}"/></td>
                <td>
                    <form action="/admin/update-status" method="post">
                        <input type="hidden" name="registrationId" value="${registration.id}">
                        <button type="submit" name="status" value="accepted">Accept</button>
                        <button type="submit" name="status" value="rejected">Reject</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
