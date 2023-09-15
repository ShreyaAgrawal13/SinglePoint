<html>
<head>
<title>Home Page</title>
<style>
#sec2-container
{
    width: 100%;
    display: block;
    margin-bottom: 10px;
}
#right
{
    width: 50%;
    height: 97%;
    float: left;
    margin-left: 5px;
}
.article1{
    height: 51%;
        margin-bottom: 10px;
        background-color: #DBDDDD;

        justify-content: left;

        font-family: Arial, Helvetica, sans-serif;
        color:#2C17A2;
        overflow: hidden;
        padding: 10px;
}

#left
{
    width: 49%;
    height: 97%;
    float: left;
    margin-left: 10px;
}
.article
{
    height: 34%;
    margin-bottom: 10px;
    background-color: #DBDDDD;

    justify-content: left;

    font-family: Arial, Helvetica, sans-serif;
    color:#2C17A2;
    overflow: hidden;
    padding: 10px;
}
.article p{
color: black;
font-size: 25px;
}

.article ul{
color: black;
}

.article1 ul{
color: black;
font-size: 25px;

</style>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <br>
    <br>
    <br>
    <br>
    <div id="sec2-container">
         <div id="left">
               <div class="article" id="p1">
                  <h2>Organization Details</h2>
                    <br>
                <p> Hays Business Solutions, a subsidiary of Hays Plc, aligned to the UK and Ireland was
                 established in 2009 primarily to provide back end services to various specialisms in Hays UK,
                    with a view that will allow, its front end consultants to stay in the market ahead of
                       competition and be able to give the required mind share to its key customers in providing
                   quality resources and best of human capital.
              </p>
              <p>
              HBS is responsible to provide business value through IT process and technology innovations.
                IT teams are core product innovation teams for Hays businesses where focus is on best-in-class
              technology processes to get quick and fast business applications.
              </p>
              <p>
              The Operations team delivers user-friendly, cost-effective, and expert administrative services
              to support the UK Business. The team supports various business processes and acts as enabler to the business.
              </p>
        </div>
         <div class="article" id="p2">
             <h2>Birthdays in Month</h2>
              <br>
              <ul id="birthdayList"></ul>
             <script>
              // Sample birthday data for July
                                            var birthdays = [
                                              { name: "John Doe", date: "2023-07-05" },
                                              { name: "Jane Smith", date: "2023-07-12" },
                                              { name: "Mike Johnson", date: "2023-07-18" },
                                              // Add more birthday objects as needed
                                            ];

                                            // Function to display birthdays in the specified month
                                            function displayBirthdaysInMonth(month) {
                                              var birthdayList = document.getElementById("birthdayList");
                                              birthdayList.innerHTML = ""; // Clear previous content

                                              // Loop through the birthdays and check if they fall in the specified month
                                              for (var i = 0; i < birthdays.length; i++) {
                                                var birthday = birthdays[i];
                                                var birthdayDate = new Date(birthday.date);

                                                // Check if the birthday falls in the specified month
                                                if (birthdayDate.getMonth() === month - 1) {
                                                  var listItem = document.createElement("li");
                                                  listItem.textContent = birthday.name + " - " + birthday.date;
                                                  birthdayList.appendChild(listItem);
                                                }
                                              }
                                            }

                                            // Call the function with the desired month (1 for January, 2 for February, and so on)
                                            displayBirthdaysInMonth(7);
                                          </script>
                                    </div>
                                    <div class="article" id="p3">
                                        <h2>Achievements</h2>

                                    </div>
                                </div>
                <div id="right">
                    <div class="article1" id="pp1">
                        <h2>Annual Holidays</h2>

                    </div>
                    <div class="article1" id="pp2">
                          <h2>Technologies Used</h2>
                          <br>
                    <ul style="list-style-type:circle">
                    <li>Spring Boot</li>
                    <li>Angular JS</li>
                    <li>Dot Net</li>
                    <li>DevOps</li>
                    <li>Java</li>
                    <li>Full Stack</li>
                    <li>React</li>
                    <li>Database</li>

                    </ul>
                    </div>
                </div>


            </div>
</body>
</html>