<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MCQ App-Practice Test</title>
<style>
body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #0E85B3, #9CD8EF);
            color: #ffffff;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .container {
            background: #16118D;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
            max-width: 1200px;width: 90%;
            text-align: center;
        }
        
        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #E8E8E8;
        }

        .subject-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
        }.subject-card {
            background: #34495e;
            border-radius: 15px;
            padding: 20px;
            width: 250px;
            transition: transform 0.3s, background 0.3s;
            color: #fff;
            text-decoration: none;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }
        
        .subject-card:hover {
            transform: scale(1.05);
            background: #2c3e50;
            
        }

        .subject-name {font-size: 30px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .question-count {
            font-size: 16px;
            color: #d1d1d1;
        }

        a {
            color: #ffffff;
            text-decoration: none;
           
            
        }

        a:hover {
            text-decoration:border solid;
            transition:.2s;
            size:50px;
        }

        .back-link {
            margin-top: 30px;
            display: inline-block;
            padding: 10px 20px;
            background: #060270;
            color: white;
            border-radius: 10px;
            text-decoration: none;
            transition: background 0.3s;
        }

        .back-link:hover {
            background: #08088A;
        }
        .m{
          position:absolute;
          top:70%;
          left:50%;
          padding:15px 20px;
  font-size: 16px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
 
  font-weight: 500;
  color: #000;
  background-color: #CC6CE7;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
        }
        .m:hover {
  background-color: #23c483;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.m:active {
  transform: translateY(-1px);
}
        .d{
        padding:15px 20px;
  font-size: 16px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
 
  font-weight: 500;
  color: #000;
  background-color: #CC6CE7;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  
        }
        .d:hover {
  background-color: #23c483;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.d:active {
  transform: translateY(-1px);
}
        
</style>
</head>
<body>
<div class="container">
    <h1>Choose Your Subject for the Practice Test</h1>
    <div class="subject-grid">
    
<%@page import="java.sql.*,java.util.*,project.Question" %>
   <%
   ArrayList que=new <Question>ArrayList();
   try
 {
   Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select subject,count(subject) from mcqque group by subject order by count(subject) desc");  
    PreparedStatement ps1=con.prepareStatement("select * from mcqque");  
    ResultSet rs1=ps1.executeQuery();
    ResultSet rs=ps.executeQuery();
    String uname=(String)session.getAttribute("us");
    //System.out.println(uname);
    session.setAttribute(uname+"_res","0");
    session.setAttribute(uname+"_qn", "0");
    session.setAttribute(uname+"_tqn", "0");
    while(rs.next())
    {
        out.println("<div class='d' type=button> <br><a href=preloadtest.jsp?t="+rs.getString(1)+"&n="+rs.getString(2)+">"+rs.getString(1)+" Test</a> (<font color=red> "+rs.getString(2)+"</font> ) </div>");  
     }
     while(rs1.next())
        if(rs1.getString(2)!=null)
          que.add(new Question(rs1.getString(2),rs1.getString(3),rs1.getString(4),rs1.getString(5),rs1.getString(6),rs1.getString(7),rs1.getString(9)));
    session.setAttribute("tq", que);
    
     con.close();
  }
  catch(Exception e)
  {
  out.println(e);
  }
    
 %>
 <br><br>
 <a href=swelcome.jsp class=m type=button>Back</a>

 </div>
 </div>

</body>
</html>