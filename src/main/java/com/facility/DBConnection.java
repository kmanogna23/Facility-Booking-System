package com.facility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {

        Connection con = null;

        try {

            // Load Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Database Connection
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/facility_booking",
                "root",
                "root"
            );

            System.out.println("Database Connected");

        }
        catch(Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}