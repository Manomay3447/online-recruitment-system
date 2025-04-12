
<%@page import="java.sql.*" session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      
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
    <body>   
    
                       
                       
<main class="d-flex flex-nowrap">
  <h1 class="visually-hidden">Sidebars examples</h1>

  <div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark py-3" style="width: 280px; height:500px;">
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

    
      
                        
     <main class="container mt-5">

 <div class="p-4 p-md-5 mb-4 rounded text-bg-light">

				<form name="form1" method="post" action="saveupdatevacancies.jsp" >
                    <table width="277" height="144" border="1" align="center">
					<h1 align="center"><font face="Lucida Calligraphy">Update Vacancies</font></h1>
					 <% try {

                String jid =request.getParameter("jid");
                String eid =request.getParameter("eid");
              
                Class.forName("org.postgresql.Driver");
          		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");

                Statement st = con.createStatement();  
                ResultSet rs = st.executeQuery("select * from JobDetails where Post='" + eid + "'");
                while (rs.next())
                    {  
                      
                      String jpost=rs.getString("Post");
                      String jcriteria=rs.getString("Criteria");
                      String jvac=rs.getString("NoOfVacancies");
                      String jsal=rs.getString("Salary");
                      String jdate=rs.getString("LastDate");
      
                    %>
					    <tr>
                                <td height="40" bordercolor="#666666" bgcolor="#FEF7E9"><div align="center" class="style4 style20"><strong>Post:</strong></div></td>
                                <td bordercolor="#666666" bgcolor="#FEF7E9"><input type="text" name="vacancies1" value=<%=eid%> readonly></td>
                            </tr>
                        <tr>
                       
                                <td width="138" height="40" bordercolor="#666666" bgcolor="#FFFFFF"><div align="center" class="style4 style20"><strong>Criteria</strong></div></td>
                                <td width="164" bordercolor="#666666" bgcolor="#FFFFFF">
                                  <input type="text" name="crit" value=<%=jcriteria%>></td>
                            </tr>
                            <tr>
                                <td height="40" bordercolor="#666666" bgcolor="#FEF7E9"><div align="center" class="style4 style20"><strong>Vancancies:</strong></div></td>
                                <td bordercolor="#666666" bgcolor="#FEF7E9"><input type="text" name="vacancies" value=<%=jvac%>></td>
                            </tr>
                            <tr>
                                <td height="41" bordercolor="#666666" bgcolor="#FFFFFF"><div align="center" class="style4 style20"><strong>Salary :</strong></div></td>
                                <td bordercolor="#666666" bgcolor="#FFFFFF"><input type="text" name="sal"  value=<%=jsal%>></td>
                            </tr>
							 <tr>
                                <td height="41" bordercolor="#666666" bgcolor="#FEF7E9"><div align="center" class="style4 style20"><strong> Last date :</strong></div></td>
                                <td bordercolor="#666666" bgcolor="#FEF7E9"><input type="text" name="lstdate"  value=<%=jdate%>></td>
                            </tr>

                            <tr>
                                <td height="33" colspan="2" bordercolor="#666666" bgcolor="#FFFFFF"><div align="center">
                                        <input  class="btn btn-outline-dark" type="submit" name="Submit" value="Update" onSubmit="return check()">
                                </div>        </td>
                            </tr>
                        </table>
                    </form>
                    </div>
                    </main>
                    </main>
                    
                    
                    
				<% 	
				}//while
				
     
}
      catch(Exception e)
      {
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





      </style>  
                
                
       
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
