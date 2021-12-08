 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
 
<link type="text/css" rel="stylesheet" href="style2.css"/>

<style >
.product img{
width: 100%;
height: auto;
box-sizing: border-box;
object-fit:cover;
}


</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: #f1f1f1;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
.buy-btn{
margin: auto;

}
</style>
</head>
<body>
<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>


<!-- navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light  py-3 fixed-top">
  <div class="container">
   <img alt="" src="img/logo.png" height="150" width="150">

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span > <i id="bar" class="fas fa-bars"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        
        <li class="nav-item">
          <a class="nav-link" href="#">home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">my page</a>
        </li>
        <li class="nav-item">
         <i class="far fa-search"></i>
         <i class="far fa-shopping-bag"></i>
        </li>
       </ul>
    </div>
  </div>
</nav>




<h3 style="padding-top: 190px; text-align: center;">Products</h3>
<hr class="mx-auto">


<c:forEach items="${list}" var="u">
<div class="row-2" >

  <div class="column" >
  <img class="img-fluid mb-3" alt="" src="img/pro1.jpg" >
<div class="star" style="text-align: center">
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
</div>
<h5 class="p-name" style="text-align: center">${u.getName()}</h5>
<h4 class="p-price" style="text-align: center">200</h4>
<button class="buy-btn" style="display: block;">Buy Now</button>

  </div>

</div>
  </c:forEach>
  
  



</div>


<script>
// Get the elements with class="column"
var elements = document.getElementsByClassName("column");

// Declare a loop variable
var i;

// List View
function listView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "100%";
  }
}

// Grid View
function gridView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "50%";
  }
}

/* Optional: Add active class to the current button (highlight it) */
var container = document.getElementById("btnContainer");
var btns = container.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>
