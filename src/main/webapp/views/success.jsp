<%@page import="com.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Database</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        /* Custom styles */
        .btn-custom {
            margin-right: 15px;
            width: 150px; 
        }
        .btn-custom:last-child {
            margin-right: 0;
        }
        .table-custom {
            background-color: #f8f9fa;
        }
        .container-custom {
            margin-top: 20px;
            max-width: 800px;
        }
    </style>
</head>
<body>
    <%
        List<Student> list = (List<Student>) request.getAttribute("data");
    %>
    <div class="container container-custom">
        <h1 class="text-center mb-4">Student Database</h1>
        <form name="myForm" action="myForm" method="post">
            <table class="table table-bordered table-custom">
                <thead class="thead-dark">
                    <tr>
                        <th>Select</th>
                        <th>SID</th>
                        <th>College</th>
                        <th>Date of Birth</th>
                        <th>Email</th>
                        <th>Mobile Number</th>
                        <th>Name</th>
                        <th>Qualification</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Student stu : list) {
                    %>
                    <tr>
                        <td><input name="sid" type="radio" id="stuName" value="<%=stu.getSid()%>"></td>
                        <td><%=stu.getSid()%></td>
                        <td><%=stu.getCollege()%></td>
                        <td><%=stu.getDob()%></td>
                        <td><%=stu.getEmail()%></td>
                        <td><%=stu.getMono()%></td>
                        <td><%=stu.getName()%></td>
                        <td><%=stu.getQualifiaction()%></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <div class="text-center mt-4">
                <a href="registerpage" class="btn btn-primary">Register Student</a>
                <a href="#" class="btn btn-warning" onclick="updateData()">Edit Student</a>
                <a href="#" class="btn btn-danger" onclick="deleteData()">Delete Student</a>
            </div>
        </form>
    </div>
</body>
<script type="text/javascript">
function registerData() {
    if (document.myForm.name.value !== "" && document.myForm.email.value !== "") {
        alert("You are Inserting Data...!");
        document.myForm.action = "registerpage";
        document.myForm.submit();
    } else {
        alert("Please fill out the name and email fields.");
    }
}

function updateData() {
    if (document.myForm.sid.value !== "") {
        alert("You are Editing a Student...!");
        document.myForm.action = "editstudent";
        document.myForm.submit();
    } else {
        alert("Please fill out the SID and name fields.");
    }
}

function deleteData() {
    if (document.myForm.sid.value !== "") {
        alert("You are Deleting a Student...!");
        document.myForm.action = "deleteStudent";
        document.myForm.submit();
    } else {
        alert("Please fill out the SID field.");
    }
}
</script>

</html>
