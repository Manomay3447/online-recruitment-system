

<%@page  import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JobPortal</title>
        <style type="text/css">
            <!--
            body {
                background-color: #E2EFD6;
            }
            -->
    </style></head>
    <body>
        <table>
            <% try {
            String jid = request.getParameter("jid");
			String eid = request.getParameter("vacancies1");
			//out.println(eid);
            
            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
            Statement st = con.createStatement();
            st.executeUpdate("Update jobdetails set Criteria='" + request.getParameter("crit") + "',NoOfVacancies='" + request.getParameter("vacancies") + "',Salary='" + request.getParameter("sal") + "',LastDate='" + request.getParameter("lstdate") + "' where Post ='" + eid + "'");
            %>
            <font color="red" size="5"> <%out.println("You have Successfully Edited!!!");%></font>
            <%   } catch (Exception e) {
            out.println(e);
        }

            %>
        </table>
        <p>&nbsp;</p>
        <p><a href="CompanyHomePage.jsp"><strong>Goto Home</strong></a> </p>
    </body>
</html>
