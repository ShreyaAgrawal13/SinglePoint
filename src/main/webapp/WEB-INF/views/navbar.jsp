<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <style>
 * {
   border: 0;
   box-sizing: border-box;
   margin: 0;
   padding: 0;
 }

 body {

   font-family: Lato, Helvetica, Arial, sans-serif;
 }

 a {
   color: inherit;
   font-family: inherit;
   font-size: inherit;
   text-decoration: none;
 }
 #navbar {
   background: white;
   color: rgb(13, 26, 38);
   position: fixed;
   top: 0;
   height:60px;
   line-height: 60px;
   width: 100vw;
   z-index: 10;
   margin-top: 5px;
   margin-left: 0px;
 }

 .nav-wrapper {
   margin: 0px;
   text-align: center;
   width: 70%;
 } @media(max-width: 768px) {
     .nav-wrapper {
       width: 90%;
     }
   } @media(max-width: 638px) {
       .nav-wrapper {
         width: 100%;
       }
     }


 .logo {
   float: left;
   font-size: 1.5em;
   height: 30px;
   letter-spacing: 1px;
   text-transform: uppercase;
 } @media(max-width: 768px) {
     .logo {
 /*       margin-left: 5px; */
     }
   }

 #navbar ul {
   display: inline-block;
   float: right;
   list-style: none;
   /* margin-right: 14px; */
   margin-top: -2px;
   text-align: right;
   transition: transform 0.5s ease-out;
   -webkit-transition: transform 0.5s ease-out;
 } @media(max-width: 640px) {
     #navbar ul {
       display: none;
     }
   } @media(orientation: landscape) {
       #navbar ul {
         display: inline-block;
       }
     }

 #navbar li {
   display: inline-block;
 }

 #navbar li a {
   color: rgb(13, 26, 38);
   display: block;
   font-size: 20px;
   height: 50px;
   letter-spacing: 1px;
   margin: 0 20px;
   padding: 0 4px;
   position: relative;
   text-decoration: none;
   text-transform: uppercase;
   transition: all 0.5s ease;
   -webkit-transition: all 0.5s ease;
 }

 #navbar li a:hover {
   /* border-bottom: 1px solid rgb(28, 121, 184); */
   color: rgb(28, 121, 184);
   transition: all 1s ease;
   -webkit-transition: all 1s ease;
 }

 /* Animated Bottom Line */
 #navbar li a:before, #navbar li a:after {
   content: '';
   position: absolute;
   width: 0%;
   height: 1px;
   bottom: -1px;
   background: rgb(13, 26, 38);
 }

 #navbar li a:before {
   left: 0;
   transition: 0.5s;
 }

 #navbar li a:after {
   background: rgb(13, 26, 38);
   right: 0;
   /* transition: width 0.8s cubic-bezier(0.22, 0.61, 0.36, 1); */
 }

 #navbar li a:hover:before {
   background: rgb(13, 26, 38);
   width: 100%;
   transition: width 0.5s cubic-bezier((0.22, 0.61, 0.36, 1));
 }

 #navbar li a:hover:after {
   background: transparent;
   width: 100%;
 }
 </style>
    <nav id="navbar" class="">
      <div class="nav-wrapper">
      <div class="logo" >

                <a href="/home"><img width="200px" height="auto" src="img/logo1.png" ></a>
              </div>

        <ul id="menu">
          <li><a href="/home">Home</a></li>
          <c:if test="${user.userRoles == 'ADMIN'}">
       <li><a href="/UserRegistration">Manage User</a></li>
       </c:if>
       <li><a href="/projectList">Projects</a></li>
       <li><a href="/userProfile">Profile</a></li>
       <li><a href="/logout">Logout</a></li>
        </ul>
      </div>
    </nav>
