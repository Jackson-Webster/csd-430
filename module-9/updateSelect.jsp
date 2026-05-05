<%@ page import="module6.JacksonStatesBean" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>Select State to Update</title>
</head>
<body>

<h2>Select a State ID to Update</h2>

<form action="updateForm.jsp" method="post">
    <select name="id">

        <%
            JacksonStatesBean bean = new JacksonStatesBean();
            ArrayList<Integer> keys = bean.getAllKeys();

            for(int k : keys){
        %>
            <option value="<%= k %>"><%= k %></option>
        <%
            }
        %>

    </select>

    <input type="submit" value="Select">
</form>

</body>
</html>