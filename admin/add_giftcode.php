<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

if (isset($_POST['sbm'])) {
    $gift_code = $_POST['gift_code'];
    $amount = $_POST['amount'];
    $type = $_POST['type'];
    $create_at = $_POST['create_at'];
    $end_at = $_POST['end_at'];
    $use_at = $_POST['use_at'];

    $sql = "INSERT INTO gift_code (gift_code, amount , type , create_at , end_at , use_at)
			VALUES('$gift_code', '$amount' , '$type' , '$create_at' , '$end_at' , '$use_at')";
    $query = mysqli_query($conn, $sql);
    header('location:index.php?page_layout=giftcode');
}
?>
<script src="ckeditor/ckeditor.js"></script>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li><a href="">Quản lý mã giảm giá</a></li>
            <li class="active">Thêm mã giảm giá</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm mã giảm giá</h1>
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
                                <label>Mã giảm giá</label>
                                <input required name="gift_code" class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Giá trị</label>
                                <input required name="amount" class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Loại giảm</label>
                                <input required name="type" class="form-control" placeholder="">
                            </div>


                            <button name="sbm" type="submit" class="btn btn-success">Thêm mới</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>


                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ngày tạo</label>
                            <input type="datetime-local" required name="create_at" class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label>Ngày kết thúc</label>
                            <input type="datetime-local" required name="end_at" class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label>Ngày sử dụng</label>
                            <input type="datetime-local" required name="use_at" class="form-control" placeholder="">
                        </div>

                    </div>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->

</div>
<!--/.main-->