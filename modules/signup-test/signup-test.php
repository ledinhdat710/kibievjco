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
                <div class="signin-left" style="margin-top:10px">
                    <div class="sign-title">
                        <h3>Hãy đăng ký nhận sản phẩm dùng thử của bỉm KOREMOM ngay hôm nay để bé yêu và bạn có những
                            trải nghiêm thật thú vị như chưa từng có. KOREMOM nhãn hiệu bỉm số 1 được các mẹ Việt Nam
                            tin dùng!
                        </h3>
                        <h3> Điều khoản & Điều kiện:

                            Mỗi bé chỉ nhận sản phẩm dùng thử của bỉm Koremom 1 lần. Những lần lặp lại không được chấp
                            nhận.

                            Những địa chỉ do các Anh/Chị đăng ký trong phần điền thông tin bên dưới sẽ là địa chỉ chúng
                            tôi giao sản phẩm dùng thử của bỉm Koremom qua đường bưu điện. Do đó, các địa chỉ không rõ
                            ràng hoặc chưa hoàn tất sẽ không có giá trị.

                            Nếu bạn gặp bất kì khó khăn nào, vui lòng liên hệ qua địa chỉ email: cskhkoremom@gmail.com
                        </h3>
                    </div>
                </div>
                <div id="form" class="signin-right">
                    <?php
                    if (isset($_POST['sbm'])) {
                        $signup_name = $_POST['signup_name'];
                        $signup_birthday = $_POST['signup_birthday'];
                        $signup_phone = $_POST['signup_phone'];
                        $signup_add = $_POST['signup_add'];
                        $signup_weight = $_POST['signup_weight'];
                        $signup_size = $_POST['signup_size'];
                        $signup_note = $_POST['signup_note'];


                        $sql = "INSERT INTO signup_test(signup_name , signup_birthday , signup_phone , signup_add , signup_weight , signup_size , signup_note)
                                    VALUES('$signup_name' , '$signup_birthday' , '$signup_phone' , '$signup_add' , '$signup_weight' , '$signup_size' , '$signup_note')";
                        $query = mysqli_query($conn, $sql);
                    }
                    ?>
                    <form role="form" method="post" enctype="multipart/form-data">
                        <div class="firstname form-control1 ">
                            <input name="signup_name" type="text" placeholder="Họ và tên bố mẹ">
                        </div>
                        <div class="birthday form-control1">
                            <input name="signup_birthday" type="date" id="birthday" placeholder="mm/dd/yyyy">
                        </div>
                        <div class="email form-control1">
                            <input name="signup_phone" type="text" placeholder="Điện thoại">
                        </div>
                        <div class="email form-control1">
                            <input name="signup_add" type="text" placeholder="Địa chỉ">
                        </div>
                        <div class="email form-control1">
                            <input name="signup_weight" type="text" placeholder="Chiều cao cân nặng của bé">
                        </div>
                        <div class="email form-control1">
                            <input name="signup_size" type="text" placeholder="Kích cỡ bỉm theo yêu cầu">
                        </div>
                        <div class="message form-control1">
                            <input name="signup_note" type="text" id="message" placeholder="Message">
                        </div>

                        <button style="border-radius:15px" type="submit" name="sbm" class="btn btn-success">Đăng kí mẫu nhận thử</button>
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