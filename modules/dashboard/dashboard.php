<div class="container">
    <div class="hot_sp" style="padding-bottom: 10px;">
        <h2 style="text-align:center;padding-top: 10px">
            <a style="font-size: 28px;color: black;text-decoration: none" href="">Sản phẩm khuyến mãi</a>
        </h2>
        <div class="view-all" style="  text-align:center;padding-top: -10px;">
            <a style="color: black;text-decoration: none" href="">Xem thêm</a>
        </div>
    </div>
</div>
<?php
$sql = "SELECT * FROM product
    WHERE cat_id = 2
		ORDER BY prd_id DESC
		";
$query = mysqli_query($conn, $sql);
?>
<!--Product-->
<div class="container" style="padding-bottom: 50px;">
    <div class="row">
        <?php while ($row = mysqli_fetch_array($query)) { ?>
            <div class="fix-col col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="product-block">
                    <div class="product-img fade-box">
                        <a href="index.php?/=detailproduct&prd_id=<?php echo $row['prd_id']; ?>" title="<?php echo $row['prd_name'] ?>" class="img-resize">
                            <img src="admin/img/products/<?php echo $row['prd_image']; ?>" alt="<?php echo $row['prd_name'] ?>" class="lazyloaded">
                            <img src="admin/img/products/<?php echo $row['prd_image']; ?>" alt="<?php echo $row['prd_name'] ?>" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div>
                            <a style=" color: black;
              font-size: 14px;text-decoration: none;" href="index.php?/=detailproduct&prd_id=<?php echo $row['prd_id']; ?>" title="<?php echo $row['prd_name'] ?>" inspiration pack> <?php echo $row['prd_name']; ?>
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class=""><?php echo number_format($row['prd_price']); ?> đ</p>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>



    </div>
</div>

<section>
    <div class="content">
        <div class="container">
            <div class="hot_sp">
                <h2 style="text-align:center;">
                    <a style="font-size: 28px;color: black;text-decoration: none" href="">Tã quần cho bé</a>
                </h2>
                <div class="view-all" style="text-align:center;margin-bottom: 10px;">
                    <a style="color: black;text-decoration: none" href="">Xem thêm</a>
                </div>
            </div>
        </div>
        <!--Product-->
        <?php
        $sql_1 = "SELECT * FROM product
                WHERE cat_id = 1
		            ORDER BY prd_id DESC
		            ";
        $query_1 = mysqli_query($conn, $sql_1);
        ?>
    </div>
    <div class="container product" style="width: 100%;margin: auto;">
        <div class="owl-carousel owl-theme owl-product-setting">
            <?php while ($row = mysqli_fetch_array($query_1)) { ?>
                <div class="item">
                    <div class="">
                        <div class="product-block">
                            <div class="product-img fade-box">
                                <a href="index.php?/=detailproduct&prd_id=<?php echo $row['prd_id']; ?>" title="<?php echo $row['prd_name']; ?>" class="img-resize">
                                    <img src="admin/img/products/<?php echo $row['prd_image']; ?>" alt="<?php echo $row['prd_name']; ?>" class="lazyloaded">
                                    <img src="admin/img/products/<?php echo $row['prd_image']; ?>" alt="<?php echo $row['prd_name']; ?>" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                           font-size: 14px;text-decoration: none;" href="index.php?/=detailproduct&prd_id=<?php echo $row['prd_id']; ?>" title="<?php echo $row['prd_name']; ?>" inspiration pack>
                                        <?php echo $row['prd_name']; ?>
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class=""><?php echo number_format($row['prd_price']); ?> đ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>
<section class="">
    <div class="content">
        <div class="container">
            <div class="hot_sp">
                <h2 style="text-align:center;padding-top: 10px">
                    <a style="font-size: 28px;color: black;text-decoration: none" href="">Bài viết mới nhất</a>
                </h2>
                <br />
            </div>
        </div>
    </div>
    <!--New-->
    <div>

        <div class="container">

            <div class="row">
                <div class="col-md-4">
                    <div class="post_item">
                        <div class="post_featured">
                            <a href="#" title="Bỉm">
                                <img class="img-resize" style="padding-bottom:15px;" src="images/1.png" alt="Bỉm sữa tốt nhất cho con">
                            </a>
                        </div>
                        <div class="pro-text">
                            <span class="post_info_item">

                                Thứ Ba 11,06,2019

                            </span>
                        </div>
                        <div class="pro-text">
                            <h3 class="post_title">
                                <a style=" color: black;
                                  font-size: 18px;text-decoration: none;" href="#" inspiration pack>
                                    Bỉm sữa tốt nhất cho con
                                </a>
                            </h3>
                        </div>
                        <div style="text-align:center; padding-bottom: 30px;">
                            <span>Cuối tháng 5 , Bỉm sửa Koremom sale 50%</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="post_item">
                        <div class="post_featured">
                            <a href="#" title="Bỉm">
                                <img class="img-resize" style="padding-bottom:15px;" src="images/1.png" alt="Cuối tháng 5 , Bỉm sửa Koremom sale 50%">
                            </a>
                        </div>
                        <div class="pro-text">
                            <span class="post_info_item">

                                Thứ Ba 11,06,2019

                            </span>
                        </div>
                        <div class="pro-text">
                            <h3 class="post_title">
                                <a style=" color: black;
                                                  font-size: 18px;text-decoration: none;" href="#" inspiration pack>
                                    Bỉm Koremom , Thương hiệu Châu Á
                                </a>
                            </h3>
                        </div>
                        <div style="text-align:center; padding-bottom: 30px;">
                            <span>Là một trong những loại bỉm tốt nhất cho bé</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="post_item">
                        <div class="post_featured">
                            <a href="#" title="Bỉm">
                                <img class="img-resize" style="padding-bottom:15px;" src="images/1.png" alt="  Bỉm Koremom , Thương hiệu Châu Á">
                            </a>
                        </div>
                        <div class="pro-text">
                            <span class="post_info_item">

                                Thứ Ba 11,06,2019

                            </span>
                        </div>
                        <div class="pro-text">
                            <h3 class="post_title">
                                <a style=" color: black;
                                      font-size: 18px;text-decoration: none;" href="#" inspiration pack>
                                    Bỉm Koremom
                                </a>
                            </h3>
                        </div>
                        <div style="text-align:center; padding-bottom: 30px;">
                            <span>Thông thoáng sạch sẽ</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section wrapper-home-newsletter">
    <div class="container-fluid">
        <div class="content-newsletter">
            <h2>Đăng ký</h2>
            <p>Đăng ký nhận bản tin của Kibie để cập nhật những sản phẩm mới, nhận thông tin ưu đãi đặc biệt và thông
                tin
                giảm giá khác.</p>
            <div class="form-newsletter">
                <form action="" accept-charset="UTF-8" class="">
                    <div class="form-group">
                        <input type="hidden" id="contact_tags">
                        <input required="" type="email" value="" placeholder="Nhập email của bạn" aria-label="Email Address" class="">
                        <button type="submit" class=""><span>Gửi</span></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>