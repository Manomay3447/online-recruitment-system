<%-- 
    Document   : CompanyReg
    Created on : Nov 11, 2008, 4:14:09 PM
    Author     : user
--%>
<%@page import="java.io.*,java.sql.*" %>
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
       
        .body {
            margin:0%;
        }
        a:link {
            color: #000066;
            text-decoration: underline;
        }
        a:visited {
            text-decoration: underline;
            color: #C0DCC0;
        }
        a:hover {
            text-decoration: none;
            color: #996666;
        }
        a:active {
            text-decoration: underline;
            color: #FF9999;
        }
        .style4 {
            color: #CC3333;
            font-weight: bold;
        }
        .style5 {color: #006699}
       
    </style>
    -->
    <script language="javascript">
        function valid()
        {
            var a=document.form1.comname.value;
            var b=document.form1.compassword.value;
            var c=document.form1.comemail.value;
            var d=document.form1.comcontact.value;
            var e=document.form1.comcutoff.value;
            if(document.form1.comname.value=="")
            {
                alert("Enter Company Name");
                document.form1.comname.focus();
                return false;
            }
            else if(parseInt(a))
            {
                alert("Company Name cannot be integer");
                document.form1.comname.focus();
                return false;
            }
            if(document.form1.comaddress.value=="")
            {
                alert("Enter Company Address");
                document.form1.comaddress.focus();
                return false;
            }
            if(document.form1.compost.value=="")
            {
                alert("Enter Company Post");
                document.form1.compost.focus();
                return false;
            }
            if(document.form1.comcriteria.value=="")
            {
                alert("Enter Company Criteria");
                document.form1.comcriteria.focus();
                return false;
            }
            if(document.form1.comusername.value=="")
            {
                alert("Enter Company Username");
                document.form1.comusername.focus();
                return false;
            }
            if(document.form1.compassword.value=="")
            {
                alert("Enter Company Password");
                document.form1.compassword.focus();
                return false;
            }
            if(b.length<8)
            {
                alert("Password should be minimum 8 characters");
                document.form1.compassword.focus();
                return false;
            }
            if(document.form1.comemail.value=="")
            {
                alert("Enter Company Email");
                document.form1.comemail.focus();
                return false;
            }
            else if(c.indexOf('@')==-1)
            {
                alert("Enter Email Correctly");
                document.form1.comemail.focus();
                return false;
            }
            else if(c.indexOf('.')==-1)
            {
                alert("Enter Email Correctly");
                document.form1.comemail.focus();
                return false;
            }
            if(document.form1.comcontact.value=="")
            {
                alert("Enter Company Contact no:");
                document.form1.comcontact.focus();
                return false;
            }
            else if(!parseInt(d))
            {
                alert("Enter integer");
                document.form1.comcontact.focus();
                return false;
            }
            else if(((document.form1.comcontact.value.length)<6) || ((document.form1.comcontact.value.length)>11))
            {
                alert("Phone no should contain atleast 6 integers ");
                document.form1.comcontact.focus();
                return false;
            }
            if(document.form1.comcutoff.value=="")
            {
                alert("Enter Company Cutoff");
                document.form1.comcutoff.focus();
                return false;
            }
            else if(!parseInt(e))
            {
                alert("Enter integer");
                document.form1.comcutoff.focus();
                return false;
            }
            else if(parseInt(e)<0||parseInt(e)>100)
            {
                alert("Enter cutoff in %");
                document.form1.comcutoff.focus();
                return false;
            }

            return true;

        }
    </script>

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
              <li><a class="dropdown-item  text-center" href="">Fashion</a></li>
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
  
  
  
  <div id="carouselExampleCaptions" class="carousel slide mb-5">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="reg.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Success begins Here</h5>
        <p>Only We know How to Choose The Ideal Person For The Job.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="office5.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="office3.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>  

  <div class="Reg" align="center">

     <%
      try {

            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");



            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from com where CUsername='" + c1 + "'");

            String s1 = null;
            String s2 = null;
            String s3 = null;
            String s4 = null;
            String s5 = null;
            String s6 = null;
            String s7 = null;
            String s8 = null;
            String s9 = null;
            String s10 = null;
            String s11 = null;
            
             while (rs.next()) {
                s1 = rs.getString(1);
                s2 = rs.getString(2);//colg
                s3 = rs.getString(3);//colgph
                s4 = rs.getString(4);//colgemail
                s5 = rs.getString(5);//mark
                s6 = rs.getString(6);//email
                s7 = rs.getString(7);//tph
                s8 = rs.getString(8);//add
                s9 = rs.getString(9);//state
                s10 = rs.getString(10);//pin
               s11 = rs.getString(11);//category

            }
            
            %>

              
                    <form action="savecompanyedit.jsp" method="post" name="form1" id="form1">
                        <table width =85% border=0 cellpadding=3 cellspacing=0>
                            <tr bgcolor="" width=100%>
                                <td colspan="2" bgcolor="#FEF7E9"> <div align="center" class="style4">
                                        <div align="center" class="style5">Company Registration </div>
                                </div></td>
                            </tr>
                            <tr bgcolor="" width=100%>
                                <td width="33%" bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial >Name</font></div></td>
                                <td width="67%" bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="comname" id="comname" size=30 maxlength=30 value='<%=s1%>'>
                                </div></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial>Address</font></div></td>
                                <td bgcolor="#FEF7E9"><div align="center">
                                        <input NAME="comaddress" TYPE="text" id="comaddress" size=30 maxlength=50 value='<%=s2%>'>
                                </div></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial>Post</font></div></td>
                                <td bgcolor="#FFFFFF"><div align="center">
                                        <input NAME="compost" TYPE="text" id="compost" size=30  maxlength=50 value='<%=s3%>'>
                                </div></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial>Criteria</font></div></td>
                                <td bgcolor="#FEF7E9"><div align="center">
                                        <input NAME="comcriteria" TYPE="text" id="comcriteria" size=30  maxlength=50 value='<%=s4%>'>
                                </div></td>
                            </tr>
                            <tr  wdth =100%>
                                <td bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial>Username</font></div></td>
                                <td bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="comusername" id="comusername"size=30 maxlength=30 value='<%=s5%>'>
                                </div></td>
                            </tr>
                            <tr  wdth =100%>
                                <td bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial>Password</font></div></td>
                                <td bgcolor="#FEF7E9"><div align="center">
                                        <input TYPE="password" NAME="compassword" id="compassword" size=32 maxlength=30 value='<%=s6%>'>
                                </div></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial>Email_id</font></div></td>
                                <td bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="comemail" id="comemail" size=30 maxlength=30 value='<%=s7%>'>
                                </div></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial>Contact No:</font></div></td>
                                <td bgcolor="#FEF7E9"><div align="center">
                                        <input TYPE="text" NAME="comcontact" id="comcontact" size=10 maxlength=30 value='<%=s8%>' >
                                &nbsp; <font SIZE="2" COLOR="#CC0000" face =arial>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(STD-No.)</font></div></td>
                            </tr>
                           <tr>
                                <td bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial>Educational CutOff %</font></div></td>
                                <td bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="comcutoff" id="comcutoff" size=30 maxlength=30 value='<%=s9%>'>
                                </div></td>
                            </tr>
							<tr>
                                <td bgcolor="#FEF7E9"><div align="center"><font SIZE="2" COLOR="black" face =arial>Aptitude CutOff %</font></div></td>
                                <td bgcolor="#FEF7E9"><div align="center">
                                        <input TYPE="text" NAME="acutoff" id="acutoff" size=30 maxlength=30 value='<%=s10%>'>
                                </div></td>
                            </tr>
							<tr>
                                <td bgcolor="#FFFFFF"><div align="center"><font SIZE="2" COLOR="black" face =arial>Last date (for candidate application):</font></div></td>
                                <td bgcolor="#FFFFFF"><div align="center">
                                        <input TYPE="text" NAME="lastdate" id="lastdate" size=10 maxlength=10 value='<%=s11%>'>
                                &nbsp; <font SIZE="2" COLOR="#CC0000" face =arial>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(dd/mm/yyyy)</font></div></td>
                            </tr>
                            
                            <tr>
                                <td height="51" colspan=2 bgcolor="#FEF7E9" ><div align="center"><br>
                                        <input  class="btn btn-outline-dark " TYPE="reset"> 
                                        &nbsp;&nbsp;
                                        <input class="btn btn-outline-dark " TYPE="submit" value="Submit" onclick="return valid()">
                                </td>
                                 
                            </tr>
                        </table>
                    </form>
                    
                    
                </div>
                
                    <%// }//while
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

      <style>
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
                
            
        
    
</body>
</html>
