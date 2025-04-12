
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobPortal</title>
       
    <!--  
        <style type="text/css">
           
            .style1 {color: black}
            .style9 {color: black}
            
        </style>
        -->
        <script language="javascript">
            function check()
            {
                var a= document.form1.newpass2.value;
                var b= document.form1.newpass.value;
                    if(document.form1.pass.value  =="")
                    {
                        alert("Enter the old password");
                        document.form1.pass.focus();
                        return false;
                    }
                   if(document.form1.newpass2.value =="")
                    {
                        alert("Enter the new password");
                        document.form1.newpass2.focus();
                        return false;
                    }
                    else if(a.length<8)
                        {
                         alert("password should be minimum 8 characters");
                        document.form1.newpass2.focus();
                        return false;
                        }
                    if(document.form1.newpass.value=="")
                    {
                        alert("Re-Enter the password");
                        document.form1.newpass.focus();
                        return false;
                    }
                    else if(a!=b)
                        {
                            alert("Wrong password match");
                            document.form1.newpass.focus();
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
          <a href="Login.jsp"><button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="Login.jsp">Login</button></a>
          <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#signupModal">Sign up</button>
        </div>
      </div>
    </div>
  </nav>
        
         
  
<div class="px-4 py-5 my-5 text-center mt-3">
    <img   class="bd-placeholder-img rounded-circle" width="240" height="240"src="pngegg.png">
    <h1 class="display-5 fw-bold">  Edit Your Profile</h1>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4"></p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        
        <a href="ChangePassword.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Click to change ID</button></a>
        <a href="Login.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Log Out</button></a>
      </div>
    </div>
  </div>
  
            
           
            <tr>
               
                <td bgcolor="#FFFFFF" valign="top"><p>&nbsp;</p>
                    <% try {

            //              HttpSession s = request.getSession();
            //  String c1 = request.getParameter("id");
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
            // session.getAttribute("c1", c1);
              
            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from Login where Username='" + c1 + "' and Password ='" + c2 + "'");

            String s1 = null;
            String s2 = null;
                    %>
                    <font color="#FFFFFF" >
                        <%
     out.println(c1);
                        %>
                    </font>
                    <%
     while (rs.next()) {
         s1 = rs.getString(1);
         s2 = rs.getString(2);
     }
                    %>
                    <form name="form1" method="post" action="savepassword.jsp" onsubmit="return check()">
                        <table width="617" height="250" border="1" align="center" cellpadding="0" bordercolor="white">
                            <tr>
                                <td height="23" colspan="3" bordercolor="#d1d1d1" bgcolor="#FFFFFF"><div align="center" class="style10 style1"><strong>Change Password </strong></div></td>
                            </tr>
                            <tr>
                                <td width="218" height="26" bordercolor="#d1d1d1" bgcolor="#FEF7E9"><span class="style15 style9"><strong> Username </strong></span></td>
                                <td width="202" bordercolor="#CC6633" bgcolor="#FEF7E9"><input name="user" type="text"  id="user" value="<%=s1%>" size="35"></td>
                                
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#d1d1d1" bgcolor="#FFFFFF"><span class="style15 style9"><strong>Old Password </strong></span></td>
                                <td bordercolor="#CC6633" bgcolor="#FFFFFF"><input name="pass" type="password"  id="pass"  size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#d1d1d1" bgcolor="#FEF7E9"><span class="style15 style9"><strong>New Password </strong></span></td>
                                <td bordercolor="#CC6633" bgcolor="#FEF7E9"><input name="newpass2" type="password" id="newpass2" size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#d1d1d1" bgcolor="#FFFFFF"><span class="style15 style9"><strong>Conform Password</strong></span></td>
                                <td bordercolor="#CC6633" bgcolor="#FFFFFF"><input name="newpass" type="password" id="newpass" size="35"></td>
                            </tr>
                            <tr>
                                <td height="28" colspan="2" bordercolor="#FEF7E9" bgcolor="#FEF7E9"><div align="center">
                                        <input  class="btn btn-outline-dark" name="Submit" type="submit" class="style9" value="Submit">
                                </div></td>
                            </tr>
                        </table>
                    </form>
                    <%
        }//try
        catch (Exception e) {
            out.println(e);
        }

                    %>

                </td>
            </tr>
            
                       
        
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


input[type="submit"]{
    
    
   
   border-radius: 20px solid black;
   background: transparent;
   
}

        </style>
       
    </body>
</html>
