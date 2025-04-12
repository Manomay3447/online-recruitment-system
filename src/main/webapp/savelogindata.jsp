

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobPortal</title>
    </head>
    <body>
        <% try {
            String s1 = request.getParameter("username");
            String s2 = request.getParameter("password");


            session.setAttribute("s1", s1);
            session.setAttribute("s2", s2);

            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
            Statement st = con.createStatement();
           
            String stat = "";
            ResultSet rs;
            rs = st.executeQuery("select * from login where Username='" + s1 + "' and Password='" + s2 + "'");
        
            while (rs.next()) 
            {
                stat = rs.getString("Status");
            } //while
            if (stat.equals("s")) {
                response.sendRedirect("CandidateHomePage.jsp");
            } else if (stat.equals("c")) {
                response.sendRedirect("CompanyHomePage.jsp");
            } else if (stat.equals("a")) {
                response.sendRedirect("AdminHomePage.jsp");
            } else {
                response.sendRedirect("Login.jsp");

            }
        }//try
        catch (Exception e) {
            out.println(e);
        }
        %>
        <!-- <input type="hidden" name = "hid" value="<%request.getParameter("Username");%>" -->
    </body>
</html>
