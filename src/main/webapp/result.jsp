<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Eligibility Result</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container py-5">

    <div class="result-card mx-auto shadow-lg">

        <div class="text-center">

            <h1 class="result-title">Eligibility Status</h1>

            <div class="user-box mt-4">
                <h4>Name : ${name}</h4>
                <h4>Age : ${age}</h4>
                <h4>Gender : ${gender}</h4>
            </div>

            <div class="status-box mt-4">
                <h2>${status}</h2>
                <p>${message}</p>
            </div>

            <a href="index.jsp" class="btn submit-btn mt-4">
                Check Again
            </a>

        </div>

    </div>

</div>

</body>
</html>
