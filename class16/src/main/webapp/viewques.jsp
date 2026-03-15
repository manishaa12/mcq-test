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
            background-color: #268DB6;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #000000;
        }
        h2 {
            color: #000000;
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
            border-radius:8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table, th, td {
            border: 1px solid #ccc;
            border-radius:8px;
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
            border-radius:8px;
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
</head>
<body><center>
<h1>Online MCQ Practice App</h1><hr color=blue>
   <br></br>
   <h2>View Questions</h2>
   </center>
   <table >
   <tr><th>Slno</th><th>Question</th><th>Option1</th><th>Option2</th><th>Option3</th><th>Option4</th><th>Answer</th><th>Level</th><th>Subject</th></tr>
<%@ page import="java.sql.*" %>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	     PreparedStatement ps=con.prepareStatement("select * from mcqque");  
	     ResultSet rs=ps.executeQuery();
	     while(rs.next())
	     {
	    	 out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td></tr>"); 
	     
	     }
con.close();
}
catch(Exception e)
{
	  out.println(e);
} 
%>
</table>
	    	
</body>
</html>