
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
     
        <title>JobPortal</title>
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


<main class="container mt-0">
  <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">UNLEASH YOUR TALENT POTENTIAL WITH NEXTJOB</h1>
      <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
    </div>
  </div>


  <main class="container">
  <div class="p-4 p-md-5 rounded text-bg-dark w-100 mt-5 ms-3 me-3">
    <table class="table table-dark table-borderbottom">
  
                    <%
        String uname = (String) session.getAttribute("s1");
        String sql = "";
        Connection con;
        Statement st;
        ResultSet rs = null;
        // out.println(uname);
        try {
            sql = "select * from Result";

            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
            st = con.createStatement();
            rs = st.executeQuery(sql);
                    %>

                    
                        <tr bgcolor="#CCCCCC">
						    <td bgcolor="#CCCCCC"><div align="center"><strong>Name</strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong>Exam ID</strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong>Job ID</strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong>Mark</strong></div></td>
							<td bgcolor="#CCCCCC"><div align="center"><strong>Send mail</strong></div></td>
							<td bgcolor="#CCCCCC"><div align="center"><strong>Delete</strong></div></td>

							
                        </tr>
                        <%
                        //while (rs.next()) {
                            //out.println("<tr>");
							//out.println("<td>" + rs.getString(1) + "</td>");
                            //out.println("<td>" + rs.getString(2) + "</td>");
                            //out.println("<td>" + rs.getString(3) + "</td>");
                           // out.println("<td>" + rs.getString(4) + "</td>");
                            //out.println("<a href='MAIL.html'>Send Mail</a>");
						
                           // out.println("</tr>");
							
                                while (rs.next()) {
                                    String unm = rs.getString("studentID");
                                    String eeid = rs.getString("examID");
                                    String jjid = rs.getString("jobID");
									String mrk = rs.getString("mark");
									
                        %>
						<tr bgcolor="#CCCCCC">
						    <td bgcolor="#CCCCCC"><div align="center"><strong><%=unm%></strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong><%=eeid%></strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong><%=jjid%></strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong><%=mrk%></strong></div></td>
							<td bgcolor="#CCCCCC"><div align="center"><strong><a href='cmail.jsp'>Send Mail</a></strong></div></td>
							<td bgcolor="#CCCCCC"><div align="center""><strong><a href='Deletecan.jsp?unm=<%=unm%>'>Delete</a></strong></div></td>

							
                        </tr>
                   
                    <%
}
        } catch (Exception ex) {
            out.println(ex.toString());
        }
                    %>
                      </table>
      
    </div>
  
    
</main>
</main>
  
    </body>
</html>
