<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Jsp</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String user=request.getParameter("user");

String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from user1 where user=user");
if(rs.next()){
	if(rs.getString(2).equals(pwd)){
		out.println("welcome "+user);
	}else
	{
		out.println("Invalid password try again");
	}
}
else


%>
<a href="index.html">Logout</a>
 <%--- <button href="index.html" >Logout</button>
 <button onclick="index.html">
      Click Here
    </button>
    
      <input type="button" onclick="index.html" value="w3docs" /> --%>
</body>
</html>