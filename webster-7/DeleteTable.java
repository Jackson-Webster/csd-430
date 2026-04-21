import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DeleteTable {

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3309/csd430",
                "student1",
                "pass"
            );

            Statement stmt = conn.createStatement();

            String sql = "DROP TABLE jacksonstatesdata";

            stmt.executeUpdate(sql);

            System.out.println("Table deleted successfully.");

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}