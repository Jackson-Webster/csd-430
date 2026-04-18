<%@ page import="module6.JacksonStatesBean" %>

<%
    int id = Integer.parseInt(request.getParameter("state_id"));
    JacksonStatesBean bean = new JacksonStatesBean();
    bean.loadRecord(id);
%>

<html>
<head>
    <title>State Details</title>
</head>
<body>

<h1>US State Database</h1>
<p>This page displays detailed information for a selected state record.</p>

<h2>State Information</h2>

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
        <tr>
            <td><%= bean.getState_id() %></td>
            <td><%= bean.getState_name() %></td>
            <td><%= bean.getCapital() %></td>
            <td><%= bean.getPopulation() %></td>
            <td><%= bean.getRegion() %></td>
            <td><%= bean.getAbbreviation() %></td>
        </tr>
    </tbody>
</table>

<br>
<a href="dropdown.jsp">Back to selection</a>

</body>
</html>