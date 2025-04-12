<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobPortal</title>
    </head>
    <body>
        <table>
    
<% try      
      {

      String unm=request.getParameter("unm");
      out.println(unm);

      Class.forName("org.postgresql.Driver");
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
			

           Statement st=con.createStatement();
           Statement st2=con.createStatement(); 
           Statement st3=con.createStatement();
          
       st.executeUpdate("Delete from result where studentID='"+unm+"'");
       //st2.executeUpdate("Delete from Login where Username='"+uid+"'");
       //st3.executeUpdate("Delete from Experienced where Username='"+uid+"'");
       //response.sendRedirect("canexamresult.jsp");
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
