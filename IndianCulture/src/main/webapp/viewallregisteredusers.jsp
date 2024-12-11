<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Registered Users</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f7f9;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin: 20px 0;
        }

        .table-container {
            max-width: 90%;
            margin: 20px auto;
            overflow-x: auto;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f7bc08;
            color: white;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            font-size: 14px;
            color: #555;
        }

        @media (max-width: 768px) {
            td, th {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>

    <h1>Registered Users for Events</h1>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Registration ID</th>
                    <th>User Name</th>
                    <th>Event Title</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="userEvent">
                    <tr>
                        <td><c:out value="${userEvent.event_id}"/></td>
                        <td><c:out value="${userEvent.user.name}"/></td>
                        <td><c:out value="${userEvent.event.title}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
