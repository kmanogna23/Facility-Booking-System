<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Modify Facility</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<%

String msg = request.getParameter("msg");

if("updated".equals(msg)) {

%>

<h3 style="color:green;">
Facility Updated Successfully
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

<h2>Update Facility Details</h2>

<form action="ModifyFacilityServlet" method="post">

<label>Facility Code</label>

<input type="text"
name="facility_code"
placeholder="FC001">

<label>Facility Name</label>

<input type="text"
name="facility_name"
placeholder="Updated Facility Name">

<label>Facility Location</label>

<input type="text"
name="location"
placeholder="Updated Location">

<button type="submit">

Update Facility

</button>

</form>

</div>

<footer>

<p>Modify Facility Details</p>

</footer>

</body>
</html>