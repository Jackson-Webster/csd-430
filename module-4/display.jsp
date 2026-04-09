<%@ page import="beans.DataBean" %>

<%
/*
 * Create and populate the JavaBean
 */
DataBean data = new DataBean();

data.setFirstName("Jackson");
data.setLastName("Webster");
data.setAge(22);
data.setEmail("jackson@email.com");
data.setPhone("555-123-4567");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Data Display Assignment</title>
</head>
<body>

<h1>User Data Report</h1>

<p>This table displays user information stored in a JavaBean.</p>

<table border="1" cellpadding="8">
    <tr>
        <th>Field</th>
        <th>Description</th>
        <th>Value</th>
    </tr>

    <tr>
        <td>First Name</td>
        <td>User's given name</td>
        <td><%= data.getFirstName() %></td>
    </tr>

    <tr>
        <td>Last Name</td>
        <td>User's family name</td>
        <td><%= data.getLastName() %></td>
    </tr>

    <tr>
        <td>Age</td>
        <td>User's age in years</td>
        <td><%= data.getAge() %></td>
    </tr>

    <tr>
        <td>Email</td>
        <td>User's email address</td>
        <td><%= data.getEmail() %></td>
    </tr>

    <tr>
        <td>Phone</td>
        <td>User's contact number</td>
        <td><%= data.getPhone() %></td>
    </tr>

</table>

</body>
</html>