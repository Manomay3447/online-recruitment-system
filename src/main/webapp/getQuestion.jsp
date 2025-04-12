<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    //Connection con;
    Statement st;
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment","root","root");

    int qno=Integer.parseInt(request.getParameter("qno")) ;

    try{

        
    }catch(Exception ex){
        out.println("Error:" + ex.toString());
    }
%>
