<div class="col-lg-9 col-md-9 col-sm-12">
    <!--	Cart	-->
    <div id="my-cart">
        <div class="row">
            <div class="cart-nav-item col-lg-7 col-md-7 col-sm-12">Thông tin sản phẩm</div>
            <div class="cart-nav-item col-lg-2 col-md-2 col-sm-12">Tùy chọn</div>
            <div class="cart-nav-item col-lg-3 col-md-3 col-sm-12">Giá</div>
        </div>

        <?php
        if (isset($_SESSION['cart'])) {

            if (isset($_POST['sbm'])) {
                foreach ($_POST['quantity'] as $prd_id => $quantity) {
                    $_SESSION['cart'][$prd_id] = $quantity;
                }
            }

            $arr_id = array();
            foreach ($_SESSION['cart'] as $prd_id => $quantity) {
                $arr_id[] = $prd_id;
            }
            $str_id = implode(', ', $arr_id);

        ?>

            <form method="post">
                <?php
                $sql = "SELECT * FROM product
			WHERE prd_id IN ($str_id)";
                $query = mysqli_query($conn, $sql);

                $total_price = 0;
                $total_price_all = 0;
                while ($row = mysqli_fetch_array($query)) {
                    $total_price = $_SESSION['cart'][$row['prd_id']] * $row['prd_price'];
                    $total_price_all += $total_price;

                ?>
                    <div class="cart-item row">
                        <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                            <img src="admin/img/product/<?php echo $row['prd_image']; ?>">
                            <h4><?php echo $row['prd_name']; ?></h4>
                        </div>

                        <div class="cart-quantity col-lg-2 col-md-2 col-sm-12">
                            <input type="number" id="quantity" class="form-control form-blue quantity" name="quantity[<?php echo $row['prd_id']; ?>]" value="<?php echo $_SESSION['cart'][$row['prd_id']]; ?>" min="1">
                        </div>
                        <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <b>CaoCao Medical Equipment</b>
                                    </div>
                                    <div class="modal-body">
                                        <p class="text-danger">Bạn có chắc chắn muốn xóa ?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                        <a class="btn btn-danger btn-ok" href="modules/cart/del_cart.php?prd_id=<?php echo $row['prd_id']; ?>">Delete</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="cart-price col-lg-3 col-md-3 col-sm-12 ">
                            <b><?php echo $total_price; ?>đ</b><a data-href="#" data-toggle="modal" data-target="#confirm-delete" class="btn btn-danger">Xóa<i class="glyphicon glyphicon-remove"></i></a>
                        </div>
                    </div>
                <?php
                }
                ?>

                <div class="row">
                    <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                        <button id="update-cart" class="btn btn-success" type="submit" name="sbm">Cập nhật giỏ hàng</button>
                    </div>
                    <div class="cart-total col-lg-2 col-md-2 col-sm-12"><b>Tổng cộng:</b></div>
                    <div class="cart-price col-lg-3 col-md-3 col-sm-12"><b><?php echo $total_price_all; ?>đ</b></div>
                </div>
            </form>

    </div>
    <!--	End Cart	-->
<?php
        } else {
?>
    <div class="alert alert-danger" style="margin-top:15px;">Hiện không có sản phẩm nào trong giỏ hàng của bạn !</div>
<?php
        }

        if (isset($_POST['sbm_form'])) {
            $od_name = $_POST['od_name'];
            $od_phone = $_POST['od_phone'];
            $od_mail = $_POST['od_mail'];
            $od_address = $_POST['od_address'];

            $sql = "SELECT * FROM product
				WHERE prd_id IN ($str_id)";

            $query = mysqli_query($conn, $sql);
            $total_price = 0;
            $total_price_all = 0;

            // while ($row = mysqli_fetch_array($query)) {
            foreach ($query as $row) {
                $total_price = $_SESSION['cart'][$row['prd_id']] * $row['prd_price'];
                $total_price_all += $total_price;
                $od_pr_name = $row['prd_name'];
                $quantity = $_SESSION['cart'][$row['prd_id']];


                $sql = "INSERT INTO orders(od_name,od_phone,od_mail,od_address,od_prd_name,od_qtt,od_all_price) values ('$od_name','$od_phone','$od_mail','$od_address','$od_pr_name','$quantity',$total_price)";
                $query = mysqli_query($conn, $sql);
                header("location:index.php?page_layout=success");
            }
        }
?>


<!--	Customer Info	-->
<div id="customer">
    <form role="form" id="frm" method="post">
        <div class="row">

            <div id="customer-name" class="col-lg-4 col-md-4 col-sm-12">
                <input placeholder="Họ và tên (bắt buộc)" type="text" name="od_name" class="form-control" required>
            </div>
            <div id="customer-phone" class="col-lg-4 col-md-4 col-sm-12">
                <input placeholder="Số điện thoại (bắt buộc)" type="text" name="od_phone" class="form-control" required>
            </div>
            <div id="customer-mail" class="col-lg-4 col-md-4 col-sm-12">
                <input placeholder="Email (bắt buộc)" type="text" name="od_mail" class="form-control" required>
            </div>
            <div id="customer-add" class="col-lg-12 col-md-12 col-sm-12">
                <input placeholder="Địa chỉ nhà riêng hoặc cơ quan (bắt buộc)" type="text" name="od_address" class="form-control" required>
            </div>
            <!-- <button name="sbm_form" type="submit" class="btn btn-success">Mua ngay</button> -->


            <div style="height: 50px;" id="buy_button">
                <button style="
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin-left: 10px;
  margin-top: 30px;
  font-size: 16px;" name="sbm_form" type="submit" class="btn btn-danger">Mua hàng</button>
            </div>
        </div>

    </form>

</div>
<!--	End Customer Info	-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Twitter-bootstrap/3.0.0/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Twitter-bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script>
    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    });
</script>
</div>