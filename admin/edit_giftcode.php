<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}
$id = $_GET['id'];
$sql = "SELECT * FROM gift_code
		WHERE id = $id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);

if (isset($_POST['sbm'])) {
    $gift_code = $_POST['gift_code'];
    $amount = $_POST['amount'];
    $type = $_POST['type'];
    $create_at = $_POST['create_at'];
    $end_at = $_POST['end_at'];
    $use_at = $_POST['use_at'];

    $sql = "UPDATE blog
			SET gift_code = '$gift_code', amount = '$amount' , type = '$type' , create_at = '$create_at' , end_at = '$end_at' , use_at = '$use_at'
			WHERE id = $id";
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
            <li class="active"><?php echo $row['gift_code']; ?></li>
        </ol>
    </div>
    <!--/.row-->
    <!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-6">
                        <form role="form" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label>Mã giảm giá</label>
                                <input type="text" name="gift_code" required class="form-control" value="<?php echo $row['gift_code']; ?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Giá trị</label>
                                <input type="text" name="amount" required class="form-control" value="<?php echo $row['amount']; ?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Loại giảm</label>
                                <input type="text" name="type" required class="form-control" value="<?php echo $row['type']; ?>" placeholder="">
                            </div>

                            <button type="submit" name="sbm" class="btn btn-primary">Cập nhật</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ngày tạo</label>
                            <input type="datetime-local" name="create_at" required class="form-control" value="<?php echo $row['create_at']; ?>" placeholder="">
                        </div>
                        <div class="form-group">
                            <label>Ngày kết thúc</label>
                            <input type="datetime-local" name="end_at" required class="form-control" value="<?php echo $row['end_at']; ?>" placeholder="">
                        </div>
                        <div class="form-group">
                            <label>Ngày sử dụng</label>
                            <input type="datetime-local" name="use_at" required class="form-control" value="<?php echo $row['use_at']; ?>" placeholder="">
                        </div>

                    </div>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->

</div>
<!--/.main-->