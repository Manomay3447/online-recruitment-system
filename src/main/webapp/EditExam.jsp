
<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<%
 String jid = (String) session.getAttribute("s1");

        //String jid = request.getParameter("jid");
        String eid = request.getParameter("eid");
        String msg = "";
        if (request.getParameter("update") != null) {
            String examid = request.getParameter("examid");
            String jobid = request.getParameter("jobid");
            String postname = request.getParameter("postname");
            String examname = request.getParameter("exname");
            String cutoff = request.getParameter("cutoff");
            String sql = "Update Exam Set Post='" + postname + "', ExamName='" + examname + "', Cutoff='" +
                    cutoff + "' where JobID='" + jobid + "' and ExamID='" + examid + "'";

            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			

            Statement st = con.createStatement();
            int x = st.executeUpdate(sql);

            if (x > 0) {
                msg = "success";
                response.sendRedirect("ExamView.jsp?jobid=" + jobid);

            } else {
                msg = "Updation failed";
            }
        }
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
       
        <title>JobPortal</title>
        <script language="javascript">
            function check()
		{
			var a= document.frm.exname.value;
			var b= document.frm.cutoff.value;
			if(document.frm.postname.value=="")
            {
                alert("Enter Post Name");
                document.frm.postname.focus();
                return false;
            }
            
			if(document.frm.exname.value=="")
            {
                alert("Enter Exam Name");
                document.frm.exname.focus();
                return false;
            }
			
			if(document.frm.cutoff.value=="")
            {
                alert("Enter Cutoff mark");
                document.frm.cutoff.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Enter Integer");
                document.frm.cutoff.focus();
                return false;
            }
			else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter cutoff in %");
                document.frm.cutoff.focus();
                return false;
            }

			return true;
		}
		</script>
       
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
  <div class="p-4 p-md-5 mb-4 rounded text-bg-light" style="height:100%;">
    
  
            
                    <%


        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment","root","");
        Statement st = con.createStatement();
        Statement st3 = con.createStatement();
        ResultSet rs = st.executeQuery("select * from Exam where JobID='" + jid + "' and ExamID='" + eid + "'");
        String post = "", exname = "", cutoff = "";
        if (rs.next()) {
            post = rs.getString("Post");
            exname = rs.getString("ExamName");
            cutoff = rs.getString("Cutoff");
        }
                    %>
                    <form name="frm" action="EditExam.jsp" method="post" onsubmit="return check()">
                        <table width="549" height="500" align="center"style="margin-top: 7%;">
                            <tr>
                                <td colspan="2" bgcolor="#FEF7E9"><div align="center"><strong>Edit Exam Details</strong></div></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFFF">Post</td>
                                <td bgcolor="#FFFFFF"><input type="text" name="postname" id="postname" value="<%=post%>"></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9">Exam Name</td>
                                <td bgcolor="#FEF7E9"><input type="text" name="exname" id="exname" value="<%=exname%>"></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFFF">Cutoff</td>
                                <td bgcolor="#FFFFFF"><input type="text" name="cutoff" id="cutoff" value="<%=cutoff%>"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" bgcolor="#FEF7E9">
                                    <input name="jobid" type="hidden" id="jobid" value="<%=jid%>">
                                    <input name="examid" type="hidden" id="examid" value="<%=eid%>">
                                <input type="submit"  name="update" id="update" value="Update" ></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><%=msg%></td>
                            </tr>
                        </table>
                    </form>
                     </div>
                     </main>

 
</main>
                     
 
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
 
                <p>&nbsp;</p>
              </body>
</html> 
