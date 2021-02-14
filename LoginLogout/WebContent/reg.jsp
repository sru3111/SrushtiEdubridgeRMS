<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%
String user=request.getParameter("user");

String pwd=request.getParameter("pwd");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");

try
{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge", "root", "root");
	 PreparedStatement ps = conn.prepareStatement("insert into user1 (user, pwd, fname,lname, email) values(?,?,?,?,?)" );
	 ps.setString(1, user);
	 ps.setString(2, pwd);
	 ps.setString(3, fname);
	 ps.setString(4, lname);
	 ps.setString(5, email);
	 
	 
	 int x = ps.executeUpdate();
	 
	 if(x > 0)
	 {
		 System.out.println("Resgistration Done Successfully...");
		 response.sendRedirect("Login.html");

	 }
	 else
	 {
		 System.out.println("Resgistration Failed...");
		 
	 }
	 
}
catch(Exception e)
{
	out.println(e);
}



%>
<a href="Login.html">Login</a>
<a href="index.html">Logout</a>
</body>
</html>