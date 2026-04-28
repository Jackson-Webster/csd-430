<%@ page import="module6.JacksonStatesBean" %>

<%
String idParam = request.getParameter("state_id");
JacksonStatesBean bean = new JacksonStatesBean();

boolean valid = false;

if (idParam != null && !idParam.isEmpty()) {
    try {
        int id = Integer.parseInt(idParam);
        bean.loadRecord(id);
        valid = true;
    } catch (Exception e) {
        valid = false;
    }
}
%>

<html>
<head>
    <title>State Details</title>
</head>
<body>

<h1>US State Database</h1>

<%
if (!valid) {
%>
<p>Error: No valid state selected.</p>
<%
} else {
%>

<h2>State Information</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>State Name</th>
    <th>Capital</th>
    <th>Population</th>
    <th>Region</th>
    <th>Abbreviation</th>
</tr>

<tr>
    <td><%= bean.getState_id() %></td>
    <td><%= bean.getState_name() %></td>
    <td><%= bean.getCapital() %></td>
    <td><%= bean.getPopulation() %></td>
    <td><%= bean.getRegion() %></td>
    <td><%= bean.getAbbreviation() %></td>
</tr>
</table>

<%
}
%>

<br>
<a href="dropdown.jsp">Back to selection</a>

</body>
</html>