# Facility Booking System

## Overview

Facility Booking System is a full-stack Java web application developed using JSP, Servlets, JDBC, MySQL, and Apache Tomcat. The system allows users to book facilities such as conference halls and labs, while administrators can manage facilities, approve or reject bookings, modify details, delete facilities, and generate reports.

---

## Technologies Used

### Frontend

* HTML
* CSS
* JavaScript
* JSP

### Backend

* Java Servlets
* JDBC

### Database

* MySQL

### Tools & Server

* Eclipse IDE
* Apache Tomcat
* MySQL Workbench

---

## Features

### User Module

* Login functionality
* Book facilities
* Auto-generated booking ID
* Booking confirmation
* Duplicate booking prevention

### Admin Module

* Add facility
* Modify facility
* Delete facility
* Approve/Reject bookings
* Generate reports

---

## Database Tables

* `users`
* `facility`
* `bookings`

---

## Project Structure

```text
src/
 └── main/
      ├── java/
      └── webapp/

facility_booking.sql
README.md
```

---

## How to Run

1. Import project into Eclipse IDE
2. Configure Apache Tomcat
3. Create MySQL database using `facility_booking.sql`
4. Update DB credentials in `DBConnection.java`
5. Run project on Tomcat server

---

## Sample Login

### Admin

* Staff No: `1001`
* Password: `admin123`

### User

* Staff No: `1002`
* Password: `user123`

---

## Future Enhancements

* Dashboard
* Search functionality
* Booking cancellation
* PDF reports
* Online deployment

---

## Author

Manogna



