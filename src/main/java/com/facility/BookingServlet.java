package com.facility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookingServlet")

public class BookingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String facilityCode =
                request.getParameter("facility_code");

        String staffNo =
                request.getParameter("staff_no");

        String bookedDate =
                request.getParameter("booked_date");

        String fromTime =
                request.getParameter("from_time");

        String toTime =
                request.getParameter("to_time");

        String purpose =
                request.getParameter("purpose");

        String priority =
                request.getParameter("priority_type");

        String status =
                request.getParameter("status");

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement check =
                    con.prepareStatement(

            "SELECT * FROM bookings WHERE facility_code=? AND booked_date=? AND from_time=?"

            );

            check.setString(1, facilityCode);
            check.setString(2, bookedDate);
            check.setString(3, fromTime);

            ResultSet rsCheck =
                    check.executeQuery();

            if(rsCheck.next()) {

                response.getWriter().println(

                "<h2 style='color:red;'>"

                +

                "Facility Already Booked"

                +

                "</h2>"

                );

                return;

            }


            else {

                response.getWriter().println(
                    "<h2>Booking Failed</h2>"
                );

            }

        }
        catch(Exception e) {

            e.printStackTrace();

        }
    }
}

