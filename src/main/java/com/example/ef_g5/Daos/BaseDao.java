package com.example.ef_g5.Daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDao {
    public Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        final String user = "root";
        final String pass = "root";
        final String url  = "jdbc:mysql://localhost:3306/movies?serverTimezone=America/Lima";
        return DriverManager.getConnection(url, user, pass);
    }
}
