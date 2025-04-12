
<%@page import="java.io.*,java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>JobPortal</title>

</head>
    <body>
        
          
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">NEXTJOB</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item dropdown outline-light">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Catagories
            </a>
            <ul class="dropdown-menu  ">
              <li><a class="dropdown-item  text-center  " href="#">Electronics</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item  text-center" href="fashion.html">Fashion</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item text-center " href="#">Contact Us</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact us</a>
          </li>
          

        </ul>
        <form class="d-flex mt-1" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-light" type="submit">Search</button>
        </form>
        <div class="mx-2">
          <a href="Login.jsp"><button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#loginModal">Login</button></a>
          <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#signupModal">Sign up</button>
        </div>
      </div>
    </div>
  </nav>
        
  
<div class="px-4 py-5 my-5 text-center mt-0">
    <img   class="bd-placeholder-img rounded-circle" width="240" height="240"src="pngegg.png">
    <h1 class="display-5 fw-bold">Profile</h1>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.</p>
      <div class="d-grid gap-2 d-flex justify-content-sm-center w-100">
        <a href="CanEditProfile.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Edit Profile</button></a>
        <a href="ChangePassword.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Change ID</button></a>
        <a href="CompanyDetails.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Company Detail</button></a>
        <a href="ExamConditions.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3"> View Exam</button></a>
        <a href="MAIL.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3"> Send Mail</button></a>
        <a href="Login.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Log Out</button></a>
      </div>
    </div>
  </div>
  
  
     
   <table class="table table-light table-borderless">
   
       
  <tr>
      <th scope="col">Company</th>
      <th scope="col">Address</th>
      <th scope="col">Post</th>
      <th scope="col">Criteria</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">University Cutoff</th>
      <th scope="col">Aptitude Cutoff</th>
      <th scope="col">LastDate</th>
      <th scope="col">Apply</th>
    </tr>
    
       <% 
		    
      try
              {
    	  
    	   String display = (String) session.getAttribute("degree");
    	   Class.forName("org.postgresql.Driver");
   		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
   				
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from Com");
            String  cname="",caddress="",cpost="",ccriteria="",cemail="",ccontact="",ccutoff="",acutoff="",lastdate="";
        while(rs.next())
            {
			            cname=rs.getString("CName");
                        caddress=rs.getString("CAddress");
                        cpost=rs.getString("CPost");
                        ccriteria=rs.getString("CCriteria");
                        cemail=rs.getString("CEmail");
                        ccontact=rs.getString("CContact");
                        ccutoff=rs.getString("CCutoff");
                        acutoff=rs.getString("ACutoff");
                        lastdate=rs.getString("lastdate");


      %>
       
    
    <tr>
      <td><%=cname%></td>
      <td> <%=caddress%></td>
      <td><%=cpost%></td>
      <td><%=ccriteria%></td>
      <td><%=cemail%></td>
      <td> <%=ccontact%></td>
      <td> <%=ccutoff%></td>
      <td> <%=acutoff%></td>
      <td> <%=lastdate%></td>
     <td><a href="ExamConditions.jsp">Appear</a></td>
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
