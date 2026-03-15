<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #003366;
        }
        h2 {
            color: #00509e;
        }
        hr {
            height: 3px;
            background-color: #00509e;
            border: none;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #00509e;
            color: white;
        }
        td {
            background-color: #e6f2ff;
        }
        .b1, .b2 {
            padding: 5px 10px;
            border: none;
            color: white;
            cursor: pointer;
        }
        .b1 {
            background-color: #28a745;
        }
        .b2 {
            background-color: #dc3545;
        }
        .b1:hover {
            background-color: #218838;
        }
        .b2:hover {
            background-color: #c82333;
        }
        center {
            margin-top: 20px;
        }
    </style>

<body>
<h1>Online MCQ Practice App</h1><hr color=blue>
   <br></br>
   <%
       String uname=(String)session.getAttribute("us");
   %>
   
<%@ page import="java.sql.*" %>
<%
     try
	  {
		    Class.forName("oracle.jdbc.driver.OracleDriver");
		     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		     PreparedStatement ps=con.prepareStatement("select uname,email,urole from mcqreg where uname=?");  
		     ps.setString(1,uname);
		     ResultSet rs=ps.executeQuery();
			 if(rs.next())
			 {
				 out.println("<div><table><tr><td>Name:"+rs.getString(1)+"</td></tr><tr><td>Email:"+rs.getString(2)+"</td></tr><tr><td>Role:"+rs.getString(3)+"</td></tr></table></div>");
		     }	 	 
		     con.close();
	  }
	  catch(Exception e)
	  {
		  out.println(e);
	  } 
%>

</body>
</html>