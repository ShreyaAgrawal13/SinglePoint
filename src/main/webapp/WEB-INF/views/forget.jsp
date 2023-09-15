<html>
<head>
  <title>Forgot Password</title>
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
    }
    .form-group input[type="email"] {
      width: 100%;
      padding: 8px;
      font-size: 16px;
    }
    .form-group .submit-btn {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
    }
    .form-group .submit-btn:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Forgot Password</h2>
    <form action="/forget" method="POST">
      <div class="form-group">
        <label for="username">Email:</label>
        <input type="email" id="username" name="username" placeholder="Enter your email" required>
      </div>
      <div class="form-group">
        <button class="submit-btn" type="submit">Submit</button>

      </div>
    </form>
  </div>
</body>
</html>