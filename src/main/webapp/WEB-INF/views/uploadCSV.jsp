<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Upload CSV file</title>
<style>
        .upload-form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
        }

        .upload-form label {
            display: block;
            margin-bottom: 10px;
        }

        .upload-form input[type="file"] {
            display: none;
        }

        .upload-form .upload-btn {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition-duration: 0.4s;
        }

        .upload-form .upload-btn:hover {
            background-color: #45a049;
        }

        .uploaded-image {
            max-width: 300px;
            margin: 20px auto;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <br>
    <br>
    <br>
    <br>
<div class="upload-form">
        <h2>Upload CSV file</h2>
        <form id="file-upload" action="/uploadCSV" method="post" enctype="multipart/form-data">
            <label for="file-input">Select a file</label>
            <input type="file" id="file-input" name="">
            <button type="submit" class="upload-btn">Upload</button>
        </form>
        <div id="uploaded-image-container"></div>
    </div>
</form>
</body>
</html>