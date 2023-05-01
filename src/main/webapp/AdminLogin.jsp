<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
body {
       
	background-image: url('data:image/jpeg;base64,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');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	color: activecaption;
}
</style>
</head>
<body>
<center>

	</br></br></br>
	
	<form action="AdminLoginAction.jsp">
	<h3>
	<table style="width: 25%" border="1">
		<tr>
			<td colspan="2" style="text-align: center; color: blue;"><h2>Admini Login</h2></td>
		</tr>
		<tr>
			<th style="text-align: left">Registeration No</th>
			<td style="width: 50%;"><input type="text" name="rg" id="rg"> </td>
		</tr>
		<tr>
			<th style="text-align: left">Password</th>
			<td><input type="password" name="pa" id="pa"> </td>
		</tr>
		<tr>
			<th style="text-align: center;" colspan="2" ><input type="submit" value="Login" style="background-color: blue;"></th>
		</tr>
				
	</table>
	</h3>	
	</form>
	<h3>If did'nt Registered? <a href="AdminRegister.jsp">Register</a></h3>
</center>
</body>
</html>