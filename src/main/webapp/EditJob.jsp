
<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobPortal</title>
        <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #003399;
	font-weight: bold;
}
.style13 {color: #006600; font-weight: bold; }
-->
        </style>
</head>
<body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
          <tr>
            <td height="107" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
          </tr>
          <tr>
            <td width="1" height="512"><jsp:include page="Companymenu.html"/></td>
            <td width="961" bgcolor="#F1E0E4" valign="top"><br><br>
                <% try {

                String jid =request.getParameter("jid");
                String jpost =request.getParameter("post");
                String jcriteria =request.getParameter("criteria");
                String jvac =request.getParameter("vacancies");
                String jsal =request.getParameter("salary");
                String jdate =request.getParameter("lastdate");

                Class.forName("org.postgresql.Driver");
        		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
        			
                Statement st = con.createStatement();  
                ResultSet rs = st.executeQuery("select * from JobDetails where JobID='" + jid + "'");
                while (rs.next())
                    {  
                    jid=rs.getString("JobId");
                    jpost=rs.getString("Post");
                    jcriteria=rs.getString("Criteria");
                    jvac=rs.getString("NoOfVacancies");
                    jsal=rs.getString("Salary");
                    jdate=rs.getString("LastDate");
      
                    %>
                <form method="post" action="savejobedit.jsp">
                  <table width="531" height="276" border="1" align="center" bordercolor="#999900" bgcolor="#EBECE6">
                
  <tr bordercolor="#999933" bgcolor="#EBECE6">
    <td height="27" colspan="2"><div align="center"><span class="style1">Job Details</span></div></td>
    </tr>
  <tr>
    <td width="207" height="35" bordercolor="#999933" bgcolor="#EBECE6"><span class="style13">Job ID</span></td>
    <td width="314" bordercolor="#996600" bgcolor="#EBECE6"><input name="jobid" type="text" id="jobid" size="35" maxlength="25" value="<%=jid%>"></td>
  </tr>
  <tr>
    <td height="34" bordercolor="#999933" bgcolor="#EBECE6"><span class="style13">Post</span></td>
    <td bordercolor="#996600" bgcolor="#EBECE6"><input name="post" type="text" id="post"  value="<%=jpost%>" size="35"></td>
  </tr>
  <tr>
    <td height="34" bordercolor="#999933" bgcolor="#EBECE6"><span class="style13">Criteria</span></td>
    <td bordercolor="#996600" bgcolor="#EBECE6"><input name="criteria" type="text" id="criteria" value="<%=jcriteria%>" size="35" maxlength="25"></td>
  </tr>
  <tr>
    <td height="31" bordercolor="#999933" bgcolor="#EBECE6"><span class="style13">Vacancies</span></td>
    <td bordercolor="#996600" bgcolor="#EBECE6"><input name="vacancies" type="text" id="vacancies" size="35" maxlength="25" value="<%=jvac%>"></td>
  </tr>
  <tr>
    <td height="32" bordercolor="#999933" bgcolor="#EBECE6"><span class="style13">Salary/Annum</span></td>
    <td bordercolor="#996600" bgcolor="#EBECE6"><input name="salary" type="text" id="salary" value="<%=jsal%>" size="35" maxlength="25"></td>
  </tr>
  <tr>
    <td height="34" bordercolor="#999933" bgcolor="#EBECE6"><span class="style13">LastDate</span></td>
    <td bordercolor="#996600" bgcolor="#EBECE6"><input name="lastdate" type="text" id="lastdate" value="<%=jdate%>" size="35" maxlength="25"></td>
  </tr>
  <tr bordercolor="#999933" bgcolor="#EBECE6">
    <td height="31" colspan="2"><div align="center">
      <input type="submit" name="button" id="button" value="Edit Details">
    </div></td>
    </tr>
</table>
</form>	
<% }//while
     
}
      catch(Exception e)
      {
         out.println(e); 
      }
%>
            </td>
          </tr>
        </table>  
    </body>
</html>
