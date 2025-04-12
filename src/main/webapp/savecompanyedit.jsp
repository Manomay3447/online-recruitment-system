
<%@page import="java.io.*" session="true"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobPortal</title>
    </head>
    <body>
        <%
        try {
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
           

            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
            Statement st = con.createStatement();
           
            String comname = request.getParameter("comname");
            String comaddress = request.getParameter("comaddress");
            String compost = request.getParameter("compost");
            String comcriteria = request.getParameter("comcriteria");
            String comusername = request.getParameter("comusername");
            String compassword = request.getParameter("compassword");
            String comemail = request.getParameter("comemail");
            String comcontact = request.getParameter("comcontact");
            String comcutoff = request.getParameter("comcutoff");
            String acutoff = request.getParameter("acutoff");
            String lastdate = request.getParameter("lastdate");
           
            ResultSet rs = null;
            
 String a = "Update com set CName='" + comname + "',CAddress='" + comaddress +"',CPost='" + compost + "',CCriteria='" + comcriteria + "',CUsername='" + comusername + "',CPassword='" + compassword + "',CEmail='" + comemail + "',CContact='" + comcontact + "',CCutoff='" + comcutoff +"',ACutoff='" + acutoff + "',lastdate='" + lastdate + "' where CUsername='" + c1 + "'";
            st.executeUpdate(a);
            


        %>
        <font color="red" size="5"> <%out.println("You have Successfully Edited!!!");%></font>
        <%
        } //try
        catch (Exception e) {
            out.println(e);
        }
        %>
        <p>&nbsp;</p>
        <p><a href="CompanyHomePage.jsp"><strong>Goto Home</strong></a> </p>
    </body>
</html>
