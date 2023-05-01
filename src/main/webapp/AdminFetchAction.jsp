<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@page import="Model.DataLogics"%>
<%@page import="Model.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Fetch</title>
</head>
<body>
<%
	HttpSession hs=request.getSession(false);
	if(hs != null)
	{
	String regno=(String) hs.getAttribute("regno");
	String password=(String)hs.getAttribute("password");
	
	out.println("<center><h1>WELCOME TO ADMIN LOGIN PROFILE</h1></center></br></br>");
	
	Data d=new Data();
	d.setRegno(regno);
	d.setPassword(password);
	
	DataLogics s=new DataLogics();
	Vector v=s.AdminProfileLogics(d);
	
	Iterator ii=v.iterator();	
	
	out.println("<html>");
	out.println("<body>");
	out.println("<center>");
	out.println("<table border=3>");
	out.println("<tr>");
	out.println("<th>"+"First Name"+"</th>");
	out.println("<th>"+"Last Name"+"</th>");
	out.println("<th>"+"Email"+"</th>");
	out.println("<th>"+"Registeration No"+"</th>");
	out.println("<th>"+"Password"+"</th>");
	out.println("<th>"+"Stdcode"+"</th>");
	out.println("<th>"+"Phone No"+"</th>");
	out.println("<th>"+"Gender"+"</th>");
	out.println("<th>"+"Add New Student"+"</th>");
	out.println("<th>"+"Edit Student Details"+"</th>");
	out.println("</tr>");
	
	while(ii.hasNext())
	{
	out.println("<tr>");
	out.println("<td>"+ii.next()+"</td>");
	out.println("</tr>");
	}
	

/*	for(;ii.hasNext();)
		{
	out.print("<tc>"+
			"<td>"+ ii.next()+"</td>"+
		//	"<td>"+ "<a href='Edit_profile?id="+'>" +"</td>"+
			"</tc>");
	
	
//	out.print();
//	out.print("<pre><td><a href='Register.jsp'><em>Add Student</em></a></td>	<td><a href='Edit_profile.jsp'><em>Edit Student</em></a></td></pre>");
//	out.print("</tr>");
	

	Object oi =  ii.next();
	Data  d2=(Data)   oi;
	out.println("<tr>"+"<td>"+ d2.getFirstname()+"</td>");
	out.println("<td>"+ d2.getLastname()+"</td>");
	out.println("<td>"+ d2.getEmail()+"</td>");
	out.println("<td>"+ d2.getRegno()+"</td>");
	out.println("<td>"+ d2.getPassword()+"</td>");
	out.println("<td>"+ d2.getStdcode()+"</td>");
	out.println("<td>"+ d2.getPhoneno()+"</td>");
	out.println("<td>"+ d2.getGender()+"</td>"+"</tr>");
		}
*/	
	
	out.println("</table></br></br>");
	
	out.println("<a href='AdminEnd.jsp'>Logout</a>");
	out.println("</center>");
	out.println("</body>");
	out.println("</html>");
	}
	else
	{
	out.println("<html>");
	out.println("<center>");
	out.println("<h1 style='color:red;'>Enter Username and Password</h1>");
	RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
	rd.include(request, response);
	out.println("</center>");
	out.println("</html>");
	}
		
	
%>
	
</body>
</html>