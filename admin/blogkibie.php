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

$total_rows = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM blog_kibie"));
$total_pages = ceil($total_rows / $rows_per_page);

$list_pages = '';
$page_prev = $page - 1;
if ($page_prev <= 0) {
    $page_prev = 1;
}
$list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=blog_kibie&page=' . $page_prev . '">&laquo;</a></li>';
for ($i = 1; $i <= $total_pages; $i++) {
    if ($i == $page) {
        $active = 'active';
    } else {
        $active = '';
    }
    $list_pages .= '<li class="page-item ' . $active . '"><a class="page-link" href="index.php?page_layout=blog_kibie&page=' . $i . '">' . $i . '</a></li>';
}
$page_next = $page + 1;
if ($page_next > $total_pages) {
    $page_next = $total_pages;
}
$list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=blog_kibie&page=' . $page_next . '">&raquo;</a></li>';
?>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li class="active">Danh sách bài viết Kibie</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Danh sách bài viết Kibie</h1>
        </div>
    </div>
    <!--/.row-->
    <div id="toolbar" class="btn-group">
        <a href="index.php?page_layout=add_blogkibie" class="btn btn-success">
            <i class="glyphicon glyphicon-plus"></i> Thêm bài viết Kibie
        </a>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table data-toolbar="#toolbar" data-toggle="table">

                        <thead>
                            <tr>
                                <th data-field="id" data-sortable="true">ID</th>
                                <th data-field="name" data-sortable="true">Tên bài viết</th>
                                <th>Danh mục bài viết</th>
                                <th>Ảnh bài viết</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM blog_kibie
                            INNER JOIN cat_blogkibie 
                            ON blog_kibie.catki_id = cat_blogkibie.catki_id
								ORDER BY blogki_id DESC
								LIMIT $per_row, $rows_per_page";
                            $query = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_array($query)) {
                            ?>
                                <tr>
                                    <td style=""><?php echo $row['blogki_id']; ?></td>
                                    <td style=""><?php echo $row['blogki_name']; ?></td>
                                    <td><?php echo $row['catki_name']; ?></td>
                                    <td style="text-align: center"><img width="130" height="180" src="img/products/<?php echo $row['blogki_img']; ?>" /></td>
                                    <td class="form-group">
                                        <a href="index.php?page_layout=edit_blogkibie&blogki_id=<?php echo $row['blogki_id']; ?>" class="btn btn-primary"><i class="glyphicon glyphicon-pencil"></i></a>
                                        <a onclick="return thongbao();" href="del_blogkibie.php?blogki_id=<?php echo $row['blogki_id']; ?>" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
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