
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
                font-size: 24px;
                color: #003399;
                font-weight: bold;
            }
            .style6 {color: #3399FF; font-weight: bold; }
            .style7 {color: #660099}
            .style10 {color: #663300; font-weight: bold; }
            .style11 {font-weight: bold}
            .style15 {color: #CC0066; font-weight: bold; }
            
            .f1{
            margin-top: 10%;
            }
        </style>
       
    </head>
    <body>
        <main class="d-flex flex-nowrap">
  <h1 class="visually-hidden">Sidebars examples</h1>

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

                    <form  class="f1" name="form1" action="ViewQues.jsp">

                        <table  width="35%" height="97" border="0" align="center">
                            <tr>
                                <td height="28" colspan="2" bgcolor="#FFFFFF"><div align="center" class="style1">
                                        <p class="style6 style7">View Questions</p>
                                </div></td>
                            </tr>
                            <tr>
                                <%

           String jid = (String) session.getAttribute("s1");

        //String jid = request.getParameter("jobid");
        String eid = request.getParameter("examid");
        //out.print(jid);
        try {
            if (eid == null) {

                Class.forName("org.postgresql.Driver");
        		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
        			
                Statement st = con.createStatement();
                Statement st2 = con.createStatement();
                                %>
                                <tr>
                                    <td width="129" height="32"><span class="style15">Company name: </span></td>
                                    <td width="118"><label>
                                            
                                               <%      ResultSet rs2 = st2.executeQuery("select * from JobDetails where jobId='"+jid+"' ");
                                        String s2 = null;
                                        // String s2=null;
                                        while (rs2.next()) {
                                            s2 = rs2.getString("jobid");
                                            //    s2=rs.getString("Post");
}%>
                                                <!--<option value="<%=s2%>"><%=s2%></option>-->
												<input name="jobid" id="jobid" type="text" size="30" value=<%=jid%> readonly >
                                                
                                            
                                        </label>

                                </td></tr>

                                <td width="129" height="32"><span class="style15">Select an ExamID </span></td>
                                <td width="118"><label>
                                        <select name="examid">
                                            <%      ResultSet rs = st.executeQuery("select * from Exam where JobID='"+jid+"'");
                                        String s1 = null;
                                        // String s2=null;
                                        while (rs.next()) {
                                            s1 = rs.getString("examid");
                                            //    s2=rs.getString("Post");
%>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%}%>
                                        </select>
                                    </label>

                            </td>

                            <tr>
                                <td><div align="center">
                                        <input type="submit" value="Show Details">
                                </div></td>
                            </tr>
                        </table>
                    </form>

                    <p>
                        <%
                                    } else {
                        %>
                    </p>
                    <table width="99%" height="54" border="1" align="left">

                        <tr>
                            <td width="149" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center"><span class="style10">Question No: </span></div></td>
                            <td width="149" height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center" class="style10"><span class="style11">Question</span></div></td>
                            <td width="74" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center" class="style10"><span class="style11">Option 1</span></div></td>
                            <td width="85" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center" class="style10"><span class="style11">Option 2</span></div></td>
                            <td width="75" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center" class="style10"><span class="style11">Option 3</span></div></td>
                            <td width="78" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center" class="style10"><span class="style11">Option 4</span></div></td>
                            <td width="80" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center" class="style10"><span class="style11">Answer</span></div></td>
                            <td width="77" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center" class="style10"><span class="style11">Delete</span></div></td>
                        </tr>
                        <%

                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment","root","root");
                                        Statement st3 = con.createStatement();
                                        // Statement st2=con.createStatement();

                                        ResultSet rs3 = st3.executeQuery("select QuestionNo,Question,Option1,Option2,Option3,Option4,Answer from Question where ExamID='" +
                                                eid + "' and JobID='" + jid + "'");
                                        //  String s2=null;
                                        while (rs3.next()) {
                                            String qno = rs3.getString("QuestionNo");
                                            String ques = rs3.getString("Question");
                                            String op1 = rs3.getString("Option1");
                                            String op2 = rs3.getString("Option2");
                                            String op3 = rs3.getString("Option3");
                                            String op4 = rs3.getString("Option4");
                                            String ans = rs3.getString("Answer");



                        %>
                        <tr>
                            <td bordercolor="#666699" bgcolor="#F1F0E2"><%=qno%></td>
                            <td height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center">
                                    <%=ques%>
                            </div></td>
                            <td height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center">
                                    <%=op1%>
                            </div></td>
                            <td height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center">
                                    <%=op2%>
                            </div></td>
                            <td height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center">
                                    <%=op3%>
                            </div></td>
                            <td height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center">
                                    <%=op4%>
                            </div></td>
                            <td height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center">
                                    <%=ans%>
                            </div></td>
                            <td height="23" bordercolor="#666699" bgcolor="#F1F0E2"><div align="center"><a href="DeleteQues.jsp?qno=<%=qno%>&jid=<%=jid%>&eid=<%=eid%>" >Delete</a></div></td>
                        </tr>

                        <%
                }
                con.close();
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
