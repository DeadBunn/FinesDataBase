package FinesDataBase.MikhaylovD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class FinesManager {
    final String URL = "jdbc:postgresql://localhost:5432/Fines";
    final String user = "postgres";
    final String password = "postgres";
    Connection connection;
    public void setConnection(){
        try {
            connection = DriverManager.getConnection(URL, user,password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
