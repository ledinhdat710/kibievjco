<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

$intro_id = $_GET['intro_id'];


$sql = "SELECT * FROM introduce
		WHERE intro_id = $intro_id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);

if (isset($_POST['sbm'])) {

    $intro_introduce = $_POST['intro_introduce'];

    $sql = "UPDATE introduce
			SET intro_introduce = '$intro_introduce'
			WHERE intro_id = $intro_id";
    $query = mysqli_query($conn, $sql);
    header('location:index.php?page_layout=introduce');
}
?>

<script src="ckeditor/ckeditor.js"></script>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li><a href="">Quản lý bài viết giới thiệu </a></li>

        </ol>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-6">
                        <form role="form" method="post" enctype="multipart/form-data">


                            <div class="form-group">
                                <label>Mô tả sản phẩm</label>
                                <textarea name="intro_introduce" required class="form-control" rows="3"><?php echo $row['intro_introduce']; ?></textarea>
                                <script>
                                    // Replace the <textarea id="editor1"> with a CKEditor
                                    // instance, using default configuration.
                                    CKEDITOR.replace('intro_introduce');
                                </script>
                            </div>
                            <button type="submit" name="sbm" class="btn btn-primary">Cập nhật</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>

                    </div>
                    <div class="col-md-6">


                    </div>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->


</div>
<!--/.main-->