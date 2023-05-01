<%@page import="java.util.Vector"%>
<%@page import="Model.DataLogics"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String regno=request.getParameter("rg");
	String password=request.getParameter("pa");
	
	HttpSession hs=request.getSession();
	
	
	DataLogics s=new DataLogics();
	Vector v=s.AdminLoginLogics();
	
	if(v.contains(regno) && v.contains(password))
	{
		hs.setAttribute("regno", regno);
		hs.setAttribute("password", password);
		RequestDispatcher rd=request.getRequestDispatcher("AdminFetchAction.jsp");
		rd.forward(request, response);
	}
	else
	{
		out.println("<html>");
		out.println("<center>");
		out.println("<h1 style='color:red;'>Invalid Admin Username or Password</h1>");
		RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
		rd.include(request, response);
		out.println("</center>");
		out.println("</html>");
	}

%>


</body>
</html>