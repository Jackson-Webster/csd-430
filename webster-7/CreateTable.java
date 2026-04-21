import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class CreateTable {

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3309/csd430",
                "student1",
                "pass"
            );

            Statement stmt = conn.createStatement();

            String sql = "CREATE TABLE jacksonstatesdata (" +
                    "state_id INT AUTO_INCREMENT PRIMARY KEY, " +
                    "state_name VARCHAR(100), " +
                    "capital VARCHAR(100), " +
                    "population INT, " +
                    "region VARCHAR(100), " +
                    "abbreviation VARCHAR(10))";

            stmt.executeUpdate(sql);

            System.out.println("Table created successfully.");

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}