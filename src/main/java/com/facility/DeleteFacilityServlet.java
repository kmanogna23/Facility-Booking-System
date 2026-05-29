package com.facility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/DeleteFacilityServlet")

public class DeleteFacilityServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String code =
                request.getParameter("facility_code");

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps1 =
                    con.prepareStatement(

            "DELETE FROM bookings WHERE facility_code=?"

            );

            ps1.setString(1, code);

            ps1.executeUpdate();

            PreparedStatement ps2 =
                    con.prepareStatement(

            "DELETE FROM facility WHERE facility_code=?"

            );

            ps2.setString(1, code);

            int i = ps2.executeUpdate();

            if(i > 0) {

                response.sendRedirect(
                "deletefacility.jsp?msg=deleted"
                );

            }
            else {

                response.getWriter().println(

                "<h2 style='color:red;'>"

                +

                "Facility Not Found"

                +

                "</h2>"

                );

            }

        }
        catch(Exception e) {

            response.getWriter().println(

            "<h2 style='color:red;'>"

            +

            e.getMessage()

            +

            "</h2>"

            );

        }
    }
}
