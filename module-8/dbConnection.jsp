<%@ page import="java.sql.*" %>

<%
String url = "jdbc:mysql://localhost:3306/your_db_name";
String user = "root";
String password = "your_password";

Connection conn = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, password);
} catch(Exception e) {
    out.println("Database connection failed");
}
%>