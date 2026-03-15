<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
        margin: 0;
        padding: 0;
        font-family: 'Verdana', sans-serif;
        background: linear-gradient(135deg, #E2EAF4,#A1C5F4), url('https://source.unsplash.com/1600x900/?education,teaching') no-repeat center center fixed;
        background-size: cover;
        color: black;
        min-height: 100vh;
}
        table{border:none;
               border-radius:10px;
               box-shadow:5px 6px 6px;
               background:#548DDD;}
       #t{position:absolute;left:1000px;font-size:20px;font-weight:bold;}
       .v{height: 50px;
  width: 200px;
  position: relative;
  background-color: #17B927;
  cursor: pointer;
  border: 2px solid #252525;
  overflow: hidden;
  border-radius: 30px;
  color: #333;
  transition: all 0.5s ease-in-out;
}

.btn-txt {
  z-index: 1;
  font-weight: 800;
  letter-spacing: 4px;
}

.type1::after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  transition: all 0.5s ease-in-out;
  background-color: #333;
  border-radius: 30px;
  visibility: hidden;
  height: 10px;
  width: 10px;
  z-index: -1;
}

.v:hover {
  box-shadow: 1px 1px 200px #252525;
  color: #fff;
  border: none;
}

.type1:hover::after {
  visibility: visible;
  transform: scale(100) translateX(2px);
}

       
 </style>
    <script>
    
        var val=30;
        function tim() 
        {
            document.getElementById("t").innerHTML = 'Time Left: ' + val;
            val--;
            
             if(val==0)
             {
            	 document.getElementById("fm").action="checkres.jsp";
            	 document.getElementById("fm").submit();
             }
             
            setTimeout("tim()", 1000);
        }
        
</script>

</head>
<body onload="tim();">
<%@ page import="java.sql.*,java.util.*,project.Question" %>
<%
   String uname=(String)session.getAttribute("us");
   int res=Integer.parseInt((String)session.getAttribute(uname+"_"+"res"));
   int qno=Integer.parseInt((String)session.getAttribute(uname+"_"+"qn"));
   out.println("<h1>"+res+" "+qno+"</h1>");
   
   
  ArrayList q=(ArrayList)session.getAttribute(uname+"_exqu");
  System.out.println(q);


%>
<h1 align=center>MCQ Practice App</h1><h3 id=t></h3>
<br>
<table align=center cellspacing=40 bgcolor=lightgray>
<caption style="font-size:27px;"><b>Multiple Choice Questions</b></caption>
<form action=checkres.jsp>
     <tr><td colspan=2><h3>Q. <%= ((Question)q.get(qno)).getQT()%></h3></td></tr>
     <tr><td><input type=radio name=r value="<%= ((Question)q.get(qno)).getOP1() %>"><%= ((Question)q.get(qno)).getOP1() %></td>
    <td><input type=radio name=r value="<%= ((Question)q.get(qno)).getOP2() %>"><%= ((Question)q.get(qno)).getOP2() %></td></tr>
<tr><td><input type=radio name=r value="<%= ((Question)q.get(qno)).getOP3() %>"><%= ((Question)q.get(qno)).getOP3() %></td>
    <td><input type=radio name=r value="<%= ((Question)q.get(qno)).getOP4() %>"><%= ((Question)q.get(qno)).getOP4() %></td></tr>
<tr><th align=right colspan=2><input type=submit value=Next class=v></th></tr>

</table>
</form>

</body>
</html>