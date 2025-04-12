
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
            <a class="nav-link active" aria-current="page" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.jsp">About</a>
          </li>
          <li class="nav-item dropdown outline-light">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Catagories
            </a>
            <ul class="dropdown-menu  ">
              <li><a class="dropdown-item  text-center  " href="#">IT</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item  text-center  " href="#">Fashion</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item  text-center  " href="#">Mechanical</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item  text-center" href="">Electronics</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item text-center " href="contact.jsp">Contact Us</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.jsp">Contact us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="AdminHomePage.jsp">Admin</a>
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
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"  onclick="f1()"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="office.jpg" class="d-block w-100" alt="...">
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



  <div class="row ms-5  row-center me-0 mt-5">
  <h1 align="center">Top Companies</h1>
    <div class="col-lg-4 text-center mt-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="amazon.png" alt="">
     
      <p><a class="btn btn-secondary" href="#">View details »</a></p>
    </div><!-- /.col-lg-4 -->
    <div class="col-lg-4 text-center mt-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="facebook1.png" alt="">
      
      <p><a class="btn btn-secondary" href="#">View details »</a></p>
    </div><!-- /.col-lg-4 -->
    <div class="col-lg-4 text-center mt-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="netflix.png" alt="">
      
      <p><a class="btn btn-secondary" href="#">View details »</a></p>
    </div><!-- /.col-lg-4 -->
    
     <div class="col-lg-4 text-center mt-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="microsoft.png" alt="">
     
      <p><a class="btn btn-secondary" href="#">View details »</a></p>
    </div><!-- /.col-lg-4 -->
    <div class="col-lg-4 text-center mt-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="visa.png" alt="">
      
      <p><a class="btn btn-secondary" href="#">View details »</a></p>
    </div><!-- /.col-lg-4 -->
    <div class="col-lg-4 text-center mt-5">
      <img class="bd-placeholder-img rounded-circle" width="140" height="140"  src="twitter.png" alt="">
      
      <p><a class="btn btn-secondary" href="#">View details »</a></p>
    </div><!-- /.col-lg-4 -->
    
  </div>



<div class="px-4 py-5 my-5 text-center mt-0">
    <img src="logo.png">
    <h1 class="display-5 fw-bold">Register Here</h1>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.</p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <a href="regis.jsp"><button type="button" class="btn btn-primary btn-lg px-4 gap-3">Click to Register</button></a>
        
      </div>
    </div>
  </div>
  
   
  
  
  
  
  
  


   
    <h1 align="center">Get to Know us,</h1>
    
  <hr class="featurette-divider">
    <div class="row featurette ml-auto" >
      <div class="col-md-7 ml-5 center">
        <h2 class="featurette-heading-center fw-normal lh-1">How to get a seat at the table for talented Acquisition. <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Learn what it takes to build a strategic talent acquisition function.</p>
        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
         <button type="button" class="btn btn-outline-primary btn-lg px-4 gap-3">Read Post</button>
        </div>
      </div>
      <div class="col-md-5">
       <img  width="500" height="350" src="post1.jpg">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2 ml-5">
        <h2 class="featurette-heading fw-normal lh-1">5 Ways technology helps TA maintain its seat at the table. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Find out how ti streamline your recuiting tech stack to become more stratigic.</p>
         <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
           <button type="button" class="btn btn-outline-primary btn-lg px-4 gap-3">Read Post</button>
         </div>
      </div>
      <div class="col-md-5 order-md-1">
        <img  width="500" height="350" src="post3.jpg">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 ml-5">
        <h2 class="featurette-heading fw-normal lh-1">The Journey to talent Acquisition Transformation at colliers. <span class="text-muted">Checkmate.</span></h2>
        <p class="lead">Learn how colliers EMEA transformed hiring by partnering with SmartRecuiters.</p>
         <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
         <button type="button" class="btn btn-outline-primary btn-lg px-4 gap-3">Read post</button>
         </div>
      </div>
      <div class="col-md-5">
       <img  width="500" height="350" src="post2.jpg">
      </div>
    </div>

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

<script type="text/javascript">
var i=0;
var path= new Array();
path[0]="office.jpg";
path[1]="office5.jpg";
path[2]="image6.jpg";

function f1()
{
    document.slide.src=path[i];
    if(i<path.length-1)
    i++;
    else
    i=0;
    setTimeout("f1()",1000);
  
}
window.onload=f1();
</script>
















          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>


</html>
