<div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="index.php?/=signup-test">Đăng kí nhận mẫu thử</a>
        </li>
        <li class="nav-item lisanpham">
            <a class="nav-link" href="index.php?/=shopsystem">Hệ thống cửa hàng
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
            <ul class="sub_menu">
                <li class="">
                    <a href="index.php?/=mienbac" title="Miền Bắc">
                        Miền Bắc
                    </a>
                </li>
                <li class="">
                    <a href="index.php?/=mientrung" title="Miền Trung">
                        Miền Trung
                    </a>
                </li>
                <li class="">
                    <a href="index.php?/=miennam" title="Miền Nam">
                        Miền Nam
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item lisanpham">
            <a class="nav-link" href="index.php?/=product">Sản phẩm
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
            <ul class="sub_menu">
                <li class="">
                    <a href="index.php?/=product" title="Tã quần cho bé">
                        Tã quần cho bé
                    </a>
                </li>
                <li class="">
                    <a href="index.php?/=promo_product" title="Khuyến mại">
                        Khuyến mại
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item lisanpham">
            <a class="nav-link" href="#">Làm cha mẹ
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
            <ul class="sub_menu">
                <?php $sql = "SELECT * FROM cat_blogkibie
					     ORDER BY catki_id ASC";
                $query = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_array($query)) { ?>
                    <li class="">
                        <a href="index.php?/=blogkibie&catki_id=<?php echo $row['catki_id']; ?>&catki_name=<?php echo $row['catki_name']; ?>" title="<?php echo $row['catki_name']; ?>">
                            <?php echo $row['catki_name']; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="index.php?/=blog">Tin tức</a>
        </li>
        <li class="nav-item lisanpham">
            <a class="nav-link" href="index.php?/=introduce">Về Kibie
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
            <ul class="sub_menu">
                <li class="">
                    <a href="index.php?/=introduce" title="Giới thiệu về Kibie">
                        Giới thiệu về Kibie
                    </a>
                </li>
                <li class="">
                    <a href="index.php?/=contact" title="Liên hệ">
                        Liên hệ
                    </a>
                </li>
                <li class="">
                    <a href="index.php?/=certification" title="Chứng nhận chất lượng">
                        Chứng nhận chất lượng
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</div>
<div id="offcanvas-flip1" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar" style="background: white;
        width: 100%;">

        <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>
        <h3 style="font-size: 14px;
          color: #272727;
          text-transform: uppercase;
          margin: 3px 0 30px 0;
          font-weight: 500; letter-spacing: 2px;">MENU</h3>
        <div class="justify-content-md-center">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.php?/=signup-test">Đăng kí nhận mẫu thử</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle aaaa" href="index.php?/=shopsystem" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <p>Hệ thống cửa hàng</p>
                        <i class="fa fa-angle-double-right"></i>

                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                        <a class="dropdown-item" href="index.php?/=mienbac" title="Miền Bắc">Miền Bắc</a>
                        <a class="dropdown-item" href="index.php?/=mientrung" title="Miền Trung">Miền Trung</a>
                        <a class="dropdown-item" href="index.php?/=miennam" title="Miền Nam">Miền Nam</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle aaaa" href="index.php?/=product" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <p>SẢN PHẨM</p>
                        <i class="fa fa-angle-double-right"></i>

                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                        <a class="dropdown-item" href="index.php?/=product" title="Tã quần cho bé">Tã quần cho bé</a>
                        <a class="dropdown-item" href="index.php?/=promo_product" title="Khuyến mại">Khuyến mại</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle aaaa" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <p>Làm cha mẹ</p>
                        <i class="fa fa-angle-double-right"></i>

                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                        <?php
                        $sql = "SELECT * FROM cat_blogkibie
		                            ORDER BY catki_id ASC";
                        $query = mysqli_query($conn, $sql);
                        while ($row = mysqli_fetch_array($query)) { ?>
                            <a class="dropdown-item" href="index.php?/=blogkibie&catki_id=<?php echo $row['catki_id']; ?>&catki_name=<?php echo $row['catki_name']; ?>" title="<?php echo $row['catki_name']; ?>"><?php echo $row['catki_name']; ?></a>
                        <?php } ?>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?/=blog">Tin tức</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle aaaa" href="index.php?/=introduce" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <p>Về Kibie</p>
                        <i class="fa fa-angle-double-right"></i>

                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                        <a class="dropdown-item" href="index.php?/=introduce" title="Giới thiệu về Kibie">Giới thiệu về Kibie</a>
                        <a class="dropdown-item" href="index.php?/=contact" title="Liên hệ">Liên hệ</a>
                        <a class="dropdown-item" href="index.php?/=certification" title="Chứng nhận chất lượng">Chứng nhận chất
                            lượng</a>
                    </div>
                </li>
            </ul>
        </div>

    </div>
</div>