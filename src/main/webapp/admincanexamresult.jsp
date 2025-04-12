
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
    <div class="p-4 p- mb-1 rounded text-bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">WELCOME ADMIN</h1>
      <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
    </div>
  </div>
  
 <main class="d-flex flex-nowrap">
         
  <div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark py-3 mt-5" style="width: 280px; height:500px;">
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
        <a href="AdminCandidateDetails.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
          Candidate Details
        </a>
      </li>
      <li>
        <a href="AdminCompanyDetails.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
          Company Details
        </a>
      </li>
      
    
    </ul>
    <hr>
    
    
    <ul class="nav nav-pills flex-column mb-auto" height="100">
      
      <li>
        <a href="admincanexamresult.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
          Candidate Result
        </a>
      </li>
      <li>
        <a href="ChangePassword.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
          Change Password
        </a>
      </li>
     
      
      <li>
        <a href="Login.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
          Log Out
        </a>
      </li>
    </ul>
    <hr>
    <div class="dropdown" height="500px">
      <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="https://github.com/mdo.png" alt="" width="32" height="16" class="rounded-circle me-2">
        <strong>mdo</strong>
      </a>
      <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
        <li><a class="dropdown-item" href="#">New project...</a></li>
        <li><a class="dropdown-item" href="#">Settings</a></li>
        <li><a class="dropdown-item" href="#">Profile</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Sign out</a></li>
      </ul>
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
        ResultSet rs;
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
							<td bgcolor="#CCCCCC"><div align="center"><strong><a href='amail.jsp'>Send Mail</a></strong></div></td>
							

							
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
