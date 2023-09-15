<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Reset Password</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .container {
      width: 400px;
      margin: 0 auto;
      padding-top: 100px;
    }
    h2 {
      text-align: center;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
      font-size: 20px;
    }
    .form-group input[type="password"] {
      width: 100%;
      padding: 8px;
      font-size: 20px;
    }
    .form-group .submit-btn {
      width: 100%;
      padding: 10px;
      font-size: 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
    }
    .form-group .submit-btn:hover {
      background-color: #45a049;
    }
    .complexity{
        text-align: center;
        font-size: 20px;
  </style>
</head>
<body>

  <div class="container">
    <h2>Reset Password</h2>
    <form action="/update" method="POST">
      <div class="form-group">
        <label for="password">New Password:</label>
        <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" placeholder="Enter your new password" required>
      </div>
      <div class="form-group">
        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="confirmpassword" placeholder="Confirm your new password" required>
      </div>
      <div class="form-group">
        <button class="submit-btn" type="submit">Submit</button>
      </div>
    </form>
  </div>
  <div class="complexity">
  <p>*Password should contain atleast 6 characters</p>
  <p>*Password should be Alphanumeric </p>
  <p>*Password should have atleast one uppercase and one lowercase character </p>
  </div>
  <script>
  var password = document.getElementById("password")
    , confirm_password = document.getElementById("confirmPassword");

  function validatePassword(){
    if(password.value != confirmPassword.value) {
      confirm_password.setCustomValidity("Passwords Don't Match");
    } else {
      confirmPassword.setCustomValidity('');
    }
  }

  password.onchange = validatePassword;
  confirmPassword.onkeyup = validatePassword;
  </script>
</body>
</html>