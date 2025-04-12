<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<!--
<style type="text/css">

.style4 {color: #B17725; font-weight: bold; font-size: 18px; }
a:link {
	color: black;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #000000;
}
a:hover {
	text-decoration: underline;
	color: grey;
}
a:active {
	text-decoration: none;
	color: #ECE9D8;
}
.style5 {
	font-size: 18px;
	font-weight: bold;
}
</style>
-->
<!--  
<table width="100%" height="266" border="0" >
 <tr>
    <td width="16%" height="22" bordercolor="black" bgcolor="#d1d1d1"><div align="center" class="style4"></div></td>
    <td width="14%" bordercolor="#4E3A34" bgcolor="#d1d1d1"><div align="center" class="style5">
      <div align="center"><a href="index.jsp">Home</a></div>
    </div></td>
    <td width="14%" bordercolor="black" bgcolor="#d1d1d1"><div align="center" class="style4"><a href="AboutUs.jsp">About Us </a></div></td>
    <td width="16%" bordercolor="black" bgcolor="#d1d1d1"><div align="center" class="style4"><a href="ContactUs.jsp">Contact Us </a></div></td>
   <td width="30%" bordercolor="black" bgcolor="#d1d1d1"><div align="center" class="style4"><a href="regis.jsp">New Registration</a></div></td>
</tr>
  <tr>
    <td height="138" colspan="6" bordercolor="black" bgcolor="white"><div align="center"><img src="h2.jpg" width="900" height="200" /></div></td>
  </tr>
 </table>
-->

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">e-STORE</a>
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
              <li><a class="dropdown-item text-center " href="#">Home appliences</a></li>
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
          <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#loginModal">Login</button>
          <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#signupModal">Sign up</button>
        </div>
      </div>
    </div>
  </nav>
  
  
  
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
        <div class="carousel-caption d-none d-md-block">
          <button class="btn btn-danger">Best offers</button>
          <button class="btn btn-primary">Exchange</button>
          <button class="btn btn-success">Discount</button>
        </div>
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
 
