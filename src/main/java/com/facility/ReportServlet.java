package com.facility;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ReportServlet")

public class ReportServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String date =
                request.getParameter("booked_date");

        String facility =
                request.getParameter("facility_code");

        response.setContentType("text/html");

        PrintWriter out =
                response.getWriter();

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(

            "SELECT * FROM bookings WHERE booked_date=? AND facility_code=?"

            );

            ps.setString(1, date);
            ps.setString(2, facility);

            ResultSet rs =
                    ps.executeQuery();

            out.println("<h2>Booking Report</h2>");

            out.println("<table border='1' cellpadding='10'>");

            out.println(
            "<tr>" +
            "<th>ID</th>" +
            "<th>Facility</th>" +
            "<th>Staff No</th>" +
            "<th>Date</th>" +
            "<th>Status</th>" +
            "</tr>"
            );

            while(rs.next()) {

                out.println("<tr>");

                out.println(
                "<td>" +
                rs.getInt("booking_id") +
                "</td>"
                );

                out.println(
                "<td>" +
                rs.getString("facility_code") +
                "</td>"
                );

                out.println(
                "<td>" +
                rs.getString("staff_no") +
                "</td>"
                );

                out.println(
                "<td>" +
                rs.getString("booked_date") +
                "</td>"
                );

                out.println(
                "<td>" +
                rs.getString("status") +
                "</td>"
                );

                out.println("</tr>");
            }

            out.println("</table>");

        }
        catch(Exception e) {

            e.printStackTrace();

        }
    }
}
