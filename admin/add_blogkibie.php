<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

$sql = "SELECT * FROM cat_blogkibie
		ORDER BY catki_id ASC";
$query = mysqli_query($conn, $sql);

if (isset($_POST['sbm'])) {
    $blogki_name = $_POST['blogki_name'];
    $blogki_img = $_FILES['blogki_img']['name'];
    $blogki_img_tmp_name = $_FILES['blogki_img']['tmp_name'];
    $catki_id = $_POST['catki_id'];
    $blogki_detail = $_POST['blogki_detail'];

    $sql = "INSERT INTO blog_kibie(blogki_name, blogki_img, catki_id, blogki_detail)
			VALUES('$blogki_name', '$blogki_img', '$catki_id', '$blogki_detail')";
    $query = mysqli_query($conn, $sql);
    move_uploaded_file($blogki_img_tmp_name, 'img/products/' . $blogki_img);
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
            <li><a href="">Quản lý bài viết Kibie</a></li>
            <li class="active">Thêm bài viết Kibie</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm bài viết Kibie</h1>
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
                                <input required name="blogki_name" class="form-control" placeholder="">
                            </div>

                            <div class="form-group">
                                <label>Danh mục bài viết</label>
                                <select name="catki_id" class="form-control">
                                    <?php
                                    while ($row = mysqli_fetch_array($query)) {
                                    ?>
                                        <option value=<?php echo $row['catki_id']; ?>><?php echo $row['catki_name']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ảnh bài viết</label>

                            <input required name="blogki_img" type="file">
                            <br>
                            <div>
                                <img src="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Nội dung bài viết</label>
                            <textarea required name="blogki_detail" class="form-control" rows="3"></textarea>
                            <script>
                                // Replace the <textarea id="editor1"> with a CKEditor
                                // instance, using default configuration.
                                CKEDITOR.replace('blogki_detail');
                            </script>
                        </div>
                        <button name="sbm" type="submit" class="btn btn-success">Thêm mới</button>
                        <button type="reset" class="btn btn-default">Làm mới</button>
                    </div>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->

</div>
<!--/.main-->