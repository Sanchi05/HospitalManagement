<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="e">
<div class="bg-image"></div>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
    <!-- bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7ca9103238.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <title> Contact Us</title>
    <div class="bg-image"></div>
</head>

<body>
<!--Header-->
<div class="container-fluid nav justify-content-end nav1">
    <div class="navbar navbar-light ">
        <ul class="nav">
            <li class="nav-item navigation"><a href="#" class="nav-link text-center p-2 h-3">Home</a></li>
            <li class="nav-item navigation"><a href="contact.html" class="nav-link p-2 h-3">Contact Us</a></li>
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
                <form action="">
                    <div class="row">
                        <form class="row g-3">
                            <div class="col-md-6">
                                <label for="inputname" class="form-label">Full name</label>
                                <input type="text" class="form-control" id="inputname" placeholder="Full Name *">
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail" class="form-label">Email</label>
                                <input type="email" class="form-control" id="inputEmail" placeholder="Email *">
                            </div>
                            <div class="col-12">
                                <label for="inputAddress" class="form-label">Address</label>
                                <input type="text" class="form-control" id="inputAddress"
                                       placeholder="Where do you live?">
                            </div>


                            <div class="col-md-6">
                                <label for="inputState" class="form-label">City</label>
                                <select id="inputState" class="form-select">
                                    <option selected>Choose...</option>
                                    <option>Pune</option>
                                    <option>Mumbai</option>
                                    <option>Satara</option>
                                    <option>Nashik</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="inputmessage" class="form-label">Message Type: </label>
                                <select id="inputmessage" class="form-select">
                                    <option selected>Choose...</option>
                                    <option>Query</option>
                                    <option>Feedback</option>
                                    <option>Other</option>
                                </select>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    Subject:
                                    <input type="text" class="form-control" placeholder="Subject *">
                                </div>


                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        Message:
                                        <textarea class="form-control" rows="5" placeholder="Your Message *"></textarea>
                                    </div>
                                </div>


                                <div class="col-md-12 text-center">
                                    <button type="submit" class="btn btn-primary w-100 mt-3 mb-3">Submit <i
                                            class="fas fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </form>
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

