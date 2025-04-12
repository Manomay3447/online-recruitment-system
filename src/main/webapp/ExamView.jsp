
<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      
        <title>JobPortal</title>
        
        <style type="text/css">
          
            .style1 {
                font-size: 18px;
                font-weight: bold;
                color: #FF0000;
            }
            .style7 {color: #006666; font-weight: bold; }
            .style9 {color: #663366; font-weight: bold; }
            
            .f1{
            margin-top: 10%;
            }
        </style>
    </head>
    <body>
    <main class="d-flex flex-nowrap">
    
            <div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark py-3" style="width: 280px; height:100%;">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
      <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
      <span class="fs-4">NEXTJOB</span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
        <a href="index.jsp" class="nav-link active" aria-current="page">
          <svg class="bi pe-none me-2" width="16" height="36"><use xlink:href="index.jsp"></use></svg>
          Home
        </a>
      </li>
      <li>
        <a href="ComEditProfile.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
          Edit Profile
        </a>
      </li>
      <li>
        <a href="ChangePassword.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
          Edit Password
        </a>
      </li>
      
    
    </ul>
    <hr>
    
    
    <ul class="nav nav-pills flex-column mb-auto" height="100">
      <li>
          <svg class="bi pe-none me-2" width="30" height="40"><use xlink:href="#speedometer2"></use></svg>
          Job Details<br>
      </li>
      <li>
        <a href="AddJobDetails.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
          Add Profile
        </a>
      </li>
      <li>
        <a href="editvacancies.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
          Update Vacancies
        </a>
      </li>
      <li>
        <a href="ViewJobDetails.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#grid"></use></svg>
          View Profile
        </a>
      </li>
      </ul>
      <hr>
      
          <ul class="nav nav-pills flex-column mb-auto" height="100">
   <li>
          <svg class="bi pe-none me-2" width="30" height="40"><use xlink:href="#speedometer2"></use></svg>
          Exam<br>
      </li>
       <li>
        <a href="ExamCreation.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          Exam Creation
        </a>
      </li>
       <li>
        <a href="ExamView.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          Exam View
        </a>
      </li>
       <li>
        <a href="EditExam.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          Edit Exam 
        </a>
      </li>
    </ul>
    <hr>
      
       <ul class="nav nav-pills flex-column mb-auto" height="100">
   <li>
          <svg class="bi pe-none me-2" width="30" height="40"><use xlink:href="#speedometer2"></use></svg>
          Questions<br>
      </li>
       <li>
        <a href="AddQuestions.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          Add Questions
        </a>
      </li>
       <li>
        <a href="ViewQues.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          View Questions
        </a>
      </li>
      <li>
        <a href="canexamresult.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          Result
        </a>
      </li>
      <hr>
      
      <li>
        <a href="Login.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          Log Out
        </a>
      </li>
    </ul>
    <hr>
      
  </div>
   <main class="container mt-5 ">
               
  
                
                <form class="f1" name="form1" action="ExamView.jsp">
                
                        <table width="277" height="128" border="0" align="center"  >
                            <tr>
                                <td height="49" colspan="2"><div align="center" class="style1">
                                        Exam View
                                </div></td>
                            </tr>
                            <%
        //String jid = request.getParameter("jobid");

 String jid = (String) session.getAttribute("s1");
        //out.print(jid);
        try {
            if (jid == null) {
                Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:5432/recruitment","admin","admin1234");

                Statement st = con.createStatement();
                            %>
                            <tr>
                                <td width="135" height="42"><span class="style7">Select a JobID </span></td>
                                <td width="132">
                                    <label>
                                        <select name="jobid">
                                            <%      ResultSet rs = st.executeQuery("select * from JobDetails where jobId='"+jid+"'");
                            String s1 = null;

                            while (rs.next()) {
                                s1 = rs.getString("JobId");


                                            %>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%     }
                                            %>
                                        </select>
                                    </label>
                                </td>
                            </tr>
                            <tr><td> <input type="submit" value="Show Details"> </td></tr>
                        </table>
                    </form>

                    <%
                            } else {
                    //jid = request.getParameter("jobid");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:5432/recruitment","admin","admin1234");
                                Statement st = con.createStatement();

                                ResultSet rs = st.executeQuery("select * from JobDetails where JobId='" + jid + "'");
                                String s2 = null;
                                while (rs.next()) {
                                    s2 = rs.getString("Post");
                                }
                    %>
                    <table width="549" height="54" border="1" align="center" style="vertical-align:top">

                        <tr>
                            <td width="98" height="23" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Exam ID </div></td>
                            <td width="139" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Exam Name </div></td>
                            <td width="104" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Cutoff % </div></td>
                            <td width="89" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Edit</div></td>
                            <td width="85" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Delete</div></td>
                        </tr>

                        <%    Statement st2 = con.createStatement();
                                ResultSet rs2 = st2.executeQuery("select * from Exam where JobId='" + jid + "'");

                                while (rs2.next()) {
                                    String eid = rs2.getString("ExamID");
                                    String ename = rs2.getString("ExamName");
                                    String ecut = rs2.getString("Cutoff");
                        %>
                        <tr valign="top">
                            <td height="23" bordercolor="#344631" bgcolor="#F8E0E0"><%=eid%></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><%=ename%></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><%=ecut%></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><a href="EditExam.jsp?eid=<%=eid%>&jid=<%=jid%>">Edit</a></td>
                            <td bordercolor="#344631" bgcolor="#F8E0E0"><a href="DeleteExam.jsp?eid=<%=eid%>">Delete</a></td>
                        </tr>
                        <%
                }
            }
        } catch (Exception e) {
            out.println(e);
        }
                        %>
                    </table>

                </main>
            
       
        
        </main>
        
        <hr class="featurette-divider">



<div class="b-example-divider"></div>



<div class="container">
  <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
    <div class="col mb-3">
      <a href="/" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
      </a>
      <p class="text-muted">© 2022</p>
    </div>

    <div class="col mb-3">

    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
      </ul>
    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
      </ul>
    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
      </ul>
    </div>
  </footer>
</div>
<div class="b-example-divider"></div>
<div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
      <p>© 2022 Company, Inc. All rights reserved.</p>
      <ul class="list-unstyled d-flex">
        <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg></a></li>
        <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"></use></svg></a></li>
        <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"></use></svg></a></li>
      </ul>
    </div>
  </footer>
        
       
    </body>
</html> 
