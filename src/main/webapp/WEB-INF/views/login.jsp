<html>
<head>
  <title>Login Page</title>
  <style>
    body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
    }
    h2{
    font-size: 20px;
    }
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 40px;
      background-color: #ffffff;
      border-radius: 4px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      font-size: 20px;
    }
    .container h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #333333;
      font-size: 20px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #555555;
    }
    .form-group input[type="text"],
    .form-group input[type="password"] {
      width: 100%;
      padding: 8px;
      border: 1px solid #cccccc;
      border-radius: 4px;
      font-size: 20px;
    }
    .form-group button {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 4px;
      font-size: 20px;
      color: #ffffff;
      background-color: #007bff;
      cursor: pointer;
    }
    .form-group button:hover {
      background-color: #0056b3;
    }
    .form-group .text-center {
      text-align: center;
    }
    .form-group .text-center a {
      color: #007bff;
      text-decoration: none;
    }
    .form-group .text-center a:hover {
      text-decoration: underline;
    }
    .reset-btn{
            margin-left: 275px;
            width: 30%;
            height: 4%;
            font-size: 20px;
            background-color: #007bff;
            }
    .header {
         background-color: white;
         color: #ffffff;
         padding: 0px;
         margin-bottom: 20px;
         margin-top: 0px;
       }
       .logo {
         display: inline-block;
         vertical-align: middle;
         margin-right: 50px;
       }
       .logo img {
         height: 70px;
       }
       .header-content {
         display: flex;
         justify-content: space-between;
         align-items: center;
       }

       .navigation {
         list-style: none;
         margin: 0;
         padding: 0;
       }

       .navigation li {
         display: inline-block;
         margin-right: 20px;
       }

       .navigation li:last-child {
         margin-right: 15px;
       }

       .navigation li a {
         color: black;
         text-decoration: none;
         font-size: 20px;
       }

       .navigation li a:hover {
         text-decoration: underline;
       }

       .footer {
             background-color: white;
             color: #ffffff;
             padding: 20px;
             margin-top: 455px;
           }
           .footer-content {
             display: flex;
             justify-content: space-between;
             align-items: center;
           }
           .footer-text {
             font-size: 14px;
             color: black;
             text-align: center;
           }
           body {
             background-image: url('img/background.jpg');
             background-repeat: no-repeat;
             background-attachment: fixed;
             background-size: cover;
           }
  </style>
</head>
<body>
     <div class="header">
        <div class="header-content">
          <div class="logo">
            <img src="img/logo.png" alt="Logo">
          </div>
          <ul class="navigation">
            <li><a href="#">About</a></li>
            <li><a href="#">Find Us</a></li>
          </ul>
        </div>
      </div>

  <div class="container">
    <h2>Login</h2>
    <form method="post" action="/login">
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="form-group">
        <button type="submit">Login</button>
      </div>
      <div class="form-group text-center">
        <a href="/forget">Forgot password?</a>

        <input type="reset" value="Reset" class="reset-btn">
      </div>
    </form>
  </div>
  <footer class="footer">
      <div class="footer-content">
        <p class="footer-text">© 2023 Company Name. All rights reserved.</p>
      </div>
    </footer>
  <script>
      document.getElementById("login").addEventListener("reset", function(event) {
        event.preventDefault();
        this.reset();
      });
    </script>
</body>
</html>
