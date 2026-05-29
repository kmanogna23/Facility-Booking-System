<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Delete Facility</title>

<link rel="stylesheet" href="style.css">

<script src="script.js"></script>

</head>

<body>

<%

String msg = request.getParameter("msg");

if("deleted".equals(msg)) {

%>

<h3 style="color:red;">
Facility Deleted Successfully
</h3>

<%

}

%>

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

<h2>Delete Facility</h2>


<form action="DeleteFacilityServlet" method="post">

<label>Facility Code</label>

<input type="text"
name="facility_code"
placeholder="Enter Facility Code">

<button type="submit">

Delete Facility

</button>

</form>

</div>

<footer>

<p>Facility Booking System</p>

</footer>

</body>
</html>