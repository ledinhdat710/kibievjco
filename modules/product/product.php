<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">

  <link rel="stylesheet" type="text/css" href="css/style.css">

  <link rel="stylesheet" href="plugins/animate/animate.min.css">

  <link rel="stylesheet" href="plugins/fontawesome/all.css">

  <link href="plugins/webfonts/font.css" rel="stylesheet">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">

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
  <div class="breadcrumb-shop">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
          <ol class="breadcrumb breadcrumb-arrows">
            <li>
              <a href="index.php">
                <span>Trang chủ</span>
              </a>
            </li>
            <li>
              <a href="product.php">
                <span>Sản phẩm</span>
              </a>
            </li>
            <li>
              <span><span style="color: #777777">Tã quần cho bé</span></span>
            </li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!--List Prodct-->
  <div class="container" style="margin-top: 50px;">
    <div class="row">
      <div class="col-md-3 col-sm-12 col-xs-12 sidebar-fix">
        <div class="wrap-filter">
          <div class="box_sidebar">
            <div class="block left-module">
              <div class=" filter_xs">
                <div class="layered">
                  <p class="title_block d-block d-sm-none d-none d-sm-block d-md-none" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample2">
                    Bộ lọc sản phẩm
                    <span><i class="fa fa-angle-down" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample2"></i></span>
                  </p>
                  <div class="block_content collapse" id="collapseExample2">
                    <div class="group-filter card card-body" style="border:0;padding:0" aria-expanded="true">
                      <div class="layered_subtitle dropdown-filter"><span>Thương hiệu</span><span class="icon-control"><i class="fa fa-minus"></i></span></div>
                      <div class="layered-content bl-filter filter-brand">
                        <ul class="check-box-list">
                          <li>
                            <input type="checkbox" id="data-brand-p1" value="Khác">
                            <label for="data-brand-p1">Khác</label>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="group-filter" aria-expanded="true">
                      <div class="layered_subtitle dropdown-filter"><span>Giá sản phẩm</span><span class="icon-control"><i class="fa fa-minus"></i></span></div>
                      <div class="layered-content bl-filter filter-price">
                        <ul class="check-box-list">
                          <li>
                            <input type="checkbox" id="p1">
                            <label for="p1">
                              <span>Dưới</span> 500,000₫
                            </label>
                          </li>
                          <li>
                            <input type="checkbox" id="p2">
                            <label for="p2">
                              500,000₫ - 1,000,000₫
                            </label>
                          </li>
                          <li>
                            <input type="checkbox" id="p3">
                            <label for="p3">
                              1,000,000₫ - 1,500,000₫
                            </label>
                          </li>
                          <li>
                            <input type="checkbox" id="p4">
                            <label for="p4">
                              2,000,000₫ - 5,000,000₫
                            </label>
                          </li>
                          <li>
                            <input type="checkbox" id="p5">
                            <label for="p5">
                              <span>Trên</span> 5,000,000₫
                            </label>
                          </li>
                        </ul>
                      </div>
                    </div>

                    <div class="group-filter" aria-expanded="true">
                      <div class="layered_subtitle dropdown-filter"><span>Màu sắc</span><span class="icon-control"><i class="fa fa-minus"></i></span></div>
                      <div class="layered-content filter-color s-filter">
                        <ul class="check-box-list">
                          <li>
                            <input type="checkbox" id="data-color-p1">
                            <label for="data-color-p1" style="background-color: #fb4727"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p2">
                            <label for="data-color-p2" style="background-color: #fdfaef"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p3">
                            <label for="data-color-p3" style="background-color: #3e3473"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p4">
                            <label for="data-color-p4" style="background-color: #ffffff"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p5">
                            <label for="data-color-p5" style="background-color: #75e2fb"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p6">
                            <label for="data-color-p6" style="background-color: #cecec8"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p7">
                            <label for="data-color-p7" style="background-color: #6daef4"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p8">
                            <label for="data-color-p8" style="background-color: #000000"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p9">
                            <label for="data-color-p9" style="background-color: #e2262a"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p10">
                            <label for="data-color-p10" style="background-color: #ee8aa1"></label>
                          </li>
                          <li>
                            <input type="checkbox" id="data-color-p11">
                            <label for="data-color-p11" style="background-color: #4a5250"></label>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="group-filter" aria-expanded="true">
                      <div class="layered_subtitle dropdown-filter"><span>Kích thước</span><span class="icon-control"><i class="fa fa-minus"></i></span></div>
                      <div class="layered-content filter-size s-filter">

                        <ul class="check-box-list clearfix">

                          <li>
                            <input type="checkbox" id="data-size-p1">
                            <label for="data-size-p1">35</label>
                          </li>

                          <li>
                            <input type="checkbox" id="data-size-p2">
                            <label for="data-size-p2">36</label>
                          </li>

                          <li>
                            <input type="checkbox" id="data-size-p3">
                            <label for="data-size-p3">37</label>
                          </li>

                          <li>
                            <input type="checkbox" id="data-size-p4">
                            <label for="data-size-p4">38</label>
                          </li>

                          <li>
                            <input type="checkbox" id="data-size-p5">
                            <label for="data-size-p5">39</label>
                          </li>

                          <li>
                            <input type="checkbox" id="data-size-p6">
                            <label for="data-size-p6">40</label>
                          </li>

                        </ul>
                      </div>
                    </div>

                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-9 col-sm-12 col-xs-12">
        <div class="wrap-collection-title row">
          <div class="col-md-8 col-sm-12 col-xs-12">
            <h1 style="margin-bottom: 10px;" class="title">
              Tã quần cho bé
            </h1>
            <div class="alert-no-filter"></div>
          </div>
          <div class="col-md-4 d-sm-none d-md-block d-none d-sm-block" style="float: left">
            <div class="option browse-tags">
              <span class="custom-dropdown custom-dropdown--grey">
                <select class="sort-by custom-dropdown__select">
                  <option value="price-ascending">Giá: Tăng dần</option>
                  <option value="price-descending">Giá: Giảm dần
                  </option>
                  <option value="title-ascending">Tên: A-Z</option>
                  <option value="title-descending">Tên: Z-A</option>
                  <option value="created-ascending">Cũ nhất
                  </option>
                  <option value="created-descending">Mới nhất
                  </option>
                  <option value="best-selling">Bán chạy nhất
                  </option>
                  <option value="quantity-descending">Tồn kho: Giảm dần</option>
                </select>
              </span>
            </div>
          </div>
        </div>
        <?php
        $sql = "SELECT * FROM product
    WHERE cat_id = 1
		ORDER BY prd_id DESC
		";
        $query = mysqli_query($conn, $sql);
        ?>
        <div class="row">
          <?php while ($row = mysqli_fetch_array($query)) { ?>
            <div class="fix-col col-md-3 col-sm-6 col-xs-6 col-6">
              <div class="product-block">
                <div class="product-img fade-box">
                  <a href="index.php?/=detailproduct&prd_id=<?php echo $row['prd_id']; ?>" title="<?php echo $row['prd_name']; ?>" class="img-resize">
                    <img src="admin/img/products/<?php echo $row['prd_image']; ?>" alt="<?php echo $row['prd_name']; ?>" class="lazyloaded">
                    <img src="admin/img/products/<?php echo $row['prd_image']; ?>" class="lazyloaded">
                  </a>

                </div>
                <div class="product-detail clearfix">
                  <div>
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
          <?php } ?>

        </div>
      </div>
    </div>
  </div>
  <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
  <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
  <script src="plugins/bootstrap/popper.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
  <script src="plugins/uikit/uikit.min.js"></script>
  <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>