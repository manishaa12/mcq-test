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
     String uname=request.getParameter("u");
     String upass=request.getParameter("p");
     try
	  {
		    Class.forName("oracle.jdbc.driver.OracleDriver");
		     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		     PreparedStatement ps=con.prepareStatement("select urole from mcqreg where uname=? and upass=?");  
		     ps.setString(1,uname);
		     ps.setString(2,upass);
		     ResultSet rs=ps.executeQuery();
		     if(rs.next())
		    	 if(rs.getString(1).equals("Student"))
		    	 {
		    		 session.setAttribute("us",uname);
		    	   response.sendRedirect("swelcome.jsp");
		    	   
		    	 }
		    	 else
		    	  response.sendRedirect("fwelcome.jsp");
		     else
		    	 out.println("Wrong User");    
		     con.close();
	  }
	  catch(Exception e)
	  {
		  out.println(e);}
%>

</body>
</html>