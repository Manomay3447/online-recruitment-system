<%-- 
    Document   : AdminCompanyDetails
    Created on : Nov 15, 2008, 12:50:40 PM
    Author     : user
--%>
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

.style1 {color: #3300CC}
.style4 {color: #003300}

        </style>
        -->
</head>
    <body>
    <div class="p-4 p- mb-1 rounded text-bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">WELCOME ADMIN</h1>
      <p class="lead my-3"></p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
    </div>
  </div>
    
    <main class="d-flex flex-nowrap">
         
  <div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark py-3 mt-5" style="width: 220px; height:500px;">
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
  <div class="p-4 p-md-5 rounded text-bg-dark w-70 mt-5 ms-3 me-3">
    <table class="table table-dark table-borderbottom">
      <tr>
        <td height="23" colspan="9" bordercolor="#CC9999" ><div align="center" class="style63 style8 style1"><strong>Company Details </strong></div></td>
      </tr>
      <tr>
        <td width="90" height="23" bordercolor="#CC9999"><div align="center" class="style64 style7 style4"><strong>Company Name</strong></div></td>
        <td width="103" height="23" bordercolor="#CC9999"><div align="center" class="style64 style7 style4"><strong>Address</strong></div></td>
        <td width="117" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Post</strong></div></td>
        <td width="98" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Username</strong></div></td>
        <td width="89" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Phone</strong></div></td>
        <td width="109" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Email ID</strong></div></td>
        <td width="120" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Educational Cutof</strong></div></td>
		<td width="120" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Aptitude Cutoff</strong></div></td>
		<td width="69" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Lastdate </strong></div></td>
        <td width="66" bordercolor="#CC9999" ><div align="center" class="style7 style64 style4"><strong>Delete</strong></div></td>
      </tr>
      <%
      Class.forName("org.postgresql.Driver");
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
	
      try
              {
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select CName,CAddress,CPost,CUsername,CContact,CEmail,CCutoff,ACutoff,lastdate from Com");
      String cname;
      String name="",add="",post="",uname="",phone="",email="",cutoff="",apcutoff="",lstdate="";

        while(rs.next())
            {
            name=rs.getString("CName");
            add=rs.getString("CAddress");
            post=rs.getString("CPost");
            uname=rs.getString("CUsername");
            phone=rs.getString("CContact");
            email=rs.getString("CEmail");
            cutoff=rs.getString("CCutoff");
			apcutoff=rs.getString("ACutoff");
			lstdate=rs.getString("lastdate");
      %>
      <tr>
        <td height="22" bordercolor="#CC9999" ><div align="center"><span class="style6">
          <%=name%>
        </span></div></td>
        <td bordercolor="#CC9999" ><div align="center"><span class="style6">
          <%=add%>
        </span></div></td>
        <td bordercolor="#CC9999" ><div align="center"><span class="style6">
          <%=post%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=uname%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=phone%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=email%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=cutoff%>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=apcutoff%>
        </span></div></td>
		<td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=lstdate%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <% out.println("<a href='ComDelete.jsp?id="+uname+"'>Delete</a>");%>
        </span></div></td>
      </tr>
      <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
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

