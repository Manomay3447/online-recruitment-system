
<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        
        <title>JobPortal</title>
        <style type="text/css">
            
            .style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: x-large;
	color: #B0D0D7;
            }
            .style2 {
                font-family: Geneva, Arial, Helvetica, sans-serif;
                font-weight: bold;
            }
body {
	background-color: white;
}
.style4 {color: light; 
}
.style10 {color: #000000; font-weight: bold; 
}

.table{
align-content: center;
justify-content: center;
align-items: center;
}
.style1{
color: red;
}
            
        </style>
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
    
    
    
        <%

        Class.forName("org.postgresql.Driver");
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
			
        try {
            String uid = request.getParameter("uid");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select Name,Gender,DateOfBirth,CollegeName,CollegePhone,CollegeEmail,Mark,Degree,Email_id,Telephone,Address,State,Pincode,Category from Details where Username='" + uid + "'");
            String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8 = "", s9 = "", s10 = "", s11 = "", s12 = "", s13 = "", s14 = "";
            while (rs.next()) {
                s1 = rs.getString("Name");
                s2 = rs.getString("Gender");
                s3 = rs.getString("DateOfBirth");
                s4 = rs.getString("CollegeName");
                s5 = rs.getString("CollegePhone");
                s6 = rs.getString("CollegeEmail");
                s7 = rs.getString("Degree");
                s8 = rs.getString("Mark");
                s9 = rs.getString("Email_id");
                s10 = rs.getString("Telephone");
                s11 = rs.getString("Address");
                s12 = rs.getString("State");
                s13 = rs.getString("Pincode");
                s14 = rs.getString("Category");


        %>
        <table class="table table-light table-borderbottom">
            <tr>
                <td colspan="4"><div align="center" class="style1">Resume</div></td>
          </tr>
            <tr>
              <td width="228">&nbsp;</td>
                <td width="201" height="37"><div align="center" class="style4"><span class="style2">Name
                  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;
              :</span></div></td>
              <td width="86">&nbsp;</td>
              <td width="419"><span class="style10">
              <label>
              </span>
                <div align="left" class="style10"><%=s1%></div>
                  <span class="style10">
                  </label>              
                  </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="38"><div align="center" class="style4"><span class="style2">Gender
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;:</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s2%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="36"><div align="center" class="style4"><span class="style2">Date of Birth
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s3%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="36"><div align="center" class="style4"><span class="style2">College Name
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;: </span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s4%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="38"><div align="center" class="style4"><span class="style2">College Phone
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;: </span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s5%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="42"><div align="center" class="style4"><span class="style2">College Email
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;: </span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s6%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="40"><div align="center" class="style4"><span class="style2">Degree
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;:</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s7%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="38"><div align="center" class="style4"><span class="style2">Mark
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s8%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="37"><div align="center" class="style4"><span class="style2">Email
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong> : </strong></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s9%></div>
                    <span class="style10">
                    </label>               
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="45"><div align="center" class="style4"><span class="style2">Telephone
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; : </span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s10%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="39"><div align="center" class="style4"><span class="style2">Address
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><strong> :</strong></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s11%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="37"><div align="center" class="style4"><span class="style2">State
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              :</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s12%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="44"><div align="center" class="style4"><span class="style2">Pincode
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              :</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s13%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="41"><div align="center" class="style4"><span class="style2">Category
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              :</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><%=s14%></div>
                  <span class="style10">
                  </label>
                </span></td>
            </tr>
            </table>
		<tr>
              <td>&nbsp;</td>
                <td height="41"><div align="center" class="style4"><span class="style2">
			       <label for="file-input">File upload</label>
                   <input type="file" name="file-input" id="file-input"></td>
				   </tr>

			
            <%
            }//while
        }//try
        catch (Exception e) {
            out.println(e);
        }
            %>
            
            
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




