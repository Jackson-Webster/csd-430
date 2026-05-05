package module6;

import java.sql.*;
import java.util.ArrayList;

public class JacksonStatesBean {

    private int state_id;
    private String state_name;
    private String capital;
    private int population;
    private String region;
    private String abbreviation;

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3309/csd430",
            "student1",
            "pass"
        );
    }

    public ArrayList<Integer> getAllKeys() {
        ArrayList<Integer> keys = new ArrayList<>();

        try {
            Connection conn = getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT state_id FROM jacksonstatesdata");

            while (rs.next()) {
                keys.add(rs.getInt("state_id"));
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return keys;
    }

    public void loadRecord(int id) {
        try {
            Connection conn = getConnection();

            String sql = "SELECT * FROM jacksonstatesdata WHERE state_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                state_id = rs.getInt("state_id");
                state_name = rs.getString("state_name");
                capital = rs.getString("capital");
                population = rs.getInt("population");
                region = rs.getString("region");
                abbreviation = rs.getString("abbreviation");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertRecord(String name, String capital, int population, String region, String abbreviation) {
        try {
            Connection conn = getConnection();

            String sql = "INSERT INTO jacksonstatesdata (state_name, capital, population, region, abbreviation) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, capital);
            ps.setInt(3, population);
            ps.setString(4, region);
            ps.setString(5, abbreviation);

            ps.executeUpdate();

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet getAllRecords() {
        try {
            Connection conn = getConnection();
            Statement stmt = conn.createStatement();
            return stmt.executeQuery("SELECT * FROM jacksonstatesdata");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getState_id() {
        return state_id;
    }

    public String getState_name() {
        return state_name;
    }

    public String getCapital() {
        return capital;
    }

    public int getPopulation() {
        return population;
    }

    public String getRegion() {
        return region;
    }

    public String getAbbreviation() {
        return abbreviation;
    }

    public void updateRecord(int id, String name, String capital, int population, String region, String abbreviation) {
    try {
        Connection conn = getConnection();

        String sql = "UPDATE jacksonstatesdata SET state_name=?, capital=?, population=?, region=?, abbreviation=? WHERE state_id=?";
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setString(1, name);
        ps.setString(2, capital);
        ps.setInt(3, population);
        ps.setString(4, region);
        ps.setString(5, abbreviation);
        ps.setInt(6, id);

        ps.executeUpdate();

        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
    public void deleteRecord(int id) {
    try {
        Connection conn = getConnection();

        String sql = "DELETE FROM jacksonstatesdata WHERE state_id = ?";
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setInt(1, id);
        ps.executeUpdate();

        conn.close();

    } catch (Exception e) {
        e.printStackTrace();
    }

}
}
