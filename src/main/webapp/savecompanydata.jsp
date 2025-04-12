
<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobPortal</title>
    </head>
    <body bgcolor="#ffffff">
        <% try
          {
         

            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
            Statement st=con.createStatement();
          Statement st2=con.createStatement();
          
         String stat="c";
          st2.executeUpdate("insert into Login values('"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+stat+"')");
          st.executeUpdate("insert into Com(CName,CAddress,CPost,CCriteria,CUsername,Cpassword,CEmail,CContact,CCutoff,ACutoff,lastdate) values('"+request.getParameter("comname")+"','"+request.getParameter("comaddress")+"','"+request.getParameter("compost")+"','"+request.getParameter("comcriteria")+"','"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+request.getParameter("comemail")+"','"+request.getParameter("comcontact")+"','"+request.getParameter("comcutoff")+"','"+request.getParameter("acutoff")+"','"+request.getParameter("lastdate")+"')");
          st.close();
          st2.close();
          
             }
       
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
           %>
           <font color="red" size="5"><br>
               <%out.println("Registration Successfull!!!");%>
               <br>
               <%out.println("You will be activated soon... ");%>
               <br>
                <p><a href="Login.jsp">Go Forward</a></p>
          </font>
    </body>
</html>
