package co.edu.sena.project268736545;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BasicConnectionSingleton {
    private static String url = "jdbc:mysql://localhost:3306/BrTechnology?serverTimezone=America/Bogota";
    private static String user = "BrTechnology";
    private static String pass = "BrTechnology2023@";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user, pass);
        }
        return conn;
    }
}

