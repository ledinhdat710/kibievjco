<!DOCTYPE html>
<html lang="en">

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

  <div class="container">
    <?php
    $blog_id = $_GET['blog_id'];
    $sql = "SELECT * FROM blog
		WHERE blog_id = $blog_id
		";
    $query = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($query);
    ?>
    <p style="font-size:20px;"><?php echo $row['blog_detail']; ?></p>
  </div>
</body>

</html>