<%@ page import="module6.JacksonStatesBean" %>

<html>
<head>
    <title>Updated State</title>
</head>
<body>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("state_name");
    String capital = request.getParameter("capital");
    int population = Integer.parseInt(request.getParameter("population"));
    String region = request.getParameter("region");
    String abbreviation = request.getParameter("abbreviation");

    JacksonStatesBean bean = new JacksonStatesBean();

    bean.updateRecord(id, name, capital, population, region, abbreviation);

    bean.loadRecord(id);
%>

<h2>Updated Record</h2>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>State</th>
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

</body>
</html>