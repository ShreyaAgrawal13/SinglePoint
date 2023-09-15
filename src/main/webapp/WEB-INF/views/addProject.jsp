<html>
<head>
  <title>Add Project</title>
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
      .form-group input[type="text"],
      .form-group input[type="date"],
      .form-group input[type="password"]
       .form-group input[type="password"]
       .form-group input[type="password"]
       .form-group input[type="password"]
       .form-group input[type="password"]{
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
<jsp:include page="navbar.jsp" />
    <br>
    <br>
    <br>
    <br>
    <div class="container">
  <h1>Add Project</h1>

  <form action="/addProject" method="POST">
  <div class="form-group">
    <label for="name">Project Name</label>
    <input type="text" id="name" name="projectName" value="${projects.projectName}" required>
  </div>
  <div class="form-group">
    <label for="pmsm">PM/SM</label>
        <input type="text" id="pmsm" name="pmsm" value="${projects.pmsm}" required>
    </div>
    <div class="form-group">
    <label for="tech">Tech Leads</label>
        <input type="text" id="tech" name="techLeads" value="${projects.techLeads}" required>
    </div>
    <div class="form-group">
    <label for="testing">Testing Leads</label>
        <input type="text" id="testing" name="testingLeads" value="${projects.testingLeads}" required>
    </div>
    <div class="form-group">
    <label for="milestone">Milestones Achieved</label>
        <input type="text" id="milestone" name="milestonesAchieved" value="${projects.milestonesAchieved}" required>
    </div>
    <div class="form-group">
    <label for="startdate">Start Date</label>
        <input type="date" id="startdate" name="startDate" value="${projects.startDate}" required>
    </div>
    <div class="form-group">
    <label for="completiondate">Planned Completion Date</label>
        <input type="date" id="completiondate" name="completionDate" value="${projects.completionDate}" required>
    </div>
    <div class="form-group">
    <input type="submit" value="Submit" class="submit-btn">
    </div>
  </form>
  </div>
</body>
</html>