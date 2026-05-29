package com.facility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddFacilityServlet")

public class AddFacilityServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String code =
                request.getParameter("facility_code");

        String name =
                request.getParameter("facility_name");

        String type =
                request.getParameter("facility_type");

        String location =
                request.getParameter("location");

        int capacity =
                Integer.parseInt(
                request.getParameter("capacity"));

        String facilities =
                request.getParameter(
                "facilities_available");

        String status =
                request.getParameter("status");

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(

            "INSERT INTO facility VALUES(?,?,?,?,?,?,?)"

            );

            ps.setString(1, code);
            ps.setString(2, name);
            ps.setString(3, type);
            ps.setString(4, location);
            ps.setInt(5, capacity);
            ps.setString(6, facilities);
            ps.setString(7, status);

            int i = ps.executeUpdate();

            if(i > 0) {

            			response.sendRedirect(
            			"addfacility.jsp?msg=added"
            			);


            }

        }
        catch(Exception e) {

            e.printStackTrace();

        }
    }
}