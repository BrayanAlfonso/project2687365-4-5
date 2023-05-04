package co.edu.sena.project268736545;

import java.sql.*;

public class BasicConnectionWithResources {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/BrTechnology?serverTimezone=America/Bogota";
        String username = "BrTechnology";
        String password = "BrTechnology2023@";
        String sql = "SELECT * FROM BrTechnology.users_tbl";

        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql))
        {
            while (rs.next()) {

                System.out.print(rs.getString("user_firstname"));
                System.out.print(" | ");
                System.out.println(rs.getString("user_lastname"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}






