package com.DB; // Replace with your actual package name

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    public static Connection getConn() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Replace with your JDBC driver class
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebookapp", "root", "pass");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
