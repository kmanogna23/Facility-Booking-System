<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.facility.DBConnection" %>

<!DOCTYPE html>
<html>
<head>

<title>Approve Bookings</title>

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

<h2>Pending Booking Requests</h2>

<div class="table-container">

<table>

<tr>
<th>Booking ID</th>
<th>Facility</th>
<th>Booked By</th>
<th>Status</th>
<th>Action</th>
</tr>

<%

try {

    Connection con =
            DBConnection.getConnection();

    PreparedStatement ps =
            con.prepareStatement(

    "SELECT * FROM bookings WHERE status='Pending'"

    );

    ResultSet rs = ps.executeQuery();

    while(rs.next()) {

%>

<tr>

<td>
<%= rs.getInt("booking_id") %>
</td>

<td>
<%= rs.getString("facility_code") %>
</td>

<td>
<%= rs.getString("staff_no") %>
</td>

<td>
<%= rs.getString("status") %>
</td>

<td>

<a href="ApproveServlet?id=<%= rs.getInt("booking_id") %>">

<button style="
background:green;
color:white;
border:none;
padding:8px 12px;
border-radius:5px;
cursor:pointer;">

Approve

</button>

</a>

<a href="RejectServlet?id=<%= rs.getInt("booking_id") %>">

<button style="
background:red;
color:white;
border:none;
padding:8px 12px;
border-radius:5px;
cursor:pointer;">

Reject

</button>

</a>

</td>


</tr>

<%

    }

}
catch(Exception e) {

    out.println(e);

}

%>

</table>

</div>

</div>

<footer>

<p>Admin Approval Page</p>

</footer>

</body>
</html>