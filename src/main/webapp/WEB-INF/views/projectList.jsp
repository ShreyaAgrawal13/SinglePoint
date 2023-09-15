<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
  <title>User Details</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      font-size: 20px;
    }
    h2{
    text-align: center;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      font-size: 20px;
    }
    table th,
    table td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    table th {
      background-color: #f2f2f2;
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
                   margin-left: 1050px;
                   margin-top: 20px;

               }
  </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <br>
    <br>
    <br>
    <br>

  <h2>Project List</h2>
<br>
  <table>
    <tr>
      <th>Project Name</th>
      <th>PM/SM</th>
      <th>Tech Leads</th>
      <th>Testing Leads</th>
      <th>Milestones Achieved</th>
      <th>Start Date</th>
      <th>Completion Date</th>
      <c:if test="${user.userRoles == 'ADMIN'}">
      <th>Actions</th>
      </c:if>
    </tr>
    <c:forEach items="${projects}" var="f">
    <tr>
      <td>${f.projectName}</td>
      <td>${f.pmsm}</td>
      <td>${f.techLeads}</td>
      <td>${f.testingLeads}</td>
      <td>${f.milestonesAchieved}</td>
      <td>${f.startDate}</td>
      <td>${f.completionDate}</td>
      <c:if test="${user.userRoles == 'ADMIN'}">
      <td><a href="/delete/${f.id}" >Delete</a>
       <p>  </p>       <a href="/edit/${f.id}" >Edit</a></td>
       </c:if>

    </tr>
    </c:forEach>


  </table>
  <c:if test="${user.userRoles == 'ADMIN'}">
  <a href="/addProject" class="button">Add new Project</a>
  </c:if>
</body>
</html>
