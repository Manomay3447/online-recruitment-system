
<%@page import="java.sql.*" session="true" pageEncoding="UTF-8"%>
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
            .style7 {color: #CC3333; font-weight: bold; }
            .style14 {color: #006699}
            .style19 {color: #003366; font-weight: bold; }
            .style20 {color: #663366}
            
            .f1{
            margin-top: 10%;
            }
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

           
           
            <tr>
                
                <td width="961" bgcolor="#B0CDD7" valign="top">
                    <table width="477" height="144" border="0" align="center">
<tr>
                                <td height="10" width="67%" colspan="2" bgcolor="#FEF7E9"><div align="center" class="style1">Update Vacancies </div></td>
                            </tr>
                        <tr>
                        <%
       String jid = (String) session.getAttribute("s1");
int i=1;
        try {
            if (jid != null) {
            	Class.forName("org.postgresql.Driver");
        		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");


                Statement st = con.createStatement();
                        %>
                        <form class="f1" name="form2" action="editvacancies.jsp">
                        <tr width=100% height="10%">
                           <td height="10" colspan="2" bgcolor="#FEF7E9"><div align="center" class="style1"><br>Select Job Id<br> </div></td>
                                <label>
                                    <select name="jobid" align="center">
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
                            </tr>
                            <tr><td> <div align="center">
                                        <input class="btn btn-outline-dark" type="submit" value="Show Details">
                            </div></td></tr>
                        </form>


<tr></tr>

<tr>
                           <td height="10" colspan="2" bgcolor="#FEF7E9"><div align="center" class="style1"><br>Post Name</div></td>
                            
                   <td> <td>
                        <%
                          }
 if (jid != null) {
                              jid = request.getParameter("jobid");
                              Class.forName("org.postgresql.Driver");
                      		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","postgres","sakshi");

                  Statement st = con.createStatement();
   Statement stmt2 = null;
ResultSet rs1=null;
stmt2=con.createStatement();
    					
 rs1=stmt2.executeQuery("select ExamID from exam");
    				i=0;	
    					
    					while(rs1.next())
    					{
    i=Integer.parseInt(rs1.getString("ExamID"));
    					}
    					i++;

         


%>

<form name="form1" method="post" action="editnextvacancies.jsp" >
   

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
   
  
  <br><br>
   
  
  <input  class="btn btn-outline-dark" align="center" type="submit" name="Submit" value="Next">
 
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


                    
                        <!--<table width="318" height="166" border="1" align="center">
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
                        </table>-->
                    </form>
                    
            

                </td>
            </tr>
        </table>
        
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
        
    </body>
</html>
