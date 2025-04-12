
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        
        <title>JobPortal</title>
        <!--
        <style type="text/css">
            
            .style1 {
                font-size: 24px;
                font-weight: bold;
                color: #993300;
            }
            .style2 {
                color: #000000;
                font-weight: bold;
            }
           
        </style>
         -->
        <script language="javascript">
            function check()
            {
				var a= document.form1.jobid.value;
				var b= document.form1.vacancies.value;
				var c= document.form1.salary.value;
				
                if(document.form1.jobid.value=="")
                {
                    alert("Enter Job Id");
                    document.form1.jobid.focus();
                    return false;
                }
				
                if(document.form1.post.value=="")
                {
                    alert("Enter Post");
                    document.form1.post.focus();
                    return false;
                }
                if(document.form1.criteria.value=="")
                {
                    alert("Enter Criteria");
                    document.form1.criteria.focus();
                    return false;
                }
                if(document.form1.vacancies.value=="")
                {
                    alert("Enter no: of Vacancies available");
                    document.form1.vacancies.focus();
                    return false;
                }
				else if(!parseInt(b))
            	{
                alert("Enter integer");
                document.form1.vacancies.focus();
                return false;
            	}
                if(document.form1.salary.value=="")
                {
                    alert("Enter Salary");
                    document.form1.salary.focus();
                    return false;
                }
				else if(!parseInt(c))
            	{
                alert("Enter integer");
                document.form1.salary.focus();
                return false;
            	}
                if(document.form1.lastdate.value=="")
                {
                    alert("Enter Last Date");
                    document.form1.lastdate.focus();
                    return false;
                }

                return true;
            }

        </script>
    </head>
    <body>


<%
      

            String c1 = (String) session.getAttribute("s1");

%>
        
           
                      
                       
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

                       




                <main class="container mt-5">
               
                    <form class="f1" name="form1" method="post" action="savejobdetails.jsp" >
                        <table class="t1" width="517" height="334" border="1" align="center" bgcolor="#FEF7E9">
                        <tbody class="tb">
                            <tr>
                                <td height="10" colspan="2" bgcolor="#FEF7E9"><div align="center" class="style1">Job Description </div></td>
                            </tr>
                            <tr bgcolor="" width=100% height="10%">
                                <td width="33%" bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial >Name</font></div></td>
                                <td width="67%"  bgcolor="#FFFFFF">
                                        <input name="jobid" id="jobid" type="text" size="30" value=<%=c1%> readonly >
                                </td>
                            </tr>
                            <tr width=100% height="10%">
                                 <td width="33%" bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial >Name of Post</font></div></td>
                                <td width="67%"  bgcolor="#FEF7E9">
                                <input name="post" name="post" type="text" size="30"></td>
                            </tr>
                            <tr width=100% height="10%">
                                 <td width="33%" bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial >Criteria</font></div></td>
                                <td width="67%"  bgcolor="#FFFFFF">
                                <input name="criteria" name="criteria" type="text" size="30"></td>
                            </tr>
                            <tr width=100% height="10%">
                                 <td width="33%" bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial >No:of Vacancies </font></div></td>
                                <td width="67%"  bgcolor="#FEF7E9">
                                <input name="vacancies" name="vacancies" type="text" size="30"></td>
                            </tr>
                            <tr width=100% height="10%">
                                 <td width="33%" bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial >Salary/Annum</font></div></td>
                                <td width="67%"  bgcolor="#FFFFFF">
                                <input name="salary" name="salary" type="text" size="30"></td>
                            </tr>
                            <tr width=100% height="10%">
                                 <td width="33%" bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial >Last Date</font></div></td>
                                <td width="67%"  bgcolor="#FEF7E9"><input name="lastdate" name="lastdate" type="text" size="30"></td>
                            </tr>
                            <tr bordercolor="#FFFFFF">
                                <td height="28" colspan="2" bgcolor="#FFFFFF">
                                    <div align="center">
                                        <input  class="btn btn-outline-dark" type="submit" name="Submit" value="Submit" onClick="return check()">
                                </div>           </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                    
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
        
     
      <style>
      
      .tb{
        border: transparent;
      }
      
      .t1{
      border-radius:30px solid black;;
      
      }
       input[type="text"]{
    
    color: black;
    border: none;
   border-bottom: 1px solid black;
   background: transparent;
   outline: none;
}

select{
    
    color: black;
    border: none;
   border-bottom: 1px solid black;
   background: transparent;
   outline: none;
}

input[type="password"]{
    
    color: black;
    border: none;
   border-bottom: 1px solid black;
   background: transparent;
   outline: none;
}

.USS_TEXT{
    color: black;
    border: none;
   border-bottom: 1px solid black;
   background: transparent;
   outline: none;
}


input[type="reset"]{
    
    
   
   border-radius: 20px solid black;
   background: transparent;
   
}

.f1{
margin-top: 10%;
}




      </style>  
                
            

    </body>
</html>
