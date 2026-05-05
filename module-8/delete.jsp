<%@ page import="module6.JacksonStatesBean" %>
<%@ page import="java.sql.ResultSet" %>

<%
/*
Deletes a selected state record
Then reloads updated data
*/

JacksonStatesBean bean = new JacksonStatesBean();

// Get selected ID
String id = request.getParameter("state_id");

// Delete record if ID exists
if (id != null) {
    bean.deleteRecord(Integer.parseInt(id));
}
%>

<html>
<head>
    <title>Delete State</title>
</head>
<body>

<h1>Updated State Records</h1>

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
ResultSet rs = null;

try {
    rs = bean.getAllRecords();

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
    out.println("Error loading updated records");
}
%>

</tbody>
</table>

<h2>Delete Another State</h2>

<form action="delete.jsp" method="post">
<select name="state_id">

<%
try {
    rs = bean.getAllRecords();

    while (rs.next()) {
%>
<option value="<%= rs.getInt("state_id") %>">
    <%= rs.getInt("state_id") %> - <%= rs.getString("state_name") %>
</option>
<%
    }
} catch (Exception e) {
    out.println("Error loading dropdown");
}
%>

</select>

<input type="submit" value="Delete">
</form>

<br><br>
<a href="index.jsp">Back to Main Page</a>

</body>
</html>