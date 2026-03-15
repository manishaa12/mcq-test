<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        color: #333;
        padding: 20px;
        background-color: #0044cc;
        color: white;
        margin: 0;
    }

    h2 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: white;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }

    th {
        background-color: #0044cc;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }hr {
        border: 1px solid blue;
    }

    .container {
        padding: 20px;
    }

    .welcome-message {
        text-align: center;
        font-size: 1.2em;
        color: #333;
        margin-top: 20px;
    }
    .but{
  padding: 1.3em 3em;
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000000;
  background:#7DDA58;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
}

.but:hover {
  background-color: #23c483;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.but:active {
  transform: translateY(-1px);
}
</style>
<body>
<%
    String uname = (String) session.getAttribute("us");
%>

<div class="container">
    <h1>Online MCQ Practice App</h1>
    <hr color="blue">
    
    <div class="welcome-message">
        <h2>Welcome Faculty, <%= uname %></h2>
    </div>

    <table>
        <tr>
            <th>Slno</th>
            <th>Test Subject</th>
            <th>Total Score</th>
            <th>Questions Attempted</th>
            <th>Percentage</th>
            <th>Participant Name</th>
            <th>Test Date</th>
        </tr>

        <%@ page import="java.sql.*" %>
<%
        float per = 0.0f;
        int sno = 0;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            PreparedStatement ps = con.prepareStatement("select * from mcqres order by tscore desc");
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                per = (float) rs.getInt(3) / (rs.getInt(4) * 2);
                out.println("<tr><td>" + ++sno + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getInt(3) + "</td><td>" + rs.getInt(4) + "</td><td>" + per * 100 + " %</td><td>"+rs.getString(6)+"</td><td>" + rs.getDate(5) + "</td></tr>");
            }
            con.close();
        } catch (Exception e) {
            out.println(e);
        }
        %>
        <tr><th colspan=7><form action=fwelcome.jsp><input type=submit value=Back class=but style="color:white;background:green;width:150;"></form></th></tr>
</table>
</div>


</body>
</html>