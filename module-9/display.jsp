<%@ page import="module6.JacksonStatesBean" %>
<%@ page import="java.util.ArrayList" %>

<%
/*
Loads all state IDs for dropdown selection
*/

JacksonStatesBean bean = new JacksonStatesBean();
ArrayList<Integer> keys = bean.getAllKeys();
%>

<html>
<head>
    <title>Select a State</title>
</head>
<body>

<h1>US State Database</h1>
<p>Select a state ID to view or delete a record.</p>

<h2>View a State</h2>

<form action="display.jsp" method="post">
    <select name="state_id">
        <% for (int id : keys) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <br><br>
    <input type="submit" value="Show Record">
</form>

<br><br>

<h2>Delete a State</h2>

<form action="delete.jsp" method="post">
    <select name="state_id">
        <% for (int id : keys) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <br><br>
    <input type="submit" value="Delete Record">
</form>

<br>
<a href="index.jsp">Back to Main Page</a>

</body>
</html>