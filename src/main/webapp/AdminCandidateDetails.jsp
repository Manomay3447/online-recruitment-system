
<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      
<title>JobPortal</title>

<!--
       <style type="text/css">

.body {
        margin:0%;
}
a:link {
	color: #0066CC;
	text-decoration: underline;
}
a:visited {
	text-decoration: underline;
	color: #663399;
}
a:hover {
	text-decoration: none;
	color: #996666;
}
a:active {
	text-decoration: underline;
	color: #FF9999;
}
.style5 {
	color: #006633;
	font-weight: bold;
	font-size: 18px;
}
.style7 {color: #CC0000}
.style8 {color: #000099}
.style11 {color: #CC0000; font-weight: bold; }
.style12 {
	color: #663399;
	font-weight: bold;
}

       </style>
       -->
</head>

<body>
<div class="p-4 p- mb-1 rounded text-bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">WELCOME ADMIN</h1>
      <p class="lead my-3"></p>
      
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
      
      <!--  <li>
        <a href="admincanexamresult.jsp" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
          Candidate Result
        </a>
      </li>-->
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
       <tr>
            <td height="31" colspan="16" bordercolor="#663300" bgcolor="#FFCCFF" ><div align="center" class="style8 style63 style5">Candidate Details </div></td>
          </tr>
          <tr>
            <td width="89" height="33" bordercolor="#663300" bgcolor="#FF99CC" ><div align="center"><span class="style11">Username</span></div></td>
            <td width="112" bordercolor="#663300" bgcolor="#FF99CC"><div align="center" class="style64 style7"><strong> Name</strong></div></td>
            <td width="104" bordercolor="#663300" bgcolor="#FF99CC" ><div align="center" class="style64 style7"><strong>Address</strong></div></td>
            <td width="106" bordercolor="#663300" bgcolor="#FF99CC" ><div align="center" class="style64 style7"><strong>Phone</strong></div></td>
            <td width="124" bordercolor="#663300" bgcolor="#FF99CC" ><div align="center" class="style64 style7"><strong>Email_id</strong></div></td>
            <td width="109" bordercolor="#663300" bgcolor="#FF99CC" ><div align="center" class="style64 style7"><strong>Category</strong></div></td>
            <td width="86" bordercolor="#663300" bgcolor="#FF99CC" ><div align="center" class="style64 style7"><strong>Delete</strong></div></td>
            <td width="71" bordercolor="#663300" bgcolor="#FF99CC" ><div align="center" class="style64 style7"><strong>Resume</strong></div></td>
        </tr>
        <%
        Class.forName("org.postgresql.Driver");
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");

      try
              {
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select Username,Name,Address,Telephone,Email_id,Category from Details");
	  String  uid="",name="",address="",phone="",email="",cat="";
        while(rs.next())
            {
			uid=rs.getString("Username");
			name=rs.getString("Name");
			address=rs.getString("Address");
			phone=rs.getString("Telephone");
			email=rs.getString("Email_id");
			cat=rs.getString("Category");




      %>
        <tr>
          <td height="35" bordercolor="#663300" bgcolor="#99BBB7" ><div align="center"><%=uid%></div></td>
          <td bordercolor="#663300" bgcolor="#99BBB7" ><div align="center"><%=name%></div></td>
          <td bordercolor="#663300" bgcolor="#99BBB7" ><div align="center"><%=address%></div></td>
          <td bordercolor="#663300" bgcolor="#99BBB7" ><div align="center"><%=phone%></div></td>
          <td bordercolor="#663300" bgcolor="#99BBB7" ><div align="center"><%=email%></div></td>
          <td bordercolor="#663300" bgcolor="#99BBB7"><div align="center"><%=cat%></div></td>
          <td bordercolor="#663300" bgcolor="#99BBB7"><div align="center"><a href="CanDelete.jsp?uid=<%=uid%>" class="style12">Delete</a></div></td>
		  <td bordercolor="#663300" bgcolor="#99BBB7"><div align="center"><a href="Resume.jsp?uid=<%=uid%>"><strong>View</strong></a></div></td>
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
