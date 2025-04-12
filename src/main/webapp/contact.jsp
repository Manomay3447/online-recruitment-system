<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

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
            <a class="nav-link" href="about.jsp">About</a>
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
              <li><a class="dropdown-item text-center " href="contact.jsp">Contact Us</a></li>
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
  


<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">

    <div class="col-md-5 p-lg-5 mx-auto my-5">
    
      <h1 class="display-4 fw-normal">GET IN TOUCH</h1>
      <div class="row ms-1  row-center me-0 mt-3 ml-5">
 
    <div class="col-lg-4 text-center mt-5 mr-5 ml-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="twitter.png" alt="">
      
      
    </div><!-- /.col-lg-4 -->
    <div class="col-lg-4 text-center mt-5 mr-5 ml-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="facebook1.png" alt="">
      
         </div><!-- /.col-lg-4 -->
    <div class="col-lg-4 text-center mt-5 mr-5 ml-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="insta.png.png" alt="">
      
     
    </div><!-- /.col-lg-4 -->
    <p class="lead fw-normal"><h1>Follow Us</h1></p>
    </div>
  
    </div>
    
  </div>
  <div class="container-fluid max-auto" style="width:500px;">
<form name="contact" method="post" action="contactdata.jsp">
  <div class="mb-3 ml-5">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" class="form-control"  style="height:50px;" id="exampleFormControlInput1" name="email" placeholder="name@example.com" Required>
</div>
<div class="mb-3 ml-5">
  <label for="exampleFormControlTextarea1" class="form-label">Submit your Answer</label>
  <textarea class="form-control" style="height:200px;" id="exampleFormControlTextarea1" name="ans" rows="3" Required></textarea>
</div>
 <input type="submit"  class="btn btn-outline-dark"  align="center" value="Submit"><br><br>
</form>
</div>



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



</body>


</html>
