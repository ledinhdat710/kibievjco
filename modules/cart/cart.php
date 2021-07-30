<html class="no-js" lang="vi">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0,
      user-scalable=0" name="viewport">
    <meta name="revisit-after" content="1 day">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="HandheldFriendly" content="true">
    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/animate/animate.min.css">

    <link rel="stylesheet" href="plugins/fontawesome/all.css">

    <link href="plugins/webfonts/font.css" rel="stylesheet">
    <link rel="stylesheet" href="plugins/owl.carousel/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="plugins/owl.carousel/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />
    <style>
        #navbarNav a {
            text-transform: none;
            font-size: 15px;
        }
    </style>
</head>

<body>
    <!--  detail product -->
    <main class="">

        <div id="product" class="productDetail-page">

            <!--  menu header seo -->
            <div class="breadcrumb-shop">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
                            <ol class="breadcrumb breadcrumb-arrows">
                                <li>
                                    <a href="index.php">
                                        <span">Trang chủ</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span>Sản phẩm</span>
                                    </a>
                                </li>
                                <li class="active">
                                    <span>
                                        <span itemprop="name">Giỏ hàng</span>
                                    </span>
                                    <meta itemprop="position" content="3">
                                </li>

                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <!-- cart -->
            <div class="container">
                <div id="my-cart">
                    <div class="row">
                        <div class="cart-nav-item col-lg-7 col-md-7 col-sm-12">Thông tin sản phẩm</div>
                        <div class="cart-nav-item col-lg-2 col-md-2 col-sm-12">Tùy chọn</div>
                        <div class="cart-nav-item col-lg-3 col-md-3 col-sm-12">Giá</div>
                    </div>

                    <?php
                    if (isset($_SESSION['cart'])) {
                        if (isset($_POST['use_gift'])) {
                            $sql = "Update gift_code set status=-1 WHERE NOW() > end_at AND status=1";
                            mysqli_query($conn, $sql);

                            $code_value = $_POST['code_value'];
                            $sql = "SELECT * FROM gift_code WHERE '$code_value'=gift_code and status='1'";
                            $voucher = mysqli_fetch_array(mysqli_query($conn, $sql));
                            if (isset($voucher)) {
                                $_SESSION['voucher']['value_code'] = $voucher['gift_code'];
                                $_SESSION['voucher']['type'] = $voucher['type'];
                                $_SESSION['voucher']['amount'] = $voucher['amount'];
                            }
                        }
                        if (isset($_POST['sbm'])) {
                            foreach ($_POST['quantity'] as $prd_id => $quantity) {
                                $_SESSION['cart'][$prd_id] = $quantity;
                            }
                        }
                        $arr_id = array();
                        foreach ($_SESSION['cart'] as $prd_id => $quantity) {
                            $arr_id[] = $prd_id;
                        }
                        $str_id = implode(', ', $arr_id);
                    ?>

                        <form method="post">
                            <?php
                            $sql = "SELECT * FROM product
			WHERE prd_id IN ($str_id)";
                            $query = mysqli_query($conn, $sql);

                            $total_price = 0;
                            $total_price_all = 0;
                            while ($row = mysqli_fetch_array($query)) {
                                if (isset($voucher) && $voucher['type'] == '%') {
                                    $total_price = $_SESSION['cart'][$row['prd_id']] * $row['prd_price'] * (100 - $voucher['amount']) / 100;
                                } else {
                                    $total_price = $_SESSION['cart'][$row['prd_id']] * $row['prd_price'];
                                }
                                $total_price_all += $total_price;
                            ?>
                                <div class="cart-item row">
                                    <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                                        <img src="admin/img/products/<?php echo $row['prd_image']; ?>">
                                        <h4><?php echo $row['prd_name']; ?></h4>
                                    </div>

                                    <div class="cart-quantity col-lg-2 col-md-2 col-sm-12">
                                        <input type="number" id="quantity" class="form-control form-blue quantity" name="quantity[<?php echo $row['prd_id']; ?>]" value="<?php echo $_SESSION['cart'][$row['prd_id']]; ?>" min="1">
                                    </div>

                                    <div class="cart-price col-lg-3 col-md-3 col-sm-12 "><b><?php echo number_format($total_price); ?> đ</b>
                                        <a onclick="return thongbao();" href="modules/cart/del_cart.php?prd_id=<?php echo $row['prd_id']; ?>" class="btn btn-danger">Xóa<i class="glyphicon glyphicon-remove"></i></a>
                                    </div>
                                </div>
                            <?php
                            }
                            ?>

                            <div class="row">
                                <div class="cart-thumb col-lg-4 col-md-4 col-sm-4">
                                    <button id="update-cart" class="btn btn-success" type="submit" name="sbm">Cập nhật giỏ hàng</button>
                                </div>

                                <form class="cart-thumb col-lg-3 col-md-3 col-sm-8" action="" method="post">
                                    <div style="margin-top: 20px;" class="row">
                                        <input style="margin-top: 5px;" placeholder="GIFT CODE" type="text" name="code_value" class="form-control col-lg-6 col-md-6 col-sm-6">
                                        <button name="use_gift" type="submit" class=" col-lg-4 col-md-4 col-sm-3"> ÁP DỤNG </button>
                                    </div>
                                </form>

                                <div class="cart-total col-lg-2 col-md-2 col-sm-12"><b>Tổng cộng:</b></div>
                                <div class="cart-price col-lg-3 col-md-3 col-sm-12"><b><?php echo number_format((isset($voucher) && $voucher['type'] == 'vnd') ? $total_price_all - $voucher['amount'] : $total_price_all); ?>đ</b></div>
                            </div>
                        </form>

                </div>
                <!--	End Cart	-->
            <?php
                    } else {
            ?>
                <div class="alert alert-danger" style="margin-top:15px;">Hiện không có sản phẩm nào trong giỏ hàng của bạn !</div>
            <?php
                    }
            ?>
            </div>
            <!-- end cart -->
            <?php if (isset($_POST['sbm_order'])) {
                $code_value = $_SESSION['voucher']['value_code'];
                $amount = $_SESSION['voucher']['amount'];
                $type = $_SESSION['voucher']['type'];
                $sql = "Update gift_code set status=0  WHERE gift_code='$code_value'";
                mysqli_query($conn, $sql);
                $order_name = $_POST['order_name'];
                $order_phone = $_POST['order_phone'];
                $order_mail = $_POST['order_mail'];
                $order_add = $_POST['order_add'];
                $order_note = $_POST['order_note'];

                $sql = "SELECT * FROM product WHERE prd_id IN ($str_id)";
                $query = mysqli_query($conn, $sql);
                $total_price = 0;
                $total_price_all = 0;
                $total_discount = 0;
                if($type == 'vnd'){
                    $total_discount = $amount/mysqli_num_rows($query);
                }

                foreach ($query as $row_order) {
                    if ($type == '%') {
                        $total_price = $_SESSION['cart'][$row_order['prd_id']] * $row_order['prd_price'] * (100 - $amount) / 100;
                    } else {
                        $total_price = $_SESSION['cart'][$row_order['prd_id']] * $row_order['prd_price'];
                    }
                    $total_price_all += $total_price;
                    $prd_name = $row_order['prd_name'];
                    $prd_qtt =  $_SESSION['cart'][$row_order['prd_id']];
                    $sql = "INSERT INTO orders(order_name, order_phone , order_mail , order_add , order_note , price , prd_name , prd_qtt )
			VALUES('$order_name', '$order_phone', '$order_mail','$order_add', '$order_note','$total_price','$prd_name' , '$prd_qtt')";
                    $query = mysqli_query($conn, $sql);
                }
                header("location:index.php?/=success");
                unset($_SESSION['cart']);
            }
            ?>

            <!--	Customer Info	-->
            <div class="container">
                <div id="customer">
                    <form role="form" method="post" enctype="multipart/form-data">
                        <div class="row">
                            <div id="customer-name" class="col-lg-4 col-md-4 col-sm-12">
                                <input placeholder="Họ và tên (bắt buộc)" type="text" name="order_name" class="form-control" required>
                            </div>
                            <div id="customer-phone" class="col-lg-4 col-md-4 col-sm-12">
                                <input placeholder="Số điện thoại (bắt buộc)" type="text" name="order_phone" class="form-control" required>
                            </div>
                            <div id="customer-mail" class="col-lg-4 col-md-4 col-sm-12">
                                <input placeholder="Email (bắt buộc)" type="text" name="order_mail" class="form-control" required>
                            </div>
                            <div id="customer-add" class="col-lg-12 col-md-12 col-sm-12">
                                <input placeholder="Địa chỉ nhà riêng hoặc cơ quan (bắt buộc)" type="text" name="order_add" class="form-control" required>
                            </div>
                            <div id="customer-add" class="col-lg-12 col-md-12 col-sm-12">
                                <input placeholder="Ghi chú" type="text" name="order_note" class="form-control">
                            </div>

                            <button name="sbm_order" type="submit" class="btn btn-success"> Đặt Hàng </button>


                        </div>
                    </form>


                </div>
            </div>
            <!--	End Customer Info	-->
            <!-- zoom -->
            <div class="product-zoom11">
                <div class="product-zom">
                    <div class="divclose">
                        <i class="fa fa-times-circle"></i>
                    </div>
                    <div class="owl-carousel owl-theme owl-product1">

                        <div class="item"><img src="images/banner1.jpg" alt="">
                        </div>
                        <div class="item"><img src="images/banner1.jpg" alt="">
                        </div>
                        <div class="item"><img src="images/banner1.jpg" alt="">
                        </div>
                    </div>



                </div>
            </div>
        </div>

    </main>
    <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
    <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="plugins/bootstrap/popper.min.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
    <script src="plugins/uikit/uikit.min.js"></script>
    <script src="plugins/uikit/uikit-icons.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/home.js"></script>
    <script>
        function thongbao() {
            var x = confirm("Bạn chắc chắn muốn xóa ?");
            if (x)
                return true;
            else
                return false;
        }
    </script>

</body>

</html>