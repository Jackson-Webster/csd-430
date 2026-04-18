package module6;

import java.sql.*;
import java.util.ArrayList;

/*
Jackson Webster
Module 6
CSD430
This JavaBean connects to a MySQL database and retrieves
state data for use in JSP pages.
*/

public class JacksonStatesBean {

    private int state_id;
    private String state_name;
    private String capital;
    private int population;
    private String region;
    private String abbreviation;

    /*
    Creates and returns a database connection
    */
    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3309/csd430",
            "javauser",
            "java123"
        );
    }

    /*
    Retrieves all state IDs for dropdown menu
    */
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

    /*
    Loads a single record based on selected state_id
    */
    public void loadRecord(int id) {
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM jacksonstatesdata WHERE state_id = ?"
            );

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

    public int getState_id() { return state_id; }
    public String getState_name() { return state_name; }
    public String getCapital() { return capital; }
    public int getPopulation() { return population; }
    public String getRegion() { return region; }
    public String getAbbreviation() { return abbreviation; }
}