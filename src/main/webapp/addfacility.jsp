<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Add Facility</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<%

String msg = request.getParameter("msg");

if("added".equals(msg)) {

%>

<h3 style="color:green;">
Facility Added Successfully
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

<h2>Add New Facility</h2>

<form action="AddFacilityServlet" method="post">

<label>Facility Code</label>

<input type="text"
name="facility_code"
placeholder="FC001">

<label>Facility Name</label>

<input type="text"
name="facility_name"
placeholder="Conference Hall">

<label>Facility Type</label>

<select name="facility_type">

<option>Conference Hall</option>

<option>Meeting Room</option>

<option>Computer Lab</option>

<option>Auditorium</option>

</select>

<label>Facility Location</label>

<input type="text"
name="location"
placeholder="Block A">

<label>Capacity</label>

<input type="number"
name="capacity"
placeholder="100">

<label>Available Facilities</label>

<select name="facilities_available">

<option>Projector + AC</option>

<option>Projector Only</option>

<option>AC Only</option>

<option>Basic Room</option>

</select>
<!--  
<label>Facility Status</label>

<select name="status">

<option>Available</option>

<option>Under Maintenance</option>

<option>Inactive</option>

</select>
-->
<button type="submit">

Add Facility

</button>

</form>


</div>

<footer>

<p>Admin Panel</p>

</footer>

</body>
</html>