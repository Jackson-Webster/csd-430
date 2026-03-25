<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
/*
Jackson
March 25, 2026
Module 2 Programming Assignment
This program displays a table of characters and their roles from the manhwa Legend of the Northern Blade using JSP scriptlets.

Description: Displays information about characters from Legend of the Northern Blade
*/

// Data arrays
String[] names = {"Jin Mu-Won", "Hwang Cheol", "Jo Cheon-Woo", "Ha Jin-Wol", "Seo Mu-Sang"};
String[] roles = {"Main Character", "Warrior", "Enemy Leader", "Strategist", "Merchant"};
String[] traits = {"Strong and calm", "Loyal and brave", "Aggressive", "Smart thinker", "Clever"};
%>

<!DOCTYPE html>
<html>
<head>
    <title>Legend of the Northern Blade</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

<h1>Legend of the Northern Blade Character Table</h1>

<p>This page shows important characters from the manhwa and their roles.</p>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Role</th>
        <th>Traits</th>
    </tr>

    <%
    for(int i = 0; i < names.length; i++) {
    %>
    <tr>
        <td><%= names[i] %></td>
        <td><%= roles[i] %></td>
        <td><%= traits[i] %></td>
    </tr>
    <%
    }
    %>

</table>

<p>Total Characters: <%= names.length %></p>

</body>
</html>