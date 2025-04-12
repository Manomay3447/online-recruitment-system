
<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobPortal</title>
    </head>
    <body background="wpa552ad7e[1].png">
    <% try
          {
        //  HttpSession s1=request.getSession();
            String a=(String)session.getAttribute("jobid");

String b = request. getParameter("eid");

           // String b=(String)session.getAttribute("post");                    
           // response.sendRedirect("ExamCreation.jsp");
         
            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
           Statement st=con.createStatement();
//for(int i=0;i<b.length;i++){

           st.executeUpdate("insert into Exam values('"+a+"','"+b+"','"+request.getParameter("examid")+"','"+request.getParameter("examname")+"','"+request.getParameter("cutoff")+"')");//}
    //  out.println("insert into Exam values('"+a+"','"+b+"','"+request.getParameter("examid")+"','"+request.getParameter("examname")+"','"+request.getParameter("cutoff")+"')");
   //   out.println("test");
      //     st.close();
          // st2.close();
           
             }
       
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
           %>
            <font color="red" size="5"><br>
               <%out.println("Data submitted successfully!!!");%>
               <br>
             
          </font>
          <p>&nbsp;</p>
        <p><a href="CompanyHomePage.jsp"><strong>Goto Home</strong></a> </p>
    </body>
</html>
