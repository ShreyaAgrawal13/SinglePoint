<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Add new Employee</title>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <style>
    *[role="form"] {
        max-width: 800px;
        padding: 15px;
        margin: 0 auto;
        border-radius: 0.3em;
        background-color: #f2f2f2;
    }
    body {
            font-family: Arial, sans-serif;
            font-size: 20px;
          }

    *[role="form"] h2 {
        font-family: 'Open Sans' , sans-serif;
        font-size: 40px;
        font-weight: 600;
        color: #000000;
        margin-top: 5%;
        text-align: left;
        text-transform: uppercase;
        letter-spacing: 4px;
    }
    .form-group .submit-btn {
          width: 90%;
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
    .upload{
        margin-left: 750px;
    }
    .upload-btn{
       width: 50%%;
                 padding: 10px;
                 font-size: 16px;
                 background-color: #4CAF50;
                 color: white;
                 border: none;
                 cursor: pointer;
    }
    .upload-btn:hover {
            background-color: #45a049;
            }
</style>

</head>
<body>
    <jsp:include page="navbar.jsp" />
        <br>
        <br>
        <br>
    <div class="container">
                <form class="form-horizontal" role="form" method="post" action="/UserRegistration">
                    <h2>Add New User/Employee</h2>
                    <div class="form-group">
                        <label for="firstName" class="col-sm-5 control-label">First Name*</label>
                        <div class="col-sm-9">
                            <input type="text" id="firstName" placeholder="First Name" class="form-control" autofocus name="firstName" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastName" class="col-sm-5 control-label">Middle Name</label>
                              <div class="col-sm-9">
                                      <input type="text" id="middleName" placeholder="Middle Name" class="form-control" autofocus name="middleName">                                            </div>
                               </div>
                    <div class="form-group">
                        <label for="lastName" class="col-sm-5 control-label">Last Name*</label>
                        <div class="col-sm-9">
                            <input type="text" id="lastName" placeholder="Last Name" class="form-control" autofocus name="lastName" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-5 control-label">Email*</label>
                        <div class="col-sm-9">
                            <input type="email" id="email" placeholder="Email" class="form-control" name= "email" required>
                        </div>
                    </div>

                    <div class="form-group">
                          <label for="joiningDate" class="col-sm-5 control-label">Date of Joining*</label>
                                 <div class="col-sm-9">
                                        <input type="date" id="joiningDate" class="form-control" name="dateOfJoining" required>
                                 </div>
                    </div>
                    <div class="form-group">
                        <label for="employeeID" class="col-sm-5 control-label">Employee ID*</label>
                        <div class="col-sm-9">
                            <input type="text" id="employeeId" placeholder="Employee ID" class="form-control" name="employeeID" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobTitle" class="col-sm-5 control-label">Job Title*</label>
                        <div class="col-sm-9">
                            <input type="text" id="jobTitle" placeholder="Job Title" class="form-control" name="jobTitle" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="role" class="col-sm-5 control-label">Role(LEAD/TEAM MEMBER)* </label>
                        <div class="col-sm-9">
                            <input type="text" id="role" placeholder="Role (LEAD/TEAM MEMBER)" class="form-control" name="role" required>
                        </div>
                    </div>
                     <div class="form-group">
                            <label for="project" class="col-sm-5 control-label">Project*</label>
                        <div class="col-sm-9">
                            <input type="text" id="project" placeholder="Project" class="form-control" name="project" required>
                        </div>
                    </div>
                    <div class="form-group">
                                                <label for="leadManager" class="col-sm-5 control-label">LEAD/MANAGER*</label>
                                            <div class="col-sm-9">
                                                <input type="text" id="leadManager" placeholder="LEAD/MANAGER" class="form-control" name="leadManager" required>
                                            </div>
                                        </div>

                    <div class="form-group">
                    <label for="userRole" class="col-sm-5 control-label">User Role*</label>
                    <div class="col-sm-9">
                    <select name = "userRoles" class="form-control" type="text" id="userRole" required>
                                <option value = "USER" selected>USER</option>
                                <option value = "ADMIN">ADMIN</option>

                             </select>
                         </div>
                         </div>

                    <div class="form-group">
                        <label class="control-label col-sm-5">Gender*</label>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label class="radio-inline">
                                        <input type="radio" id="femaleRadio" value="Female" name="gender">Female
                                    </label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="radio-inline">
                                        <input type="radio" id="maleRadio" value="Male" name="gender">Male
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div> <!-- /.form-group -->
                    <div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
                            <span class="help-block">*Required fields</span>
                        </div>
                    </div>
                    <div class="form-group">
                    <button type="submit" class="submit-btn">Register</button>
                    </div>
                </form>
            </div>
            <div class="upload">
            <h3>To upload file in bulk<h3>
            <button class="upload-btn"><a href="/uploadCSV">Upload</a></button>
            </div>
            <br>
</body>
</html>