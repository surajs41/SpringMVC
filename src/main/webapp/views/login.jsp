<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f0f0f0; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">
    <div style="background-color: white; padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.2); width: 300px; text-align: center;">
        <h2 style="margin-bottom: 20px; color: #007bff;">Login Page</h2>
        <form action="loginCheck" method="post">
            <div style="margin-bottom: 15px;">
                <label for="username" style="display: block; margin-bottom: 5px; font-weight: bold;">Enter Username:</label>
                <input type="text" id="username" name="username" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <div style="margin-bottom: 20px;">
                <label for="password" style="display: block; margin-bottom: 5px; font-weight: bold;">Enter Password:</label>
                <input type="password" id="password" name="password" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required>
            </div>
            <input type="submit" value="Login" style="background-color: #007bff; color: white; border: none; padding: 15px 20px; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;">
        </form>
    </div>
</body>
</html>
