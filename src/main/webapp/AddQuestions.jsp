
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
                    <!--
        
        <style type="text/css">
            .style1 {
                font-size: 18px;
                font-weight: bold;
                color: #666633;
            }
            .style4 {color: #421456; font-weight: bold; }
            
        </style>
        -->
        <script language="javascript">
            function check()
            {
                var a= document.form1.Qno.value;
                if(document.form1.Qno.value=="")
                    {
                        alert("Enter Question No:");
                        document.form1.Qno.focus();
                        return false;
                    }
                    else if(!parseInt(a))
                        {
                            alert("Enter Integer");
                            document.form1.Qno.focus();
                            return false;
                        }
                        if(document.form1.question.value=="")
                            {
                                alert("Enter Question");
                                document.form1.question.focus();
                                return false;
                            }
                            
                            if(document.form1.option1.value=="")
                                {
                                    alert("Enter First Option");
                                    document.form1.option1.focus();
                                    return false;
                                }
                                if(document.form1.option1.value=="")
                                    {
                                        alert("Enter First Option");
                                        document.form1.option1.focus();
                                        return false;
                                    }
                                    if(document.form1.option2.value=="")
                                        {
                                            alert("Enter Second Option");
                                            document.form1.option2.focus();
                                            return false;
                                        }
                                        if(document.form1.option3.value=="")
                                            {
                                                alert("Enter Third Option");
                                                document.form1.option3.focus();
                                                return false;
                                            }
                                            if(document.form1.option4.value=="")
                                                {
                                                    alert("Enter Fourth Option");
                                                    document.form1.option4.focus();
                                                    return false;
                                                }
                                                if(document.form1.answer.value=="")
                                                    {
                                                        alert("Enter Correct Answer");
                                                        document.form1.answer.focus();
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
  
  
                      <main class="container mt-5 ">
               
                    <form name="form1" class="form1" method="post" action="savequestions.jsp" onSubmit="return check()">
                        <table width="398" height="383" border="1" align="center" bordercolor="#663333">
                            <tr>
                                <td colspan="2" bordercolor="#996633" bgcolor="#FEF7E9"><div align="center" class="style1">Add Questions </div></td>
                            </tr>
                 
           <%  

            String c1 = (String) session.getAttribute("s1");
            try {
            	Class.forName("org.postgresql.Driver");
        		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
                Statement st = con.createStatement();
                Statement st1 = con.createStatement();






                            %>
                            <tr>
                                <td height="37" bordercolor="#996633" bgcolor="#FFFFFF"><span class="style4">Job ID </span></td>
                                <td bordercolor="#996633" bgcolor="#FFFFFF"><label>
                                        <select name="jobid" id="jobid">
                                            <%      ResultSet rs1 = st1.executeQuery("select distinct(jobId) from JobDetails where jobID='"+c1+"'");
                                          String s = null;
                                          // String s2=null;
                                          while (rs1.next()) {
                                    s = rs1.getString("jobid");
                      //    s2=rs.getString("Post");

                                            %>
                                            <option value="<%=s%>"><%=s%></option>
                                            <%}%>  
                                        </select>
                                </label></td>
                            </tr>
                            <tr>
                                <td width="127" height="37" bordercolor="#996633" bgcolor="#FEF7E9"><span class="style4">Exam ID</span></td>
                                <td width="255" bordercolor="#996633" bgcolor="#FEF7E9">
                                    <label>
                                        <select name="examid">
                          <%      ResultSet rs = st.executeQuery("select * from Exam where jobID='"+c1+"'");
                                          String s1 = null;
                                          // String s2=null;
                                          while (rs.next()) {
                               s1 = rs.getString("examid");
                                              //    s2=rs.getString("Post");

                                            %>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%}






 %>
                                        </select>
                                </label>         </td>
                            </tr>
                            <tr>
                                <td height="40" bordercolor="#996633" bgcolor="#FFFFFF"><span class="style4">Question No:</span></td>
                                <td bordercolor="#996633" bgcolor="#FFFFFF">
                                <input name="Qno" type="text" size="10">       </td>
                            </tr>
                            <tr>
                                <td height="47" bordercolor="#996633" bgcolor="#FEF7E9"><span class="style4">Question</span></td>
                                <td bordercolor="#996633" bgcolor="#FEF7E9">
                                    <label>
                                        <textarea name="question" cols="28"></textarea>
                                </label>               </td>
                            </tr>
                            <tr>
                                <td height="37" bordercolor="#996633" bgcolor="#FFFFFF"><span class="style4">Option1</span></td>
                                <td bordercolor="#996633" bgcolor="#FFFFFF">
                                    <label></label>
                                <input name="option1" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="37" bordercolor="#996633" bgcolor="#FEF7E9"><span class="style4">Option2</span></td>
                                <td bordercolor="#996633" bgcolor="#FEF7E9"><input name="option2" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="38" bordercolor="#996633" bgcolor="#FFFFFF"><span class="style4">Option3</span></td>
                                <td bordercolor="#996633" bgcolor="#FFFFFF"><input name="option3" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="35" bordercolor="#996633" bgcolor="#FEF7E9"><span class="style4">Option4</span></td>
                                <td bordercolor="#996633" bgcolor="#FEF7E9"><input name="option4" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="36" bordercolor="#996633" bgcolor="#FFFFFF"><span class="style4">Answer</span></td>
                                <td bordercolor="#996633" bgcolor="#FFFFFF"><input name="answer" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td colspan="2" bordercolor="#996633" bgcolor="#FEF7E9"><div align="center">
                                        <input type="submit" name="Submit" value="Add Question">
                                </div></td>
                            </tr>
                        </table>
                    </form> 
                    
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
        
       
                    <%
            } catch (Exception e) {
                out.println(e);
            }
                    
                %>
           
          
          
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

.form1
{
margin-top: 10%;
}




      </style>  
     
    </body>
</html>




