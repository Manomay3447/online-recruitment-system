
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.*,java.sql.*,java.io.*,javax.swing.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobPortal</title>
</head>
<body>
<%
String email,ans;



email=request.getParameter("email");
ans=request.getParameter("ans");


try
{
	
	int k ,flag=0;

    Class.forName("org.postgresql.Driver");
	Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
		
	PreparedStatement ps=con.prepareStatement("insert into contact(email,ans) values(?,?)");	

	ps.setString(1,email);
	ps.setString(2,ans);
	
	int x=ps.executeUpdate();
	
		
		
		
		JOptionPane.showMessageDialog(null,"Answer submitted..."); 
	     response.sendRedirect("contact.jsp");
		
	
}
catch(Exception E)
{
 out.println(E);	
}



%>










</body>
</html>
