<?php
$prd_id = $_GET['prd_id'];

$sql_prd = "SELECT * FROM product
		WHERE prd_id = $prd_id";
$query_prd = mysqli_query($conn, $sql_prd);
$row_prd = mysqli_fetch_array($query_prd);

?>
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
                    <span itemprop="name"><?php echo $row_prd['prd_name']; ?></span>
                  </span>
                  <meta itemprop="position" content="3">
                </li>

              </ol>
            </div>
          </div>
        </div>
      </div>
      <!-- detail product chính -->
      <div class="container">
        <div class="row product-detail-wrapper">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="row product-detail-main pr_style_01">
              <div class="col-md-7 col-sm-12 col-xs-12">
                <div class="product-gallery">
                  <div class="product-gallery__thumbs-container hidden-sm
                    hidden-xs">
                    <div class="product-gallery__thumbs thumb-fix">

                      <div class="product-gallery__thumb  active" id="imgg1">
                        <a class="product-gallery__thumb-placeholder" href="javascript:void(0);" data-image="admin/img/products/<?php echo $row_prd['prd_image']; ?>" data-zoom-image="admin/img/products/<?php echo $row_prd['prd_image']; ?>">
                          <img src="admin/img/products/<?php echo $row_prd['prd_image']; ?>" data-image="admin/img/products/<?php echo $row_prd['prd_image']; ?>" alt="<?php echo $row_prd['prd_name']; ?>" grape="">
                        </a>
                      </div>

                    </div>
                  </div>
                  <div class="product-image-detail box__product-gallery
                    scroll hidden-xs">
                    <ul id="sliderproduct" class="site-box-content
                      slide_product">

                      <li class="product-gallery-item gallery-item
                        current " id="imgg1a">
                        <img class="product-image-feature " src="admin/img/products/<?php echo $row_prd['prd_image']; ?>" alt="<?php echo $row_prd['prd_name']; ?>" grape="">
                      </li>

                    </ul>
                    <div class="product-image__button">
                      <div id="product-zoom-in" class="product-zoom
                        icon-pr-fix" aria-label="Zoom in" title="Zoom in">
                        <span class="zoom-in" aria-hidden="true">
                          <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 36 36" style="enable-background:new 0 0 36 36; width:
                            30px; height: 30px;" xml:space="preserve">
                            <polyline points="6,14 9,11 14,16 16,14 11,9
                              14,6 6,6">
                            </polyline>
                            <polyline points="22,6 25,9 20,14 22,16 27,11
                              30,14 30,6">
                            </polyline>
                            <polyline points="30,22 27,25 22,20 20,22
                              25,27 22,30 30,30">
                            </polyline>
                            <polyline points="14,30 11,27 16,22 14,20 9,25
                              6,22 6,30">
                            </polyline>
                          </svg>
                        </span>
                      </div>
                      <div class="gallery-index icon-pr-fix"><span class="current">1</span>
                        / <span class="total">8</span></div>
                    </div>
                  </div>
                </div>
                <div class="product-gallery-slide">
                  <div class="owl-carousel owl-theme owl-product-gallery-slide">
                    <div class=" item">
                      <div class="product-gallery__thumb  >
                      <a class=" product-gallery__thumb-placeholder href="javascript:void(0);" data-image="admin/img/products/<?php echo $row_prd['prd_image']; ?>" data-zoom-image="admin/img/products/<?php echo $row_prd['prd_image']; ?>">
                        <img src="admin/img/products/<?php echo $row_prd['prd_image']; ?>" data-image="admin/img/products/<?php echo $row_prd['prd_image']; ?>" alt="<?php echo $row_prd['prd_name']; ?>" grape="">
                        </a>
                      </div>
                    </div>

                  </div>
                </div>

              </div>
              <div class="col-md-5 col-sm-12 col-xs-12
                product-content-desc" id="detail-product">
                <div class="product-content-desc-1">
                  <div class="product-title">
                    <h1><?php echo $row_prd['prd_name']; ?></h1>

                  </div>
                  <div class="product-price" id="price-preview"><span class="pro-price">Giá bán : <?php echo number_format($row_prd['prd_price']); ?> đ</span>
                  </div>
                  <div class="product-price" id="price-preview"><span class="pro-price">Code : <?php echo $row_prd['prd_code']; ?></span>
                  </div>
                  <div class="product-price" id="price-preview"><span class="pro-price">Tình trạng : <?php if ($row_prd['prd_status' == 1]) {
                                                                                                        echo 'Còn hàng';
                                                                                                      } else {
                                                                                                        echo 'Hết hàng';
                                                                                                      } ?></span>
                  </div>
                  <form id="add-item-form" action="/cart/add" method="post" class="variants clearfix">
                    <div class="selector-actions">
                      <div class="wrap-addcart clearfix">
                        <div class="row-flex">
                          <button type="button" class="button btn-addtocart addtocart-modal">Thêm
                            vào</button>
                          <button type="button" class="buy-now button" style="display: block;"> <a class="text-white" href="modules/cart/add_cart.php?prd_id=<?php echo $row_prd['prd_id'];?>"> Mua
                              ngay </a></button>

                        </div>

                        <a href="" target="_blank" class="button btn-check" style="color: #ffffff;text-decoration:none;"><span>Click
                            nhận mã giảm giá ngay
                            !</span></a>

                      </div>
                    </div>
                  </form>

                </div>
              </div>
            </div>
            <!--	Comment and mô tả -->
            <div id="product">
              <div class="product-description">
                <div class="title-bl">
                  <h2 style="font-size: 23px;">Mô tả</h2>
                </div>
                <div class="description-content">
                  <div class="description-productdetail">
                    <?php echo $row_prd['prd_details']; ?>
                  </div>
                </div>
              </div>
              <div id="comment" class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <h3>Bình luận sản phẩm</h3>
                  <form method="post">
                    <div class="form-group">
                      <label>Tên:</label>
                      <input style="width:300px" name="comm_name" required type="text" class="form-control">
                    </div>
                    <div class="form-group">
                      <label>Email:</label>
                      <input style="width:300px" name="comm_mail" required type="email" class="form-control" id="pwd">
                    </div>
                    <div class="form-group">
                      <label>Nội dung:</label>
                      <textarea name="comm_details" required rows="8" class="form-control"></textarea>
                    </div>
                    <button type="submit" name="sbm" class="btn btn-primary">Gửi</button>
                  </form>
                </div>
              </div>
            </div>
            <!--	End Comment and mô tả	-->
            <div class="list-productRelated clearfix">
              <div class="heading-title text-center">
                <h2>Sản phẩm liên quan</h2>
              </div>
              <?php $sql_prd = "SELECT * FROM product
		                        LIMIT 4";
              $query_prd = mysqli_query($conn, $sql_prd);

              ?>
              <div class="container">
                <div class="row">
                  <?php while ($row_prd = mysqli_fetch_array($query_prd)) { ?>
                    <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                      <div class="product-block">
                        <div class="product-img fade-box">
                          <a href="index.php?/=detailproduct&prd_id=<?php echo $row_prd['prd_id']; ?>" title="<?php echo $row_prd['prd_name']; ?>" class="img-resize">
                            <img src="admin/img/products/<?php echo $row_prd['prd_image']; ?>" alt="<?php echo $row_prd['prd_name']; ?>" class="lazyloaded">
                            <img src="admin/img/products/<?php echo $row_prd['prd_image']; ?>" alt="<?php echo $row_prd['prd_name']; ?>" class="lazyloaded">
                          </a>

                        </div>
                        <div class="product-detail clearfix">
                          <div>
                            <a style="color: black;
                            font-size: 14px;text-decoration: none;" href="index.php?/=detailproduct&prd_id=<?php echo $row_prd['prd_id']; ?>" title="<?php echo $row_prd['prd_name']; ?>" inspiration pack>
                              <?php echo $row_prd['prd_name']; ?>
                            </a>
                          </div>
                          <div class="pro-price">
                            <p class=""><?php echo number_format($row_prd['prd_price']) ?> đ</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  <?php } ?>

                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>


    <!-- show zoom detail product -->
    <!-- zoom -->
    <div class="product-zoom11">
      <div class="product-zom">
        <div class="divclose">
          <i class="fa fa-times-circle"></i>
        </div>
        <div class="owl-carousel owl-theme owl-product1">

          <div class="item"><img src="admin/img/products/<?php echo $row_prd['prd_image'];?>" alt="">
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

</body>

</html>