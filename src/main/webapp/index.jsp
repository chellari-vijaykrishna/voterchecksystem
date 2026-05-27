<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Voter Eligibility Check</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="bg-animation"></div>

<div class="container page-container">
    <div class="row justify-content-center align-items-center min-vh-100">

        <div class="col-lg-7">

            <div class="glass-card shadow-lg">

                <div class="text-center mb-4">
                    <h1 class="main-title">Voter Eligibility Check</h1>
                    <p class="sub-title">
                        Verify your voting eligibility according to Indian Constitution rules.
                    </p>
                </div>

                <form action="checkEligibility" method="post" target="_blank">

                    <div class="mb-4">
                        <label class="form-label">Full Name</label>
                        <input type="text"
                               name="name"
                               class="form-control custom-input"
                               placeholder="Enter your full name">
                    </div>

                    <div class="mb-4">
                        <label class="form-label">
                            Age <span class="text-danger">*</span>
                        </label>

                        <input type="number"
                               name="age"
                               class="form-control custom-input"
                               placeholder="Enter your age"
                               required>
                    </div>

                    <div class="mb-4">
                        <label class="form-label">Gender</label>

                        <select name="gender" class="form-select custom-input">
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>

                    <div class="text-center mt-5">
                        <button type="submit" class="btn submit-btn">
                            Check Eligibility
                        </button>
                    </div>

                </form>

            </div>

        </div>

    </div>
</div>

</body>
</html>
