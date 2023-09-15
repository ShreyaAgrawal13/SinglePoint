<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>User Profile</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <style>
.container{
      font-family: Arial, sans-serif;
    }

    .container {
      width: 400px;
      margin: 0 auto;
      padding-top: 10px;
    }
    h2 {
      text-align: center;
    }

    .user-details {
      margin-top: 20px;
    }
    .user-details p {
      margin-bottom: 5px;
      font-weight: italic;
      font-size: 20px;

    }
            .button {
                display: inline-block;
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                text-align: center;
                font-size: 20px;
                padding: 10px 24px;
                text-decoration: none;
                cursor: pointer;
                transition-duration: 0.4s;
                margin-left: 100px;

            }
            .card {
              box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
              max-width: 400px;
              max-height: 500px;
              margin: auto;
              text-align: center;
              padding: 5px;
              margin-bottom: 2px;
            }

            .title {
              color: grey;
              font-size: 18px;
            }

  </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <br>
    <br>
    <br>
    <br>
<div class="card">
  <img src="data:image/jpeg;base64,${abc}" alt="Profile Image" style="width:100%, height:100%" >
  <h1>${s.firstName} ${s.middleName} ${s.lastName}</h1>
  <p class="title">${s.jobTitle}</p>
</div>
  <div class="container">

    <div class="user-details">
          <p>Email: ${s.username}</p>
          <p>Employee ID: ${s.employeeID}</p>
          <p>Date Of Joining: ${s.dateOfJoining}</p>
          <p>Project: ${s.project}</p>
          <p>LEAD/MANAGER: ${s.leadManager}</p>
          <p>Role: ${s.role}</p>
          <p>Gender: ${s.gender}</p>

    </div>
    <br>

    <a href="/profileImage" class="button">Edit Profile Image</a>

  </div>
</body>
</html>


