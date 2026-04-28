<%@ page import="module6.JacksonStatesBean" %>

<html>
<head>
    <title>Update State</title>
</head>
<body>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    JacksonStatesBean bean = new JacksonStatesBean();
    bean.loadRecord(id);
%>

<h2>Update State</h2>

<form action="updateProcess.jsp" method="post">

    ID (cannot change): <%= bean.getState_id() %>
    <input type="hidden" name="id" value="<%= bean.getState_id() %>"><br><br>

    State Name:
    <input type="text" name="state_name" value="<%= bean.getState_name() %>"><br><br>

    Capital:
    <input type="text" name="capital" value="<%= bean.getCapital() %>"><br><br>

    Population:
    <input type="text" name="population" value="<%= bean.getPopulation() %>"><br><br>

    Region:
    <input type="text" name="region" value="<%= bean.getRegion() %>"><br><br>

    Abbreviation:
    <input type="text" name="abbreviation" value="<%= bean.getAbbreviation() %>"><br><br>

    <input type="submit" value="Update State">
</form>

</body>
</html>