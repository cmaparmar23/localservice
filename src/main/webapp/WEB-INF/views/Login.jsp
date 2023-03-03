<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn</title>
</head>
<body>
<form action ="authentication" method="post">
Email: <input type="email" name="email"><br><br>
Password: <input type="password" name="password"><br><br>


<input type="submit" value = "LogIn">
</form><br><br>
${error}
<a href="signup">Signup</a> | <a href="forgetpassword ">ForgetPassword?</a>


</body>
</html>