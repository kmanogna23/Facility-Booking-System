<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<link rel="stylesheet" href="style.css">

<script>

    function loginUser(){

        let role =
        document.getElementById("role").value;

        if(role === "Admin"){

            window.location.href =
            "addfacility.jsp";

        }

        else{

            window.location.href =
            "booking.jsp";

        }
    }

</script>

</head>

<body>

<header class="top-header">

<div class="logo-section">

    <img src="BHEL-logo.png"
    alt="Logo"
    class="logo">

    <h1>Facility Booking System</h1>

</div>

</header>

<div class="login-card">

<h2>Login</h2>

<form action="LoginServlet" method="post">

<label>Select Role</label>

<select id="role" name="role">

<option value="Admin">Admin</option>

<option value="User">User</option>

</select>

<label>Staff Number</label>

<input type="text"
name="staff_no"
placeholder="Enter Staff Number">

<label>Password</label>

<input type="password"
name="password"
placeholder="Enter Password">

<button type="submit">

Login

</button>

</form>

</div>

<footer>

<p>Facility Booking Management System</p>

</footer>

</body>
</html>