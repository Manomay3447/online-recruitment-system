
<%@page import="java.io.*,java.sql.*"session="true"%>
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
                font-size: 18px;
                font-weight: bold;
                color: #FF0000;
            }
            .style7 {color: #CC3333; font-weight: bold; }
            .style14 {color: #006699}
            .style19 {color: #003366; font-weight: bold; }
            .style20 {color: #663366}
            -->
        </style>
        <script language="javascript">
		function check()
		{
			var a= document.form1.examid.value;
			var b= document.form1.cutoff.value;
			if(document.form1.examid.value=="")
            {
                alert("Enter Exam ID");
                document.form1.examid.focus();
                return false;
            }
            else if(!parseInt(a))
            {
                alert("Enter Integer");
                document.form1.examid.focus();
                return false;
            }
			if(document.form1.examname.value=="")
            {
                alert("Enter Exam Name");
                document.form1.examname.focus();
                return false;
            }
			
			if(document.form1.cutoff.value=="")
            {
                alert("Enter Cutoff mark");
                document.form1.cutoff.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Enter Integer");
                document.form1.cutoff.focus();
                return false;
            }
			else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter cutoff in %");
                document.form1.cutoff.focus();
                return false;
            }

			return true;
		}
		</script>
    </head>
    <body style="margin:0px" bgcolor="#FFFFFF">     <table width="100%" border="1" bgcolor="#FFFFFF">
            <tr>
                <td height="107" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1" height="512"><jsp:include page="Companymenu.html"/></td>
                <td width="961" bgcolor="#B0CDD7" valign="top">
                    <table width="277" height="144" border="0" align="center">
                        <tr>
                            <td colspan="2"><div align="center" class="style1">
                                    <p class="style7 style14">Exam Creation </p>
                            </div></td>
                        </tr>
                        <tr>
                        <%
       String jid = (String) session.getAttribute("s1");
int i=1;
        try {
            if (jid != null) {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:5432/recruitment","admin","admin1234");


                Statement st = con.createStatement();
                        %>
                        <form name="form2" action="ExamCreation.jsp">
                            <td width="163" height="42"><span class="style19">Select a JobID </span></td>
                            <td width="104">
                                <label>
                                    <select name="jobid">
                                        <%     
 ResultSet rs = st.executeQuery("select distinct(jobID) from JobDetails where jobID='"+jid+"'");






                                    String s1 = null;
                                    // String s2=null;
                                    while (rs.next()) {
                            s1 = rs.getString("JobId");
                                        //    s2=rs.getString("Post");

                                        %>
                                        <option value="<%=s1%>"><%=s1%></option>
                                        <% }//while %>
                                    </select>
                                </label>
                            </td>
                            <tr><td> <div align="center">
                                        <input type="submit" value="Show Details">
                            </div></td></tr>
                        </form>


<tr></tr>

<tr>
                            <td><span class="style19">Post Name :</span></td>
                            
                   <td> <td>
                        <%
                          }
 if (jid != null) {
                              jid = request.getParameter("jobid");
                              Class.forName("com.mysql.jdbc.Driver");
                              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:5432/recruitment","admin","admin1234");
                  Statement st = con.createStatement();
   Statement stmt2 = null;
ResultSet rs1=null;
stmt2=con.createStatement();
    					
 rs1=stmt2.executeQuery("select ExamID from exam");
    					
    					
    					while(rs1.next())
    					{
    i=Integer.parseInt(rs1.getString("ExamID"));
    					}
    					i++;

         


%>

<form name="form1" method="post" action="saveexamdetails.jsp" >
   

                       <%      
 ResultSet rs = st.executeQuery("select * from JobDetails where JobId='" + jid + "'");
                              //String s2[] = new String[10];
//int k=0;

String s2=null;
                              while (rs.next()) {
s2=s2+"<option value='"+rs.getString("post")+"'>"+rs.getString("post")+"</option>";
}%>


<select name="eid">

          <%=s2%>
                                       
  </select>

            <%    
session.setAttribute("jobid", request.getParameter("jobid"));
 session.setAttribute("post", request.getParameter("eid"));
            }//else

        }//try
        catch (Exception e) {
            out.println(e);
        }
                    %>



                </tr>    </table>
                    <p>&nbsp;</p>


                    
                        <table width="318" height="166" border="1" align="center">
                            <tr>
                                <td width="138" height="40" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Exam ID</strong></div></td>
                                <td width="164" bordercolor="#666666" bgcolor="#B0CDD7">
<input type="text" name="examid" value=<%=i%> readonly  ></td>
                            </tr>
                            <tr>
                                <td height="40" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Exam Name </strong></div></td>
                                <td bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="examname"></td>
                            </tr>
                            <tr>
                                <td height="41" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Cutoff %</strong></div></td>
                                <td bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="cutoff"></td>
                            </tr>

                            <tr>
                                <td height="33" colspan="2" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center">
                                        <input type="submit" name="Submit" value="Submit" onSubmit="return check()">
                                </div>        </td>
                            </tr>
                        </table>
                    </form>
                    
            

                </td>
            </tr>
        </table>
    </body>
</html>
