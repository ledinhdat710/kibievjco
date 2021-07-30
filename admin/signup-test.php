<?php
if (!defined('TEMPLATE')) {
    die('Bạn không có quyền truy cập vào file này !');
}

if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}
$rows_per_page = 5;
$per_row = $page * $rows_per_page - $rows_per_page;

$total_rows = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM signup_test"));
$total_pages = ceil($total_rows / $rows_per_page);

$list_pages = '';
$page_prev = $page - 1;
if ($page_prev <= 0) {
    $page_prev = 1;
}
$list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=signup-test&page=' . $page_prev . '">&laquo;</a></li>';
for ($i = 1; $i <= $total_pages; $i++) {
    if ($i == $page) {
        $active = 'active';
    } else {
        $active = '';
    }
    $list_pages .= '<li class="page-item ' . $active . '"><a class="page-link" href="index.php?page_layout=signup-test&page=' . $i . '">' . $i . '</a></li>';
}
$page_next = $page + 1;
if ($page_next > $total_pages) {
    $page_next = $total_pages;
}
$list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=signup-test&page=' . $page_next . '">&raquo;</a></li>';
?>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li class="active">Danh sách người đăng kí nhận mẫu thử</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Danh sách người đăng kí nhận mẫu thử</h1>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table data-toolbar="#toolbar" data-toggle="table">

                        <thead>
                            <tr>
                                <th data-field="name" data-sortable="true">Tên người đăng kí</th>
                                <th>Ngày sinh </th> 
                                <th>Điện thoại</th> 
                                <th>Địa chỉ</th>
                                <th>Chiều cao cân nặng của bé</th>
                                <th>Kích cỡ bỉm theo yêu cầu</th>
                                <th>Ghi chú</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM signup_test
								ORDER BY signup_id DESC
								LIMIT $per_row, $rows_per_page";
                            $query = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_array($query)) {
                            ?>
                                <tr>
                                    <td style=""><?php echo $row['signup_name']; ?></td>
                                    <td style=""><?php echo $row['signup_birthday']; ?></td>
                                    <td style=""><?php echo $row['signup_phone']; ?></td>
                                    <td style=""><?php echo $row['signup_add']; ?></td>
                                    <td style=""><?php echo $row['signup_weight']; ?></td>
                                    <td style=""><?php echo $row['signup_size']; ?></td>
                                    <td style=""><?php echo $row['signup_note']; ?></td>
                                    <td class="form-group">
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
                <div class="panel-footer">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <?php echo $list_pages; ?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!--/.row-->
</div>
<!--/.main-->
<script>
    function thongbao() {
        var x = confirm("Bạn chắc chắn muốn xóa ?");
        if (x)
            return true;
        else
            return false;
    }
</script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-table.js"></script>