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
                font-size: 24px;
                color: #663366;
                font-weight: bold;
            }
            .style5 {color: #ECE9D8}
            
        </style>
-->
        <script language="javascript">
            function setVal(sval)
            {

                if(sval=="Fresher")
                {
                    document.getElementById("expyears").disabled=true;
                    document.getElementById("company").disabled=true;
                    document.getElementById("designation").disabled=true;
                    document.getElementById("salary").disabled=true;
                    document.getElementById("comAddress").disabled=true;
                }
                else{
                    document.getElementById("expyears").disabled=false;
                    document.getElementById("company").disabled=false;
                    document.getElementById("designation").disabled=false;
                    document.getElementById("salary").disabled=false;
                    document.getElementById("comAddress").disabled=false;
                }
            }

            function check()
            {
                var a=document.form1.collegephone.value;
                var b=document.form1.mark10.value;
                var c=document.form1.mark12.value;
                var d=document.form1.markDegree.value;
                var e=document.form1.telephone.value;
                var f=document.form1.pin.value;
                var x=document.form1.name.value;
                var y=document.form1.college.value;
                var z=document.form1.password.value;

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
                if(document.form1.gender.value=="")
                {
                    alert("Enter your gender");
                    document.form1.gender.focus();
                    return false;
                }
                if(document.form1.dob.value=="")
                {
                    alert("Enter Date of Birth");
                    document.form1.dob.focus();
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
                if(document.form1.branch.value=="")
                {
                    alert("Specify Branch");
                    document.form1.branch.focus();
                    return false;
                }
                if(document.form1.mark10.value=="")
                {
                    alert("Enter your 10th %mark")
                    document.form1.mark10.focus();
                    return false;
                }
                else if(!parseInt(b))
                {
                    alert("Not Integers used");
                    document.form1.mark10.focus();
                    return false;
                }
                else if(parseInt(b)<0||parseInt(b)>100)
                {
                    alert("Enter 10th % mark correctly  ");
                    document.form1.mark10.focus();
                    return false();
                }

                if(document.form1.mark12.value=="")
                {
                    alert("Enter 12th mark")
                    document.form1.mark12.focus();
                    return false;
                }
                else if(!parseInt(c))
                {
                    alert("Not Integers used");
                    document.form1.mark12.focus();
                    return false;
                }
                else if(parseInt(c)<0||parseInt(c)>100)
                {
                    alert("Enter 12th %mark correctly  ");
                    document.form1.mark12.focus();
                    return false();
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
                if(document.form1.degree.value=="")
                {
                    alert("Enter Degree");
                    document.form1.degree.focus();
                    return false;
                }
                if(document.form1.username.value=="")
                {
                    alert("Enter  Username");
                    document.form1.username.focus();
                    return false;
                }

                if(document.form1.password.value=="")
                {
                    alert("Enter Password");
                    document.form1.password.focus();
                    return false;
                }
                if(z.length<8)
                {
                    alert("Password should be minimum 8 characters");
                    document.form1.password.focus();
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
                if(document.form1.sel_cat.value=="")
                {
                    alert("Specify Category");
                    document.form1.sel_cat.focus();
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
  
  
  
  <div id="carouselExampleCaptions" class="carousel slide">
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
  
    
                       <td width="100%" ><form action="savestudentdata.jsp" method="post" name="form1" id="form1" onsubmit="return check()">
                        <table class="t1" width ="100%" border="0" cellpadding="3" cellspacing="0"  align="center">
                            <tr bgcolor ="#E9E9D8" wdth ="100%">
                                <td height="27" colspan="4" bgcolor="#FEF7E9"><div align="center" class="style4"><font color="#006666">Registration</font></div></td>
                            </tr>
                            <tr bgcolor ="#E9E9D8" width ="100%">
                                <td width="6%" bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td width="32%"><font size="2" color="black" face ="arial" >Name&nbsp;<font color="blue"> (as in academic records) </font></font></td>
                                <td width="52%"><input type="text" name="name" size="30" maxlength="30" value='' /></td>
                                <td width="10%" bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Gender</font></td>
                                <td><select name="gender" >
                                        <option  value="Female">Female</option>
                                        <option  value="Male">Male </option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial" >Date of Birth&nbsp;</font><font color="blue">(dd/mm/yy)</font></td>
                                <td><input type="text" name="dob" size="30" maxlength="30" /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td height="29"><font size="2" color="black" face ="arial">College in which studying</font></td>
                                <td><input type="text" name="college" size="30" maxlength="30" /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">College Phone</font></td>
                                <td><input type="text" name="collegephone" size="30" maxlength="30" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">College Email</font></td>
                                <td><input type="text" name="collegeemail" size="30" maxlength="50" /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Branch of study</font></td>
                                <td><select name="branch" >
                                        <option  value="">------Select--------- </option>
                                        <option  value="Applied Electro            ">Applied Electronics </option>
                                        <option  value="Applied Physics            ">Applied Physics </option>
                                        <option  value="B C A                      ">B C A </option>
                                        <option  value="Bioinformatics              ">Bioinformatics </option>
                                        <option  value="Biotechnology              ">Biotechnology </option>
                                        <option  value="Chemistry                  ">Chemistry </option>
                                        <option  value="Comp and Networking        ">Computer and Networking </option>
                                        <option  value="Comp Application           ">Computer Application </option>
                                        <option  value="Comp Application &amp; IT      ">Computer Application &amp; IT </option>
                                        <option  value="Comp Hardware Maintenance  ">Computer Hardware Maintenance </option>
                                        <option  value="Comp Information Systems   ">Computer Information Systems </option>
                                        <option  value="Comp Maintenance           ">Computer Maintenance </option>
                                        <option  value="Comp Maintenance &amp; Electro ">Computer Maintenance &amp; Electronics </option>
                                        <option  value="Comp Science               ">Computer Science </option>
                                        <option  value="Comp Science &amp; Information ">Computer Science &amp; Information </option>
                                        <option  value="Comp Technology            ">Computer Technology </option>
                                        <option  value="Electro                    ">Electronics </option>
                                        <option  value="Electro &amp; Communication    ">Electronics &amp; Communication </option>
                                        <option  value="Electro &amp; Comp Hardware    ">Electronics &amp; Computer Hardware </option>
                                        <option  value="Electro &amp; Comp Maintenance ">Electronics &amp; Computer Maintenance </option>
                                        <option  value="Industrial Chemistry       ">Industrial Chemistry </option>
                                        <option  value="Information Technology     ">Information Technology </option>
                                        <option  value="Instrumentation            ">Instrumentation </option>
                                        <option  value="Mathematics                ">Mathematics </option>
                                        <option  value="Optical Instrumentation    ">Optical Instrumentation </option>
                                        <option  value="Physics                    ">Physics </option>
                                        <option  value="Physics &amp; Electro          ">Physics &amp; Electronics </option>
                                        <option  value="Physics Instrumentation    ">Physics Instrumentation </option>
                                        <option  value="Physics with Comp App      ">Physics with Comp Applications </option>
                                        <option  value="Software Systems           ">Software Systems </option>
                                        <option  value="Software Technology        ">Software Technology </option>
                                        <option  value="Statistics                 ">Statistics </option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">% of Marks</font></td>
                                <td><table width="220" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="72"><div align="center"><font size="1" color="black" face ="arial">X % </font></div></td>
                                            <td width="73"><div align="center"><font size="1" color="black" face ="arial">XII %</font> </div></td>
                                            <td width="75"><div align="right"><font size="1" color="black" face ="arial">BCA / B.Sc. %</font></div></td>
                                        </tr>
                                        <tr>
                                            <td><div align="center"><font size="1" color="black" face ="arial">
                                                        <input type="text" name="mark10" size="5" maxlength="5" value='' onblur="checkDec('mark10')" />
                                            </font></div></td>
                                            <td><div align="right">
                                                    <input type="text" name="mark12" size="5" maxlength="5" value='' onblur="checkDec('mark12')" />
                                            </div></td>
                                            <td>

                                                <div align="right">
                                                    <input type="text" name="markDegree" size="5" maxlength="5" value='' onblur="checkDec('markBSC')" />
                                        </div></td></tr>
                                </table></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial"> Degree</font></td>
                                <td><select name="degree">
                                        <option value ="BTech">BTech</option>
                                        <option value ="MTech">MTech</option>
                                        <option value ="MCA">MCA</option>
                                        <option value ="BCA">BCA</option>
                                        <option value ="BSc">BSC</option>
                                        <option value ="MSc">MSc</option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9" wdth ="100%">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Username</font></td>
                                <td><input type="text" name="username" size="30" maxlength="30" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9" wdth ="100%">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Password</font></td>
                                <td><input type="password" name="password" size="30" maxlength="30" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr  bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Email_id</font></td>
                                <td><input type="text" name="email" size="30" maxlength="30" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Telephone Number</font></td>
                                <td><input type="text" name="telephone" value="" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr  bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">Address</font></td>
                                <td><input class="USS_TEXT" maxlength="30" name="address" size="40" value='' />
                                <b><font face="ARIAL, HELVETICA" color="red" size="+2"></font></b></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">State</font></td>
                                <td><select name="state">
                                        <option selected="selected" value="">Select State</option>
                                        <option value="AP">Andhra Pradesh</option>
                                        <option value="AR">ArunachalPradesh</option>
                                        <option value="AS">Assam</option>
                                        <option value="BR">Bihar</option>
                                        <option value="CH">Chandigarh</option>
                                        <option value="CG">Chattisgarh</option>
                                        <option value="DL">Delhi</option>
                                        <option value="GA">Goa</option>
                                        <option value="GJ">Gujarat</option>
                                        <option value="HR">Haryana</option>
                                        <option value="HP">Himachal Pradesh</option>
                                        <option value="JK">Jammu &amp; Kashmir</option>
                                        <option value="JH">Jharkhand</option>
                                        <option value="KA">Karnataka</option>
                                        <option value="KL">Kerala</option>
                                        <option value="MP">Madhya Pradesh</option>
                                        <option value="MH">Maharashtra</option>
                                        <option value="MN">Manipur</option>
                                        <option value="ML">Meghalaya</option>
                                        <option value="MZ">Mizoram</option>
                                        <option value="NL">Nagaland</option>
                                        <option value="OR">Orissa</option>
                                        <option value="PY">Pondicherry</option>
                                        <option value="PB">Punjab</option>
                                        <option value="RJ">Rajasthan</option>
                                        <option value="SK">Sikkim</option>
                                        <option value="TN">Tamilnadu</option>
                                        <option value="TR">Tripura</option>
                                        <option value="UA">Uttaranchal</option>
                                        <option value="UP">Uttar Pradesh</option>
                                        <option value="WB">West Bengal</option>
                                        <option value="XX">Others</option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">Pincode</font></td>
                                <td><input class="USS_TEXT" maxlength="6" name="pin" size="6" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1" >Category</font></td>
                                <td><select name="sel_cat" id="sel_cat" onchange="setVal(this.value)">
                                        <option value="category">select a category</option>
                                        <option value="Fresher">Fresher</option>
                                        <option value="Experienced">Experienced</option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Experienced Years</font></td>
                                <td><input type="text" name="expyears" id="expyears" size="30" maxlength="30" /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Company</font></td>
                                <td><input type="text" name="company" id="company" size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Designation </font></td>
                                <td><input type="text" name="designation" id="designation" size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Salary</font></td>
                                <td><input type="text" name="salary" id="salary" size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Company Address</font></td>
                                <td><input type="text" name="comAddress" id="comAddress"  size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center" bgcolor="#FEF7E9" ><br/>
                                    <input  class="btn btn-outline-dark " type="reset" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  class="btn btn-outline-dark " type="submit" value="submit" />
                                    <br />
                                <br /> </td>
                            </tr>
                        </table>
                </form></td>
            
        
        
        
        
        
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
