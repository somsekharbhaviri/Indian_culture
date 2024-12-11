<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4; 
        }

        h3 {
            color: #003366; 
            text-align: center;
            font-size: 24px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #003366; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table th {
            background-color: #2F3A48;
            color: #98FF98;
            font-weight: bold;
            padding: 15px;
            text-transform: uppercase;
            font-size: 16px;
        }

        table td {
            padding: 12px;
            text-align: center;
            color: #333; /* Dark gray text */
            background-color: #ffffff; /* White background for cells */
        }

        table tr:nth-child(even) td {
            background-color: #f9f9f9; /* Light gray for even rows */
        }

        table tr:hover td {
            background-color: #FFFACD; /* Light Yellow on hover */
            transition: background-color 0.3s;
        }

        table th:hover {
            background-color: #FFC107; /* Darker yellow on hover */
        }

        a {
            text-decoration: none;
            color: #FF6F61; /* Coral for links */
            font-weight: bold;
        }

        a:hover {
            color: #E74C3C; 
        }

    
        button {
            background-color: #FFD700; 
            color: #003366; 
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #FFC107; 
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>

    <h3><u>View All Users</u></h3>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>PASSWORD</th>
                <th>ADDITIONAL INFORMATION</th>
                <th>ACTIONS</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${userList}" var="user">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.password}"/></td>
                    <td><c:out value="${user.message}"/></td>
                    <td>
                        <a href='<c:url value="deletee?id=${user.id}"></c:url>' onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
