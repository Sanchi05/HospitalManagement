<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://kit.fontawesome.com/7f35d14aff.js" crossorigin="anonymous"></script>
    <title>Pateint's Prescription</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div>
    <div class="container">
        <h1 class="text-center">Prescription</h1>
    </div>

    <div class="container" id="presct">
        <div class="card">
            <div class="card-header row g-2">
                <div class="col col-sm-6">
                    <p class="fs-4 p-0">Patient Name: ${pres.p_name}</p>
                </div>
                <div class="col col-sm-6 ">
                    <p class="fs-4 p-0">Patient Id: ${pres.p_id}</p>
                </div>
            </div>
            <ul class="list-group list-group-flush fs-4">
                <li class="list-group-item">Doctor: </li>
                <li class="list-group-item">Symptons: ${pres.p_symptoms}</li>
                <li class="list-group-item">Diagnosis: ${pres.p_diagnosis}</li>
                <li class="list-group-item">Dont's: ${pres.p_donts}</li>
                <li class="list-group-item">Do's: ${pres.p_dos}</li>
                <li class="list-group-item">Medicines and Dosage: ${pres.p_meds}</li>
                <li class="list-group-item">FOllow Up Date: ${pres.p_followup}</li>
                <li class="list-group-item">Fees: ${pres.p_fees}</li>


            </ul>
        </div>
    </div>
    <div class="container text-center">
        <button type="button" class="btn btn-outline-dark btn-lg w-50 m-4 fs-4 fw-bold" onclick="printPrescription()">Print Prescription</button>
    </div>
</div>






<script src="slider_pres.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>
</html>