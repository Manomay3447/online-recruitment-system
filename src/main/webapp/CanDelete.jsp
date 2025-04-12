<%@ page  import="java.sql.*" %>
<%
        String cname = request.getParameter("uid");
        try {
        	Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
            Statement st = con.createStatement();
            String sql = "delete from details where username='" + cname + "'";
            int x = st.executeUpdate(sql);
            if (x > 0) {
                response.sendRedirect("AdminCompanyDetails.jsp");
            } else {
                out.println("Error: cannot delete record");

            }
            con.close();
        } catch (Exception ex) {
            out.println(ex.getMessage());
        }
%>
