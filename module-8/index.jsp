<%@ page import="module6.JacksonStatesBean" %>
<%@ page import="java.sql.ResultSet" %>

<%
/*
Jackson Webster
Module 7 Project Part 2

This page:
1. Accepts user input to insert a new state
2. Displays all records in a table format
*/

JacksonStatesBean bean = new JacksonStatesBean();

// Get form values
String name = request.getParameter("state_name");
String capital = request.getParameter("capital");
String population = request.getParameter("population");
String region = request.getParameter("region");
String abbreviation = request.getParameter("abbreviation");

// Insert record if form submitted
if (name != null && capital != null) {
    bean.insertRecord(
        name,
        capital,
        Integer.parseInt(population),
        region,
        abbreviation
    );
}
%>

<html>
<head>
    <title>State Database</title>
</head>
<body>

<h1>US State Database</h1>
<p>Add a new state and view all records stored in the database.</p>

<h2>Add New State</h2>

<form method="post" action="index.jsp">
    State Name: <input type="text" name="state_name" required><br><br>
    Capital: <input type="text" name="capital" required><br><br>
    Population: <input type="number" name="population" required><br><br>
    Region: <input type="text" name="region" required><br><br>
    Abbreviation: <input type="text" name="abbreviation" required><br><br>
    <input type="submit" value="Add State">
</form>

<h2>All State Records</h2>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>State Name</th>
            <th>Capital</th>
            <th>Population</th>
            <th>Region</th>
            <th>Abbreviation</th>
        </tr>
    </thead>
    <tbody>

<%
try {
    ResultSet rs = bean.getAllRecords();

    while (rs.next()) {
%>
        <tr>
            <td><%= rs.getInt("state_id") %></td>
            <td><%= rs.getString("state_name") %></td>
            <td><%= rs.getString("capital") %></td>
            <td><%= rs.getInt("population") %></td>
            <td><%= rs.getString("region") %></td>
            <td><%= rs.getString("abbreviation") %></td>
        </tr>
<%
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>

    </tbody>
</table>

<br>
<a href="dropdown.jsp">Go to Select Page</a>
<a href="updateSelect.jsp">Update State Record</a>

</body>
</html>