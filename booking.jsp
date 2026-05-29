<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.facility.DBConnection" %>

<!DOCTYPE html>
<html>
<head>

<title>User Booking</title>

<link rel="stylesheet" href="style.css">

<script src="script.js"></script>

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

<a href="booking.jsp">
Booking
</a>

<a href="login.jsp">
Logout
</a>

</div>

<div class="container">

<h2>Book Facility</h2>

<form action="BookingServlet" method="post">

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

<label>Staff Number</label>

<input type="text"
name="staff_no"
placeholder="Enter Staff Number">

<label>Select Date</label>

<input type="date"
name="booked_date">

<label>From Time</label>

<input type="time"
name="from_time">

<label>To Time</label>

<input type="time"
name="to_time">

<label>Booking Purpose</label>

<select name="purpose">

<option>Meeting</option>

<option>Seminar</option>

<option>Workshop</option>

</select>

<label>Priority Type</label>

<select name="priority_type">

<option>Normal</option>

<option>High</option>

</select>

<input type="hidden"
name="status"
value="Pending">

<button type="submit">

Book Facility

</button>

</form>


<div id="resultBox" style="margin-top:20px;">
</div>

<div id="resultBox" style="margin-top:20px; font-weight:bold;">
</div>

</div>

<footer>

<p>User Booking Portal</p>

</footer>

</body>
</html>