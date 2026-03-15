<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
      String name=request.getParameter("u");
      String email=request.getParameter("p");   
      String phone=request.getParameter("e");
	  String password=request.getParameter("r");
	  
	  try
	  {
		    Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		     PreparedStatement ps=con.prepareStatement("insert into mcqreg values(?,?,?,?)");  
		     ps.setString(1,name);
		     ps.setString(2,email);
		     ps.setString(3,phone);
		     ps.setString(4,password);
		     if(ps.executeUpdate()>=1)
		    	 response.sendRedirect(".html");
con.close();
	  }
catch(Exception e)
	  {
		  out.println("Already Registered"+e);
		  response.setHeader("Refresh","3;URL=newreg.html");
	  }
%>
</body>
</html>