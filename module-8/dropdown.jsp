<%@ page import="module6.JacksonStatesBean" %>
<%@ page import="java.util.ArrayList" %>

<%
    JacksonStatesBean bean = new JacksonStatesBean();
    ArrayList<Integer> keys = bean.getAllKeys();
%>

<html>
<head>
    <title>Select a State</title>
</head>
<body>

<h1>US State Database</h1>
<p>Select a state ID to view full details from the database.</p>

<h2>Select a State ID</h2>

<form action="display.jsp" method="post">
    <select name="state_id">
        <% for (int id : keys) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <br><br>
    <input type="submit" value="Show Record">
</form>

</body>
</html>