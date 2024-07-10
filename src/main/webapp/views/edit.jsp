<%@page import="com.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome To Edit Student</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f0f0f0; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">
<%
   Student stu = (Student) request.getAttribute("data");
%>
    <div style="background-color: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.2); width: 400px;">
        <h2 style="margin-bottom: 20px; text-align: center; color: #007bff;">Edit Page</h2>
        <form action="updateStudent" method="post">
            <div style="margin-bottom: 15px;">
                <label for=	"sid" style="display: block; margin-bottom: 5px; font-weight: bold;">SID:</label>
                <input type="text" id="sid" name="sid" value="<%=stu.getSid()%>" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" readonly>
            </div>
            <div style="margin-bottom: 15px;">
                <label for="name" style="display: block; margin-bottom: 5px; font-weight: bold;">Name:</label>
                <input type="text" id="name" name="name" value="<%=stu.getName()%>" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <div style="margin-bottom: 15px;">
                <label for="email" style="display: block; margin-bottom: 5px; font-weight: bold;">Email:</label>
                <input type="email" id="email" name="email" value="<%=stu.getEmail()%>" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <div style="margin-bottom: 15px;">
                <label for="mono" style="display: block; margin-bottom: 5px; font-weight: bold;">Mobile No.:</label>
                <input type="text" id="mono" name="mono" value="<%=stu.getMono()%>" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <div style="margin-bottom: 15px;">
                <label for="dob" style="display: block; margin-bottom: 5px; font-weight: bold;">Birth Date:</label>
                <input type="date" id="dob" name="dob" value="<%=stu.getDob()%>" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <div style="margin-bottom: 15px;">
                <label for="college" style="display: block; margin-bottom: 5px; font-weight: bold;">College Name:</label>
                <input type="text" id="college" name="college" value="<%=stu.getCollege()%>" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <div style="margin-bottom: 15px;">
                <label for="qualifiaction" style="display: block; margin-bottom: 5px; font-weight: bold;">Qualification:</label>
                <input type="text" id="qualifiaction" name="qualifiaction" value="<%=stu.getQualifiaction()%>" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <input type="submit" value="Update" style="background-color: #007bff; color: white; border: none; padding: 15px 20px; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;">
        </form>
    </div>
</body>
</html>
