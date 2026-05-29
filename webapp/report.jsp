<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Reports</title>

<link rel="stylesheet" href="style.css">

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

<div class="navbar">

<a href="addfacility.jsp">
Add Facility
</a>

<a href="deletefacility.jsp">
Delete Facility
</a>

<a href="modify.jsp">
Modify
</a>

<a href="approve.jsp">
Approve
</a>

<a href="report.jsp">
Reports
</a>

<a href="login.jsp">
Logout
</a>

</div>

<div class="container">

<h2>Generate Report</h2>

<form action="ReportServlet" method="post">

<label>Select Date</label>

<input type="date"
name="booked_date">

<label>Select Facility</label>

<select name="facility_code">

<option value="FC001">
Conference Hall
</option>

<option value="FC002">
Seminar Hall
</option>

<option value="FC003">
Computer Lab
</option>

<option value="FC003">
Auditorium
</option>

</select>

<button type="submit">

Generate Report

</button>

</form>




</div>

<footer>

<p>Facility Report Management</p>

</footer>

</body>
</html>