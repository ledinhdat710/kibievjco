<?php
$blogki_id = $_GET['blogki_id'];
$sql_detail = "SELECT * FROM blog_kibie
		WHERE blogki_id = $blogki_id";
$query_detail = mysqli_query($conn, $sql_detail);
$row_detail = mysqli_fetch_array($query_detail);

?>
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
    <p style="font-size:20px;"><?php echo $row_detail['blogki_detail']; ?></p>
  </div>

</body>

</html>