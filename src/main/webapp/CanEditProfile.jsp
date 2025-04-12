
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>JobPortal</title>

        <script language="javascript">
            function setVal(obj)
            {
                if(obj.checked==false)
                {
                    document.getElementById("expyears").disabled=true;
                    document.getElementById("company").disabled=true;
                    document.getElementById("designation").disabled=true;
                    document.getElementById("salary").disabled=true;
                    document.getElementById("comAddress").disabled=true;

                }else{
                    document.getElementById("expyears").disabled=false;
                    document.getElementById("company").disabled=false;
                    document.getElementById("designation").disabled=false;
                    document.getElementById("salary").disabled=false;
                    document.getElementById("comAddress").disabled=false;
                }
            }
            function check()
            {
                var x=document.form1.name.value;
                var y=document.form1.college.value;
                var d=document.form1.markDegree.value;
                var a=document.form1.collegephone.value;
                var e=document.form1.telephone.value;
                var f=document.form1.pin.value;
                var g=document.form1.expyears.value;
                var h=document.form1.salary.value;

                if(document.form1.name.value=="")
                {
                    alert("Enter Your Name");
                    document.form1.name.focus();
                    return false;
                }
                else if(parseInt(x))
                {
                    alert("Enter name Correctly");
                    document.form1.name.focus();
                    return false;
                }
                if(document.form1.college.value=="")
                {
                    alert("Enter College Name ");
                    document.form1.college.focus();
                    return false;
                }
                else if(parseInt(y))
                {
                    alert("Enter College Name correctly");
                    document.form1.college.focus();
                    return false;
                }
                if(document.form1.collegephone.value=="")
                {
                    alert("Enter collegephone number ");
                    document.form1.collegephone.focus();
                    return false;
                }
                else if(!parseInt(a))
                {
                    alert("Enter CollegePhone Integer");
                    document.form1.collegephone.focus();
                    return false;
                }
                else if(((document.form1.collegephone.value.length)<6) || ((document.form1.collegephone.value.length)>11))
                {
                    alert("Phone no: should contain atleast 6 integers ");
                    document.form1.collegephone.focus();
                    return false;
                }
                if(document.form1.collegeemail.value=="")
                {
                    alert("Enter College email ");
                    document.form1.collegeemail.focus();
                    return false;
                }
                else if(document.form1.collegeemail.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.collegeemail.focus();
                    return false;
                }
                else if(document.form1.collegeemail.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.collegeemail.focus();
                    return false;
                }
                if(document.form1.markDegree.value=="")
                {
                    alert("Enter Degree mark");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(!parseInt(d))
                {
                    alert("Enter Integer");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(parseInt(d).length<0||parseInt(d).length>100)
                {
                    alert("Enter Degree % mark correctly  ");
                    document.form1.markDegree.focus();
                    return false;
                }
                if(document.form1.email.value=="")
                {
                    alert("Enter email ");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.email.focus();
                    return false;
                }
                if(document.form1.telephone.value=="")
                {
                    alert("Enter phone number ");
                    document.form1.telephone.focus();
                    return false;
                }
                else if(!parseInt(e))
                {
                    alert("Enter Ph Integer");
                    return false;
                }
                else if(((document.form1.telephone.value.length)<6) || ((document.form1.telephone.value.length)>11))
                {
                    alert("Phone no should contain atleast 6 integers ");

                    document.form1.telephone.focus();
                    return false;
                }
                if(document.form1.address.value=="")
                {
                    alert("Enter Address");
                    document.form1.address.focus();
                    return false;
                }
                if(document.form1.state.value=="")
                {
                    alert("Specify State");
                    document.form1.address.focus();
                    return false;
                }
                if(document.form1.pin.value=="")
                {
                    alert("Enter pin number ");
                    document.form1.pin.focus();
                    return false;
                }
                else if(!parseInt(f))
                {
                    alert("Enter Integer");
                    document.form1.pin.focus();
                    return false;
                }
                else if((document.form1.pin.value.length)<6)
                {
                    alert("Pin no: should contain 6 integers ");
                    document.form1.pin.focus();
                    return false;
                }
                
                if(document.getElementById("cat").checked==true)
                {
                    if(document.getElementById("expyears").value=="")
                    {
                        alert("Enter Exp years");
                        document.getElementById("expyears").focus();
                        return false;
                    }
					else
					{
					var expyr=document.getElementById("expyears").value;
					if (!parseInt(expyr)){
                            alert("Expyr invalid");
                            return false;
                        }
					}
					
                    if(document.getElementById("company").value=="")
                    {
                        alert("Enter Company");
                        document.getElementById("company").focus();
                        return false;
                    }

                    if(document.getElementById("designation").value=="")
                    {
                        alert("Enter Designation");
                        document.getElementById("designation").focus();
                        return false;
                    }

                    if(document.getElementById("salary").value=="")
                    {
                        alert("Enter Salary");
                        document.getElementById("salary").focus();
                        return false;
                    }else{
                        var sal=document.getElementById("salary").value;
                        if (!parseInt(sal)){
                            alert("Salary invalid");
                            return false;
                        }
						if(document.getElementById("comAddress").value=="")
                    {
                        alert("Enter Company Address");
                        document.getElementById("comAddress").focus();
                        return false;
                    }
                    }
                }
                return true;
            }
        </script>
    </head>

    <body  onload="setVal(document.getElementById('cat'))">
        
        
        
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
      <p class="lead mb-4">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.</p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        
        <a href="ChangePassword.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Click to change ID</button></a>
        <a href="Login.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Log Out</button></a>
      </div>
    </div>
  </div>
  
            
            <tr>
                
                <td width="99%"  bgcolor="#EBD9CD">
                    <% try {

            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");


            Class.forName("org.postgresql.Driver");
    		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/recruitment","admin","admin1234");
    			
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from Details where Username='" + c1 + "'");

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

            String expyrs = "", company = "", desig = "", sal = "", comadd = "", category = "";
            while (rs.next()) {
                s1 = rs.getString(2);//name
                s2 = rs.getString(5);//colg
                s3 = rs.getString(6);//colgph
                s4 = rs.getString(7);//colgemail
                s5 = rs.getString(9);//mark
                s6 = rs.getString(11);//email
                s7 = rs.getString(12);//tph
                s8 = rs.getString(13);//add
                s9 = rs.getString(14);//state
                s10 = rs.getString(15);//pin
                s11 = rs.getString(16);//category

            }
            String sql = "select * from Experienced where Username='" + c1 + "'";
            rs = st.executeQuery(sql);
            if (rs.next()) {
                expyrs = rs.getString(2);
                company = rs.getString(3);
                desig = rs.getString(4);
                sal = rs.getString(5);
                comadd = rs.getString(6);
                category = "Experienced";
            } else {
                category = "Fresher";
            }
                    %>

                    <form method="post" action="savestudentedit.jsp" name="form1" onsubmit="return check()">
                        <table border=0 cellpadding=3 cellspacing=0 width =81% align=center>
                            <tr bgcolor =white wdth =100%>
                                <td colspan="2" bgcolor="#E2E0CF"><div align="center"><font color="#386A78" size="5"><strong>Edit Profile</strong></font></div></td>
                            </tr>
                            <tr bgcolor =#FEF7E9 wdth =100%>
                                <td width="48%" bgcolor="white"><strong><font color="#666600" size="3" face="Times New Roman, Times, serif">Name&nbsp;
                                <font color="#993333">(as in academic records)</font> </font></strong></td>
                                <td width="52%" bgcolor="white"><input TYPE="text" NAME="name" size=30
                                                                         maxlength=30 value='<%=s1%>'>                </td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>College in which studying</font> </strong>
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="college" size=30 maxlength=30 value='<%=s2%>'>                       </td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>College Phone</font> </strong>
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="collegephone" size=30 maxlength=30 value='<%=s3%>'><font SIZE="2" COLOR="#CC0000" face =arial (STD-No.)>                                 </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td>
                                    <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>College Email</font> </strong>
                                </td>
                                <td><input TYPE="text" NAME="collegeemail" size=30 maxlength=50 value='<%=s4%>'>                                 </td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>% of Marks</font></strong>
                                </td>
                                <td bgcolor="#F3E8DA">
                                    <table width="111" border=0 cellpadding=0 cellspacing=0>
                                        <tr>
                                            <td width="95"><div align="center"><font SIZE="2" COLOR="#3366CC" face =arial><strong>BCA / B.Sc. %</strong></font> </div></td>
                                        </tr>
                                        <tr>
                                            <td><input TYPE="text" NAME="markDegree" size=8 maxlength=8 value='<%=s5%>' onblur="checkDec('markBSC')">                                              </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr  bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Email_id</font></strong>
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="email" size=30 maxlength=30 value='<%=s6%>'></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td>
                                <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Telephone Number</font> </strong></td>
                                <td><input NAME="telephone" TYPE="text" id="telephone" value="<%=s7%>">
                                    <font SIZE="2" COLOR="#CC0000" face ='arial'>(STD-No.)  </font>
                                </td>
                            </tr>
                            <tr  bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA" ><strong><font face="Times New Roman, Times, serif" color=#666600 size=3>Address</font> </strong></td>
                                <td bgcolor="#F3E8DA">
                                    <input class=USS_TEXT maxLength=30 name="address" size=40 value='<%=s8%>'><b><font face="ARIAL, HELVETICA" color=red size=+2></font></b>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td><strong><font face="Times New Roman, Times, serif" color=#666600 size=3>State</font> </strong></td>
                                <td><select name=state> <option selected value='<%=s9%>'>Select State</option>
                                        <option value=AP>Andhra Pradesh</option> <option value=AR>Arunachal
                                        Pradesh</option> <option value=AS>Assam</option> <option
                                            value=BR>Bihar</option> <option value=CH>Chandigarh</option> <option
                                            value=CG>Chattisgarh</option> <option value=DL>Delhi</option> <option
                                            value=GA>Goa</option> <option value=GJ>Gujarat</option> <option
                                            value=HR>Haryana</option> <option value=HP>Himachal Pradesh</option>
                                        <option value=JK>Jammu &amp; Kashmir</option> <option
                                            value=JH>Jharkhand</option> <option value=KA>Karnataka</option> <option
                                            value=KL>Kerala</option> <option value=MP>Madhya Pradesh</option>
                                        <option value=MH>Maharashtra</option> <option value=MN>Manipur</option>
                                        <option value=ML>Meghalaya</option> <option value=MZ>Mizoram</option>
                                        <option value=NL>Nagaland</option> <option value=OR>Orissa</option>
                                        <option value=PY>Pondicherry</option> <option value=PB>Punjab</option>
                                        <option value=RJ>Rajasthan</option> <option value=SK>Sikkim</option>
                                        <option value=TN>Tamilnadu</option> <option value=TR>Tripura</option>
                                        <option value=UA>Uttaranchal</option> <option value=UP>Uttar
                                        Pradesh</option> <option value=WB>West Bengal</option> <option
                                    value=XX>Others</option></select><br>                           </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td bgcolor="#F3E8DA">
                                    <strong><FONT face="Times New Roman, Times, serif" color=#666600 size=3>Pincode</FONT> </strong>
                                </td>
                                <td bgcolor="#F3E8DA"><INPUT class=USS_TEXT maxLength=6 name="pin" size=6 value='<%=s10%>'><B>
                                    <FONT face="ARIAL, HELVETICA" color=red size=+2></FONT></B>
                                    <input type="hidden" name="category" id="category" value="<%=category%>" />
                                </td>
                            </tr>
                            <%
     if (s11.equalsIgnoreCase("Fresher")) {
                            %>

                            <tr bgcolor="#FFFFFF">
                                <td>
                                    <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Category</font></strong>
                                </td>
                                <td align="left" >
                                    <input type="checkbox" name="cat" id="cat"  value='Experienced'  onclick="setVal(this);" />Experienced
                                </td>
                            </tr>

                            <%     }

                            %>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA">
                                    <strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Experienced Years</font></strong>
                                </td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="expyears" id="expyears" size=30 maxlength=30 value="<%=expyrs%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA"><strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Company</font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="company" id="company" size=30 maxlength=30 value="<%=company%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA"><strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Designation </font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="designation" id="designation" size=30 maxlength=30 value="<%=desig%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA"><strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Salary</font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="salary" id="salary" size=30 maxlength=30 value="<%=sal%>"></td>
                            </tr>
                            <tr bgcolor =#FEF7E9>
                                <td bgcolor="#F3E8DA"><strong><font SIZE="3" COLOR="#666600" face ='Times New Roman, Times, serif'>Company Address</font></strong></td>
                                <td bgcolor="#F3E8DA"><input TYPE="text" NAME="comAddress" id="comAddress" size=30 maxlength=30 value="<%=comadd%>"></td>
                            </tr>
                            <tr>
                                <td height="49" colspan=2 align="center" ><input  class="btn btn-outline-dark" TYPE="submit" value="Edit"></td>
                            </tr>
                        </table>
                    </form>

                    <%// }//while
        }//try
        catch (Exception e) {
            out.println(e);
        }

                    %>

                </td>
            </tr>
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
