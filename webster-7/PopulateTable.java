import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class PopulateTable {

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3309/csd430",
                "student1",
                "pass"
            );

            Statement stmt = conn.createStatement();

            String sql = "INSERT INTO jacksonstatesdata (state_name, capital, population, region, abbreviation) VALUES " +
                    "('Colorado','Denver',5773714,'West','CO')," +
                    "('Michigan','Lansing',10050811,'Midwest','MI')," +
                    "('Florida','Tallahassee',21944577,'South','FL')," +
                    "('Maryland','Annapolis',6165129,'Northeast','MD')," +
                    "('Texas','Austin',29527941,'South','TX')," +
                    "('California','Sacramento',39538223,'West','CA')," +
                    "('New York','Albany',20201249,'Northeast','NY')," +
                    "('Ohio','Columbus',11799448,'Midwest','OH')," +
                    "('Georgia','Atlanta',10711908,'South','GA')," +
                    "('Arizona','Phoenix',7151502,'West','AZ')";

            stmt.executeUpdate(sql);

            System.out.println("Data inserted successfully.");

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}