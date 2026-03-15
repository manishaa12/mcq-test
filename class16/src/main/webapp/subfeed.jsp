<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>

<%
    
    String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
    String dbUser = "system";
    String dbPassword = "system";

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    Connection con = null;
    PreparedStatement ps = null;

    try {
      
        Class.forName("oracle.jdbc.driver.OracleDriver");

     
        con = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        
        String sql = "INSERT INTO feedback (name, email, message) VALUES (?, ?, ?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, message);

        // Execute the query
        int result = ps.executeUpdate();

        if (result > 0) {
            out.println("<h3>Feedback submitted successfully!</h3>");
        } else {
            out.println("<h3>Error: Could not submit feedback.</h3>");
        }
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
        e.printStackTrace();
    } finally {
        // Close resources
        if (ps != null) ps.close();
        if (con != null) con.close();
    }
%>

</body>
</html>