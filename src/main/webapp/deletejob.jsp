<%@page import="java.io.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobPortal</title>
</head>
<body>


 <% 
    
      try
              {
    	  
    	  String d1 = (String) session.getAttribute("post");			 
    	  String d2 = (String) session.getAttribute("jobid");
    	  

          Class.forName("org.postgresql.Driver");
  		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
  			
      Statement st=con.createStatement();
      String sql="delete  from JobDetails where Post='"+d1+"' and JobId='"+d2+"'";
      st.executeUpdate(sql);
        
      out.println("Data is deleted");
      
        
            
              %>




 <%
            
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>
  <p><font color="red"><a href="CompanyHomePage.jsp" class="style2">Goto Home</a></font> </p>
</body>
</html>
