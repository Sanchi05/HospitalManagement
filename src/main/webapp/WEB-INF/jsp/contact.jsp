<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<div class="bg-image"></div>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
    <!-- bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7ca9103238.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Contact Us </title>
    <div class="bg-image"></div>
</head>
<body>
<!--Header-->
<div class="container-fluid nav justify-content-end nav1">
    <div class="navbar navbar-light ">
        <ul class="nav">
            <li class="nav-item navigation"><a href="#" class="nav-link text-center p-2 h-3">Home</a></li>
            <li class="nav-item navigation"><a href="/contact" class="nav-link p-2 h-3">Contact Us</a></li>
            <li class="nav-item navigation"><a href="Login1.html" class="nav-link p-2 h-3">Login</a></li>
        </ul>
    </div>
</div>

<!--Breadcrumb link -->
<section class="breadcrumbs-section">
    <div class="container p-1 p-sm-3">
        <div class="row">
            <div class="col-12">
                <h2>Contact Us</h2>
                <ol class="breadcrumb"> <!-- where exactly are you on website-->
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Contact Us</li>
                </ol>
            </div>
        </div>
    </div>
</section>


<!-- Query form -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <p>Send us your queries / feedback to us. We will get back to you as soon as possible.</p></div>
        </div>
    </div>
</section>


<section class="form-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <%--@elvariable id="cont" type=""--%>
                <form:form action="/contact" method="post" modelAttribute="cont">
                    <div class="row">
                        <form class="row g-3">
                            <div class="col-md-6">
                                <label for="Fullname" class="form-label">Full Name</label>
                                <form:input path="Fullname" type="text" class="form-control" id="inputname"
                                            placeholder="Full name *"/>

                            </div>

                            <div class="col-12">
                                <label for="Email" class="form-label">Email</label>
                                <form:input path="Email" type="email" class="form-control" id="inputEmail"
                                            placeholder="Email *"/>
                            </div>
                            <div class="col-12">

                                <label for="Address" class="form-label">Address</label>
                                <form:input path="Address" type="text" class="form-control" id="inputAddress"
                                            placeholder="Where do you live?"/>
                            </div>
                            <div class="col-md-6">
                                <label for="City" class="form-label">City</label>
                                <select id="exampleSelect1" class="form-select">
                                    <option selected>Choose...</option>
                                    <option>Pune</option>
                                    <option>Mumbai</option>
                                    <option>Satara</option>
                                    <option>Nashik</option>
                                </select>
                                <form:input path="City"/>
                            </div>
                            <div class="col-md-6">

                                <label for="MessageType" class="form-label">Message Type: </label>
                                <select id="inputmessage" class="form-select">
                                    <option selected>Choose...</option>
                                    <option>Query</option>
                                    <option>Feedback</option>
                                    <option>Other</option>
                                </select>
                                <form:input path="MessageType"/>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">

                                    <label for="Subject" class="form-label">
                                        Subject: </label>
                                    <form:input path="Subject" type="text" class="form-control"
                                                placeholder="Subject *"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">

                                    <label for="Message" class="form-label">
                                        Message: </label>
                                    <form:input path="Message" class="form-control" rows="5"
                                                placeholder="Your Message *"/>
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary w-100 mt-3 mb-3">Submit <i
                                        class="fas fa-paper-plane"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </form:form>
            </div>


            <!-- Contact Details -->
            <div class="col-md-6 address">
                <h5>Call Us / WhatsApp</h5>
                <p><a href="tel:+919090909090"><i class="fas fa-phone"></i> +(91) 9090909090 </a><br></p>
                <h5>Email / Website</h5>
                <p><a href="hospital@gmail.com">
                    <i class="fas fa-envelope"></i>hospital@gmail.com</a><br>
                    <a href="https://hospital.com"><i class="fas fa-globe"></i></i> www.hospital.com</a></p>
                <h5>Working hours</h5>
                <p>Mon - Fri : 9am - 6pm(IST)</p>
                <h5>Address</h5>
                <p>Wakdewadi, Pune-411004 Maharashtra</p>
            </div>
        </div>
    </div>
</section>

<section class="rounded">
    <div class="container-fluid">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3782.7408669711504!2d73.85000919999999!
        3d18.5406087!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c084cd4214e1%3A0x7fa97631545bccea!2s
        Wakadewadi!5e0!3m2!1sen!2sin!4v1653736346743!5m2!1sen!2sin" width="100%" height="300px" frameborder="0"
                style="border:0"></iframe>
    </div>
</section>
</body>
</html>