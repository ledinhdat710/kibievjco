<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

$prd_id = $_GET['prd_id'];

$sql_cat = "SELECT * FROM category
		   ORDER BY cat_id ASC";
$query_cat = mysqli_query($conn, $sql_cat);

$sql = "SELECT * FROM product
		WHERE prd_id = $prd_id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);

if (isset($_POST['sbm'])) {
    $prd_name = $_POST['prd_name'];
    $prd_price = $_POST['prd_price'];
    $prd_code = $_POST['prd_code'];
    //
    if ($_FILES['prd_image']['name'] == '') {
        $prd_image = $row['prd_image'];
    } else {
        $prd_image = $_FILES['prd_image']['name'];
        $prd_image_tmp_name = $_FILES['prd_image']['tmp_name'];
        move_uploaded_file($prd_image_tmp_name, 'img/products/' . $prd_image);
    }
    //
    $cat_id = $_POST['cat_id'];
    $prd_status = $_POST['prd_status'];
    $prd_details = $_POST['prd_details'];

    $sql = "UPDATE product
			SET prd_name = '$prd_name', prd_price = $prd_price, prd_code = '$prd_code' , prd_image = '$prd_image', cat_id = $cat_id, prd_status = $prd_status , prd_details = '$prd_details'
			WHERE prd_id = $prd_id";
    $query = mysqli_query($conn, $sql);
    header('location:index.php?page_layout=product');
}
?>

<script src="ckeditor/ckeditor.js"></script>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li><a href="">Quản lý sản phẩm</a></li>
            <li class="active"><?php echo $row['prd_name']; ?></li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Sản phẩm: <?php echo $row['prd_name']; ?></h1>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-6">
                        <form role="form" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input type="text" name="prd_name" required class="form-control" value="<?php echo $row['prd_name']; ?>" placeholder="">
                            </div>

                            <div class="form-group">
                                <label>Giá sản phẩm</label>
                                <input type="number" name="prd_price" required value=<?php echo $row['prd_price']; ?> class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Mã sản phẩm</label>
                                <input type="text" name="prd_code" required class="form-control" value="<?php echo $row['prd_code']; ?>" placeholder="">
                            </div>
                       
                            <div class="form-group">
                                <label>Danh mục</label>
                                <select name="cat_id" class="form-control">
                                    <?php
                                    while ($row_cat = mysqli_fetch_array($query_cat)) {
                                    ?>
                                        <option <?php if ($row_cat['cat_id'] == $row['cat_id']) {
                                                    echo 'selected';
                                                } ?> value=<?php echo $row_cat['cat_id']; ?>><?php echo $row_cat['cat_name']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ảnh sản phẩm</label>
                            <input type="file" name="prd_image">
                            <br>
                            <div>
                                <img width="130" height="180" src="img/products/<?php echo $row['prd_image']; ?>">
                            </div>
                        </div>


                        <div class="form-group">
                            <label>Trạng thái</label>
                            <select name="prd_status" class="form-control">
                                <option <?php if ($row['prd_status'] == 1) {
                                            echo 'selected';
                                        } ?> value=1>Còn hàng</option>
                                <option <?php if ($row['prd_status'] == 0) {
                                            echo 'selected';
                                        } ?> value=0>Hết hàng</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Mô tả sản phẩm</label>
                            <textarea name="prd_details" required class="form-control" rows="3"><?php echo $row['prd_details']; ?></textarea>
                            <script>
                                // Replace the <textarea id="editor1"> with a CKEditor
                                // instance, using default configuration.
                                CKEDITOR.replace('prd_details');
                            </script>
                        </div>
                        <button type="submit" name="sbm" class="btn btn-primary">Cập nhật</button>
                        <button type="reset" class="btn btn-default">Làm mới</button>
                    </div>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->

</div>
<!--/.main-->