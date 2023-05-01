<%@page import="Model.DataLogics"%>
<%@page import="Model.Data"%>
<%@page import="javax.swing.plaf.synth.SynthOptionPaneUI"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Register</title>
</head>
<body>

<%
	response.setContentType("text.html");
	String firstname=request.getParameter("fn");
	String lastname=request.getParameter("ln");
	String email=request.getParameter("em");
	String regno=request.getParameter("rg");
	String password=request.getParameter("pa");
	String stdcode=request.getParameter("std");
	String phoneno=request.getParameter("ph");
	String gender=request.getParameter("gn");
	
	Data d=new Data();
	d.setFirstname(firstname);
	d.setLastname(lastname);
	d.setEmail(email);
	d.setRegno(regno);
	d.setPassword(password);
	d.setStdcode(stdcode);
	d.setPhoneno(phoneno);
	d.setGender(gender);
	
	DataLogics s=new DataLogics();
	int i=s.register_logics(d);
	out.println("<html><center><h1>");
	out.println("<font color='green'>Sucessfully Regisetered:</font>"+i);
	out.println("</h1></html></center>");
	

%>
</body>
</html>