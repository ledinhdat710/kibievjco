<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

if (isset($_POST['sbm'])) {
    $blog_name = $_POST['blog_name'];
    $blog_img = $_FILES['blog_img']['name'];
    $blog_img_tmp_name = $_FILES['blog_img']['tmp_name'];
    $blog_detail = $_POST['blog_detail'];

    $sql = "INSERT INTO blog (blog_name, blog_img, blog_detail)
			VALUES('$blog_name', '$blog_img','$blog_detail')";
    $query = mysqli_query($conn, $sql);
    move_uploaded_file($blog_img_tmp_name, 'img/products/' . $blog_img);
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
            <li><a href="">Quản lý bài viết</a></li>
            <li class="active">Thêm bài viết</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm bài viết</h1>
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
                                <input required name="blog_name" class="form-control" placeholder="">
                            </div>

                            <div class="form-group">
                                <label>Nội dung bài viết</label>
                                <textarea required name="blog_detail" class="form-control" rows="3"></textarea>
                                <script>
                                    // Replace the <textarea id="editor1"> with a CKEditor
                                    // instance, using default configuration.
                                    CKEDITOR.replace('blog_detail');
                                </script>
                            </div>
                            <button name="sbm" type="submit" class="btn btn-success">Thêm mới</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>


                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ảnh bài viết</label>

                            <input required name="blog_img" type="file">
                            <br>
                            <div>
                                <img src="">
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