<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

$blog_id = $_GET['blog_id'];
$sql = "SELECT * FROM blog
		WHERE blog_id = $blog_id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);

if (isset($_POST['sbm'])) {
    $blog_name = $_POST['blog_name'];
    //
    if ($_FILES['blog_img']['name'] == '') {
        $blog_img = $row['blog_img'];
    } else {
        $blog_img = $_FILES['blog_img']['name'];
        $blog_img_tmp_name = $_FILES['blog_img']['tmp_name'];
        move_uploaded_file($blog_img_tmp_name, 'img/products/' . $blog_img);
    }
    //
    $blog_detail = $_POST['blog_detail'];

    $sql = "UPDATE blog
			SET blog_name = '$blog_name', blog_img = '$blog_img', blog_detail = '$blog_detail'
			WHERE blog_id = $blog_id";
    $query = mysqli_query($conn, $sql);
    header('location:index.php?page_layout=blog');
}
?>

<script src="ckeditor/ckeditor.js"></script>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li><a href="">Quản lý bài viết tin tức</a></li>
            <li class="active"><?php echo $row['blog_name']; ?></li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Bài viết : <?php echo $row['blog_name']; ?></h1>
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
                                <label>Tên bài viết</label>
                                <input type="text" name="blog_name" required class="form-control" value="<?php echo $row['blog_name']; ?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Nội dung bài viết</label>
                                <textarea name="blog_detail" required class="form-control" rows="3"><?php echo $row['blog_detail']; ?></textarea>
                                <script>
                                    // Replace the <textarea id="editor1"> with a CKEditor
                                    // instance, using default configuration.
                                    CKEDITOR.replace('blog_detail');
                                </script>
                            </div>
                            <button type="submit" name="sbm" class="btn btn-primary">Cập nhật</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ảnh bài viết</label>
                            <input type="file" name="blog_img">
                            <br>
                            <div>
                                <img width="130" height="180" src="img/products/<?php echo $row['blog_img']; ?>">
                            </div>
                        </div>


                    </div>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->

</div>
<!--/.main-->