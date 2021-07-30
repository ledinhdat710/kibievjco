<?php
ob_start();
session_start();
define('TEMPLATE', true);
include_once('config/connect.php');
?>
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
  <title>KIBIE</title>

  <style>
    #navbarNav a {
      text-transform: none;
      font-size: 15px;
    }
  </style>

</head>

<body>
  <?php include_once("modules/header/header.php"); ?>

  <!--Navbar-->

  <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

    <div class="container">
      <?php include_once("modules/logo/logo.php");
      include_once("modules/menu/menu.php");
      include_once("modules/search/search_box.php");
      include_once("modules/cart/cart_notify.php");

      include_once("modules/signup-signin/signup_signin-box.php"); ?>
    </div>
    <!-- </div> -->

  </nav>
  <!-- Owl-Carousel -->
  <?php include_once("modules/slide/slide.php");?>

  <!--Content-->
  <div class="content">

    <?php
    if (isset($_GET['/'])) {
      switch ($_GET['/']) {
        case 'blog':
          include_once("modules/blog/blog.php");
          break;
        case 'detailblog':
          include_once("modules/blog/detailblog.php");
          break;
        case 'blogkibie':
          include_once("modules/blogkibie/blogkibie.php");
          break;
        case 'detailblogkibie':
          include_once("modules/blogkibie/detailblogkibie.php");
          break;
        case 'signup-test':
          include_once("modules/signup-test/signup-test.php");
          break;
        case 'shopsystem':
          include_once("modules/shopsystem/shopsystem.php");
          break;
        case 'mienbac':
          include_once("modules/shopsystem/mienbac.php");
          break;
        case 'mientrung':
          include_once("modules/shopsystem/mientrung.php");
          break;
        case 'miennam':
          include_once("modules/shopsystem/miennam.php");
          break;
        case 'product':
          include_once("modules/product/product.php");
          break;
        case 'promo_product':
          include_once("modules/product/promo_product.php");
          break;
        case 'detailproduct':
          include_once("modules/product/detailproduct.php");
          break;
        case 'cart':
          include_once("modules/cart/cart.php");
          break;
        case 'success':
          include_once("modules/cart/success.php");
          break;
        case 'introduce':
          include_once("modules/introduce/introduce.php");
          break;
        case 'contact':
          include_once("modules/contact/contact.php");
          break;
        case 'certification':
          include_once("modules/certification/certification.php");
          break;
        case 'signup-signin':
          include_once("modules/signup-signin/signup-signin.php");
          break;
      }
    } else {
      include_once("modules/dashboard/dashboard.php");
      include_once("modules/registratior_custom/form.php");
    }
    ?>
    <!-- gallery -->
    <?php include_once("modules/banner/banner.php"); ?>
    <?php include_once("modules/footer/footer.php"); ?>
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