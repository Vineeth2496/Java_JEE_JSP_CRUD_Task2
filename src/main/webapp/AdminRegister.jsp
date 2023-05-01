<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Register</title>
<style>
body {
       
	background-image: url('https://image.shutterstock.com/image-photo/double-exposure-graph-rows-coins-260nw-531998662.jpg');
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
	<form action="AdminRegisterAction.jsp">
	<h3>
		<table width="400px" border="1">
		<tr>
			<td colspan="2" style="text-align: center; color: blue;"><h2>Admini Registration</h2></td>
		</tr>
		<tr>
			<td style="text-align: left">Firstname</td>
			<td><input type="text" name="fn" id="fn"> </td>
		</tr>
		<tr>
			<th style="text-align: left">Lastname</th>
			<td><input type="text" name="ln" id="ln"> </td>
		</tr>
		<tr>
			<th style="text-align: left">Email</th>
			<td><input type="email" name="em" id="em"> </td>
		</tr>
		<tr>
			<th style="text-align: left">Registeration No</th>
			<td><input type="text" name="rg" id="rg"> </td>
		</tr>
		<tr>
			<th style="text-align: left">Password</th>
			<td><input type="password" name="pa" id="pa"> </td>
		</tr>
		<tr>
			<th style="text-align: left">Phone No</th>
			<td>
			<select name="std" id="std">
			<option>+91</option>
			<option>+92</option>
			<option>+420</option>
			<option>+20</option>
			<option>+33</option>
			<option>+49</option>
			<option>+36</option>
			<option>+98</option>
			<option>+39</option>
			</select>
			<input type="text" name="ph" id="ph"> </td>
		</tr>
		<tr>
			<th style="text-align: left">Gender</th>
			<th>Male:<input type="radio" name="gn" value="male" id="gn"> Female:<input type="radio" name="gn" value="female" id="gn"> Others:<input type="radio" name="gn" value="others" id="gn"> </th>
		</tr>
		<tr>
			<th style="text-align: center;" colspan="2"><input type="submit" value="Register" style="background-color: blue;"></th>
		</tr>
		
		</table>
		</h3>
	</form>
	<h3>If already Registered? <a href="AdminLogin.jsp">Login</a></h3>
</center>	
</body>
</html>