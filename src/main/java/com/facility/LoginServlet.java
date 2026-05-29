package com.facility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String role = request.getParameter("role");

        String staffNo =
                request.getParameter("staff_no");

        String password =
                request.getParameter("password");

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(

            "SELECT * FROM users WHERE staff_no=? AND password=? AND role=?"

            );

            ps.setString(1, staffNo);
            ps.setString(2, password);
            ps.setString(3, role);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                if(role.equals("Admin")) {

                    response.sendRedirect("addfacility.jsp");

                }
                else {

                    response.sendRedirect("booking.jsp");

                }

            }
            else {

                response.getWriter().println(
                    "<h2>Invalid Login Details</h2>"
                );

            }

        }
        catch(Exception e) {

            e.printStackTrace();

        }
    }
}