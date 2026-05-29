package com.facility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ModifyFacilityServlet")

public class ModifyFacilityServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String code =
                request.getParameter("facility_code");

        String name =
                request.getParameter("facility_name");

        String location =
                request.getParameter("location");

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(

            "UPDATE facility SET facility_name=?, location=? WHERE facility_code=?"

            );

            ps.setString(1, name);
            ps.setString(2, location);
            ps.setString(3, code);

            int i = ps.executeUpdate();

            if(i > 0) {

            			response.sendRedirect(
            			"modify.jsp?msg=updated"
            			);


            }

        }
        catch(Exception e) {

            e.printStackTrace();

        }
    }
}
