
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
  <link rel="stylesheet" href="plugins/owl.carousel/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="plugins/owl.carousel/owl.theme.default.min.css">
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
              <span><span style="color: #777777">Tin tức</span></span>
            </li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!--List Prodct-->
  <!--Blog-->
  <?php
  $sql = "SELECT * FROM blog
		ORDER BY blog_id ASC
		";
  $query = mysqli_query($conn, $sql);
  ?>
  <div class="container" style="padding-bottom: 50px;">
    <div class="row">
      <?php while ($row = mysqli_fetch_array($query)) { ?>
        <div class="fix-col col-md-3 col-sm-6 col-xs-6 col-6">
          <div class="product-block">
            <div class="product-img fade-box">
              <a href="index.php?/=detailblog&blog_id=<?php echo $row['blog_id']; ?>" title="<?php echo $row['blog_name'] ?>" class="img-resize">
                <img src="admin/img/products/<?php echo $row['blog_img']; ?>" alt="<?php echo $row['blog_name'] ?>" class="lazyloaded">
                <img src="admin/img/products/<?php echo $row['blog_img']; ?>" alt="<?php echo $row['blog_name'] ?>" class="lazyloaded">
              </a>

            </div>
            <div class="product-detail clearfix">
              <div>
                <a style=" color: black;
              font-size: 16px;text-decoration: none;" href="index.php?/=detailblog&blog_id=<?php echo $row['blog_id']; ?>" title="<?php echo $row['blog_name'] ?>" inspiration pack> <?php echo $row['blog_name']; ?>
                </a>
              </div>
            </div>
          </div>
        </div>
      <?php } ?>



    </div>
  </div>
  <!-- end blog -->
  <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
  <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
  <script src="plugins/bootstrap/popper.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
  <script src="plugins/uikit/uikit.min.js"></script>
  <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>