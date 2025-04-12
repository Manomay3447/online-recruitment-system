<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<style type="text/css">


body {
	background-color: white;
	
}

.style4{
margin-left:40%;
}

.style2{
margin-right:40%
}

.style18{
border-radius: 20px;
height: 30px;
}
.style19{
border-radius: 20px;
height: 30px;
align-content: center;
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
  
  <div class="p-4 p-md-5 mb-4 rounded text-bg-light">

<p><font face="Lucida Calligraphy" color="#CC0000" size="6">
  <%
        String mark = (String)session.getAttribute("mark");
        String uname = (String)session.getAttribute("s1");
        //out.println("Your ID  is: " + uname + "You got  "+ mark + " Mark Out of 100");
		 
%>
<marquee> Your Exam has been completed....</marquee>
<br>
<br>
<marquee> ***Candidates are requested to send mail to the company only if they are ELEGIBLE!!...</marquee>
  <br>
  </font></p>
<p>&nbsp;</p>
  <table width="952" height="300" border="0" align="center">
           <tr>
               <td colspan="4" width="201" height="0"><div align="center" class="style3"><span><font face="Lucida Calligraphy" color="#CC0000" size="6"><u>Result</u></font></span></div></td>
          </tr>
            <tr>
              <td width="228">&nbsp;</td>
                <td width="201" height="0"><div align="center" class="style4"><span class="style2"><font face="Lucida Calligraphy" color="#CC0000" size="5">Name :</font>
                  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <font face="Lucida Calligraphy" color="#CC0000" size="5"> </font></span></div></td>
              <td width="86">&nbsp;</td>
              <td width="419"><span class="style10">
              <label>
              </span>
                <div align="left" class="style10"><font face="Lucida Calligraphy" color="#CC0000" size="5"><%=uname%></font></div>
                  <span class="style10">
                  </label>              
                  </span></td>
            </tr>
			 <tr>
              <td>&nbsp;</td>
                <td height="0"><div align="left" class="style4"><span class="style2"><font face="Lucida Calligraphy" color="#CC0000" size="5">Marks :
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</font></span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="left" class="style10"><font face="Lucida Calligraphy" color="#CC0000" size="5"><%=mark%>/100</div></font>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
		    <tr>
			            <td>&nbsp;</td>
                        <td width="38" height="37"><div align="left" class="style4"><span class="style2">
						<form name="form2" method="post" action="MAIL.jsp">
                          <label>
                            <div align="left">
                              <input name="Submit" type="submit" class="style18" value="Send Mail">
                              </div>
                          </label>
                        </form>
                        </td>
						<td>&nbsp;</td>
						
						 <td width="38" height="37"><div align="left" class="style4"><span class="style2">
						<form name="form1" method="post" action="CandidateHomePage.jsp">
                          <label>
                            <div align="left">
                              <input name="Submit" type="submit" class="style19" align="left" value="Home">
                              </div>
                          </label>
                        </form>
                        </td>
            </tr>
			</table>
			</div>
			
			

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

			

  <!--Your Exam completed....
 
<p><strong><a href="CandidateHomePage.jsp">Goto Home</a></strong></p>-->
</body>
</html>
