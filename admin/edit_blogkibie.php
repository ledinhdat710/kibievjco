<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

$blogki_id = $_GET['blogki_id'];

$sql_cat = "SELECT * FROM cat_blogkibie
		   ORDER BY catki_id ASC";
$query_cat = mysqli_query($conn, $sql_cat);

$sql = "SELECT * FROM blog_kibie
		WHERE blogki_id = $blogki_id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);

if (isset($_POST['sbm'])) {
    $blogki_name = $_POST['blogki_name'];
    //
    if ($_FILES['blogki_img']['name'] == '') {
        $blogki_img = $row['blogki_img'];
    } else {
        $blogki_img = $_FILES['blogki_img']['name'];
        $blogki_img_tmp_name = $_FILES['blogki_img']['tmp_name'];
        move_uploaded_file($blogki_img_tmp_name, 'img/products/' . $blogki_img);
    }
    //
    $catki_id = $_POST['catki_id'];
    $blogki_detail = $_POST['blogki_detail'];

    $sql = "UPDATE blog_kibie
			SET blogki_name = '$blogki_name', blogki_img = '$blogki_img', catki_id = $catki_id, blogki_detail = '$blogki_detail'
			WHERE blogki_id = $blogki_id";
    $query = mysqli_query($conn, $sql);
    header('location:index.php?page_layout=blogkibie');
}
?>

<script src="ckeditor/ckeditor.js"></script>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li><a href="">Quản lý bài viết Kibie </a></li>
            <li class="active"><?php echo $row['blogki_name']; ?></li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Bài viết Kibie : <?php echo $row['blogki_name']; ?></h1>
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
                                <input type="text" name="blogki_name" required class="form-control" value="<?php echo $row['blogki_name']; ?>" placeholder="">
                            </div>

                            <div class="form-group">
                                <label>Danh mục bài viết</label>
                                <select name="catki_id" class="form-control">
                                    <?php
                                    while ($row_cat = mysqli_fetch_array($query_cat)) {
                                    ?>
                                        <option <?php if ($row_cat['catki_id'] == $row['catki_id']) {
                                                    echo 'selected';
                                                } ?> value=<?php echo $row_cat['catki_id']; ?>><?php echo $row_cat['catki_name']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ảnh bài viết</label>
                            <input type="file" name="blogki_img">
                            <br>
                            <div>
                                <img width="130" height="180" src="img/products/<?php echo $row['blogki_img']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Nội dung bài viết</label>
                            <textarea name="blogki_detail" required class="form-control" rows="3"><?php echo $row['blogki_detail']; ?></textarea>
                            <script>
                                // Replace the <textarea id="editor1"> with a CKEditor
                                // instance, using default configuration.
                                CKEDITOR.replace('blogki_detail');
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