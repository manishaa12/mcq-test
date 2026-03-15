<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.*,project.Question" %>
<%
String uname=(String)session.getAttribute("us");
int qno=Integer.parseInt((String)session.getAttribute(uname+"_"+"qn"));

ArrayList q=(ArrayList)session.getAttribute(uname+"_exqu");
String uans=request.getParameter("r");
if(uans==null)
uans="";
if(q.size()==(qno+1))
{
	if(uans.equals(((Question)q.get(qno)).getANS()))
		session.setAttribute(uname+"_"+"res",""+(Integer.parseInt((String)session.getAttribute(uname+"_"+"res"))+2));
response.sendRedirect("result.jsp");
}
else
{

out.println(qno);
if(uans.equals(((Question)q.get(qno)).getANS()))
session.setAttribute(uname+"_"+"res",""+(Integer.parseInt((String)session.getAttribute(uname+"_"+"res"))+2));
 session.setAttribute(uname+"_"+"qn",""+(Integer.parseInt((String)session.getAttribute(uname+"_"+"qn"))+1));
 System.out.println(q.size()+" "+qno);
 response.sendRedirect("test.jsp");                                   
}
%>
</body>
</html>