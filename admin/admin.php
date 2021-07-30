<?php
if (!defined('TEMPLATE')) {
	die('Ban khong co quyen truy cap vao file nay !');
}
?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Kibie - Administrator</title>

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/bootstrap-table.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">

	<!--Icons-->
	<script src="js/lumino.glyphs.js"></script>

	<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.php"><span>Kibie</span></a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user">
								<use xlink:href="#stroked-male-user"></use>
							</svg> <?php if (isset($_SESSION['mail'])) {
										echo $_SESSION['mail'];
									} ?> <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><svg class="glyph stroked male-user">
										<use xlink:href="#stroked-male-user"></use>
									</svg> Hồ sơ</a></li>
							<li><a href="logout.php"><svg class="glyph stroked cancel">
										<use xlink:href="#stroked-cancel"></use>
									</svg> Đăng xuất</a></li>
						</ul>
					</li>
				</ul>
			</div>

		</div><!-- /.container-fluid -->
	</nav>

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="index.php"><svg class="glyph stroked dashboard-dial">
						<use xlink:href="#stroked-dashboard-dial"></use>
					</svg> Dashboard</a></li>
			<li><a href="index.php?page_layout=user"><svg class="glyph stroked male user ">
						<use xlink:href="#stroked-male-user" />
					</svg>Quản lý thành viên</a></li>
			<li><a href="index.php?page_layout=category"><svg class="glyph stroked open folder">
						<use xlink:href="#stroked-open-folder" />
					</svg>Quản lý danh mục</a></li>
			<li><a href="index.php?page_layout=product"><svg class="glyph stroked bag">
						<use xlink:href="#stroked-bag"></use>
					</svg>Quản lý sản phẩm</a></li>
			<li><a href="index.php?page_layout=blog"><svg class="glyph stroked bag">
						<use xlink:href="#stroked-bag"></use>
					</svg>Quản lý bài viết tin tức</a></li>
			<li><a href="index.php?page_layout=blogkibie"><svg class="glyph stroked bag">
						<use xlink:href="#stroked-bag"></use>
					</svg>Quản lý bài viết Kibie</a></li>
			<li><a href="index.php?page_layout=introduce"><svg class="glyph stroked bag">
						<use xlink:href="#stroked-bag"></use>
					</svg>Quản lý bài viết giới thiệu công ty</a></li>
			<li><a href="index.php?page_layout=giftcode"><svg class="glyph stroked bag">
						<use xlink:href="#stroked-bag"></use>
					</svg>Quản lý mã giảm giá</a></li>
			<li><a href="index.php?page_layout=signup-test"><svg class="glyph stroked bag">
						<use xlink:href="#stroked-bag"></use>
					</svg>Danh sách đăng kí mẫu nhận thử</a></li>
			<li><a href="index.php?page_layout=order"><svg class="glyph stroked bag">
						<use xlink:href="#stroked-bag"></use>
					</svg>Thông tin người mua hàng</a></li>
		</ul>

	</div>
	<!--/.sidebar-->

	<?php
	//	Master Page
	if (isset($_GET['page_layout'])) {
		switch ($_GET['page_layout']) {
			case 'category':
				include_once('category.php');
				break;
			case 'add_category':
				include_once('add_category.php');
				break;
			case 'edit_category':
				include_once('edit_category.php');
				break;

			case 'product':
				include_once('product.php');
				break;
			case 'add_product':
				include_once('add_product.php');
				break;
			case 'edit_product':
				include_once('edit_product.php');
				break;

			case 'user':
				include_once('user.php');
				break;
			case 'add_user':
				include_once('add_user.php');
				break;
			case 'edit_user':
				include_once('edit_user.php');
				break;

			case 'introduce':
				include_once('introduce.php');
				break;
			case 'edit_introduce':
				include_once('edit_introduce.php');
				break;

			case 'blog':
				include_once('blog.php');
				break;
			case 'add_blog':
				include_once('add_blog.php');
				break;
			case 'edit_blog':
				include_once('edit_blog.php');
				break;

			case 'blogkibie':
				include_once('blogkibie.php');
				break;
			case 'add_blogkibie':
				include_once('add_blogkibie.php');
				break;
			case 'edit_blogkibie':
				include_once('edit_blogkibie.php');
				break;

			case 'order':
				include_once('order.php');
				break;

			case 'signup-test':
				include_once('signup-test.php');
				break;

			case 'giftcode':
				include_once('giftcode.php');
				break;
			case 'add_giftcode':
				include_once('add_giftcode.php');
				break;
			case 'edit_giftcode':
				include_once('edit_giftcode.php');
				break;
		}
	} else {
		include_once('statistic.php');
	}




	?>
</body>

</html>