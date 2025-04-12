

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
  
  
 <!--  
   <div id="carouselExampleCaptions mt-2" class="carousel slide">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
        aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
        aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
        aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img
          src="https://www.reliancedigital.in/medias/Televisions-Carousel-Banner-28-12-2022.jpg?context=bWFzdGVyfGltYWdlc3w5MTYwMXxpbWFnZS9qcGVnfGltYWdlcy9oNjkvaGY3Lzk5Mzc4OTQ4MzQyMDYuanBnfGVhYjg1ZDkzZjUxOTkzNjhkNWFkYWVkNGYwYjMzNzk2ZTZkM2U5MjNkMWJmZmJjZjYxNzJkNTQ5NzFlNGZiNDk"
          class="d-block w-100 h-5 1400x300" alt="...">
              </div>
      <div class="carousel-item">
        <img
          src="https://www.reliancedigital.in/medias/Laptops-Carousel-Banner-28-12-2022.jpg?context=bWFzdGVyfGltYWdlc3wxMTQ3MTB8aW1hZ2UvanBlZ3xpbWFnZXMvaDQwL2g3Zi85OTM3ODk0NTcyMDYyLmpwZ3w3NDVjM2RmNWQ4OWQwNzRmYmNjNDQ4MWNkMDE5ZTdkNjRiNmZlMjVlNThkMTBjZTVmZTllOGRmYWNiNDhjNThj"
          class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Second slide label</h5>
          <p>Some representative placeholder content for the second slide.</p>
        </div>
      </div>
      <div class="carousel-item carousel-bg-dark">
        <img
          src="https://www.reliancedigital.in/medias/Carousel-Banner-Winter-Store-D.jpg?context=bWFzdGVyfGltYWdlc3wxNjM1NjR8aW1hZ2UvanBlZ3xpbWFnZXMvaDRjL2hiMS85OTMzMzQ5NjgzMjMwLmpwZ3wyM2ZkYjBmNWRkZmZlMmZlZTRiYWJmZmVlMDg4ZjBjZTE2YzM0ODdkNmM5NDRmNWExNjFjMTk3N2M4NTFjOWRh"
          class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block carousel-dark">
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
  -->
    
	
<style>

body{
 background-image:url('loginback.jpg');
 background-size:auto;
 background-size:cover;
}
div{
    height: 100%;

}

.text{

    color: navy;
}
h5{
    color: navy;
}


.loginform{
margin-top: 10%;
height: 80%;
width: 30%;
margin-left: 35%;
margin-right: 25%;
border: 2px solid #2f2f2f;
background-color: #f2f2f2;
border-radius:20px ;
background-color: black;
}

.loginform form{
    margin-left: 29.8%;
}
.form1 input[type="text"]{
    width:70%;
    color: white;
    border: none;
   border-bottom: 1px solid navy;
   background: transparent;
   outline: none;
}

.form2 input[type="password"]{
    width:70%;
    color: white;
    border: none;
   border-bottom: 1px solid  navy;
   background: transparent;
   outline: none;
}

.btnsubmit{
    border: none;
    outline: none;
    height: 30px;
    width: 55%;
    margin-right: 15%;
    color: white;
    background-color: navy;
    border-radius: 30px;
    
}


</style>


<div>

    <section class="loginform">

    
      
           <br> <h1 class="text" align="center"> Login </h1><br>
    <form class="f1" name="login" method="post" action="savelogindata.jsp">
        <div class="form1">
            <label for="username" class="label1"  align="center"><h5>Username</h5></label>
            <input type="text"  maxlength= "18" class="form-control"   id="username" name="username" aria-describedby="emailHelp" Required>
        </div>
        <div class="form2">
            <label for="password" class="form-label"  align="center"><h5>Password</h5></label>
            <input type="password" maxlength= "25" class="form-control" id="password" name="password" Required>
        </div><br><br>
        <input class="btnsubmit" type="submit" name="Submit" value="Login"><br><br>
    </form>

                                     
        
           
           
       
        </section>

    </div>



</body>
</html>
