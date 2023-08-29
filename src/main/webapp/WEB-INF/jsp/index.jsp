<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee List</title>
    <style>
        body {
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee List</h2>
        <table border="1">
            <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Department ID</th>
                <th>In Time</th>
                <th>Out Time</th>
                <th>Face ID</th>
            </tr>
            <c:forEach items="${employees}" var="employee">
                <tr>
                    <td>${employee.employeeId}</td>
                    <td>${employee.employeeName}</td>
                    <td>${employee.departmentId}</td>
                    <td>${employee.inTime}</td>
                    <td>${employee.outTime}</td>
                    <td>${employee.faceId}</td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <a href="/register">Register New Employee</a>
    </div>
</body>
</html>
