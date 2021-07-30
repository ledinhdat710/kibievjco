<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/animate/animate.min.css">
    <link rel="stylesheet" href="plugins/fontawesome/all.css">
    <link rel="stylesheet" href="plugins/webfonts/font.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- UIkit CSS -->
    <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />
    <link rel="stylesheet" href="css/sign.css">
    <style>
        #navbarNav a {
            text-transform: none;
            font-size: 15px;
        }
    </style>

</head>

<body>
    <!--Content-->
    <div class="content">
        <section class="signup">
            <div class="container">
                <div class="signin-left">
                    <div class="signin-right " id="a-sign">
                        <form action="">
                            <h2>Đăng nhập</h2>
                            <div class="username form-control1 ">
                                <input type="email" id="username" placeholder="Email">
                            </div>
                            <div class="password form-control1">
                                <input type="password" id="password" placeholder="Mật khẩu">
                                <!-- <div class="error"
                                    style="position: absolute; bottom: 0;background: #fff; padding:10px; border:1px solid #ccc; color: red">
                                    Please fill out this field </div> -->


                            </div>

                            <div class="recaptcha form-control1">This site is protected by reCAPTCHA and the Google <a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</div>
                            <div class="submit">
                                <p>Đăng nhập</p>

                            </div>
                            <div class="forgetpassword">
                                <p id="quenmk">Quên mật khẩu?</p>
                            </div>

                        </form>
                    </div>
                    <div class="signin-right " id="b-sign">
                        <form action="">
                            <div class="username form-control1 ">
                                <h2>Phục hồi mật khẩu</h2>
                            </div>
                            <div class="password form-control1">
                                <input type="text" id="password" placeholder="Mật khẩu">
                            </div>

                            <div class="recaptcha form-control1">This site is protected by reCAPTCHA and the Google <a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</div>
                            <div class="submit">
                                <input class="btn" type="submit" value="Gửi">
                                <div class="forgetpassword">
                                    <a href="" id="huy">Hủy</a>
                                </div>

                            </div>

                        </form>
                    </div>
                </div>
                <div class="signin-right">
                    <form action="">
                        <div class="firstname form-control1 ">
                            <input type="text" id="firstname" placeholder="Họ">
                        </div>
                        <div class="lastname form-control1">
                            <input type="text" id="lastname" placeholder="Tên">
                        </div>
                        <div class="sex form-control1">
                            <div class="female">

                                <input type="radio" id="female" checked name="sex">
                                <label for="female">Nữ</label>
                            </div>
                            <div class="male">

                                <input type="radio" id="male" name="sex">
                                <label for="male">Nam</label>
                            </div>
                        </div>
                        <div class="birthday form-control1">
                            <input type="text" id="birthday" placeholder="mm/dd/yyyy">
                        </div>
                        <div class="email form-control1">
                            <input type="email" id="email" placeholder="Email">
                        </div>
                        <div class="password form-control1">
                            <input type="password" id="password" placeholder="Password">
                        </div>
                        <div class="recaptcha form-control1">This site is protected by reCAPTCHA and the Google <a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</div>
                        <div class="submit">
                            <p>Đăng kí</p>

                        </div>
                        <div class="backto">
                            <a href="index.php"><i class="fa fa-long-arrow-alt-left"></i> Quay lại trang chủ</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>

    <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
    <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="plugins/bootstrap/popper.min.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
    <script src="js/home.js"></script>
    <script src="js/script.js"></script>
    <script src="plugins/uikit/uikit.min.js"></script>
    <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>