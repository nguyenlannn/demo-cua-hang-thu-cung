<div class="row" style="height: 100%">
			<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 clearpadding" style="width:100%;background-image:url(upload/BackGround/nen4.gif)">
				<a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>upload/BackGround/rsz_logo.png" alt="" class="img-responsive"></a>	
			</div>
		<div class="row">
			<nav class="navbar navbar-info re-navbar" >
			  <div class="container-fluid re-container-fluid">
			    <div class="collapse navbar-collapse re-navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav" style="background-image: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
			        <li><a style="color: white; margin-left: 10px " href="<?php echo base_url(); ?>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Trang chủ<span class="sr-only">(current)</span></a></li>

			        <li><a style="color: white;" href="<?php echo base_url('moi'); ?>">Sản phẩm mới</a></li>
			        <li><a style="color: white;" href="<?php echo base_url('ban-chay'); ?>">Sản phẩm bán chạy</a></li>
			        <li><a style="color: white;" href="<?php echo base_url('khuyen-mai'); ?>">Sản phẩm khuyến mại</a></li>
					<li  class="dropdown">
			          <a style="color: white;visibility:visible;opacity:0.9;position:relative" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Danh mục</a>
			          <ul class="dropdown-menu" id="re-dropdown-menu" style="background-color: rgb(144, 129, 241);visibility:visible;opacity:0.8;">
			          <?php foreach ($catalog as $value)
			           {
			           		$name = covert_vi_to_en($value->name);
	  						$name = strtolower($name);
			            ?>
			          	<li><a style="color: white;" style="padding: 10px 20px;" href="<?php echo base_url($name.'-c'.$value->id); ?>"><?php echo $value->name; ?></a></li>
			          <?php } ?>
			          </ul>
			        </li>
					<li><a style="color: white;" href="https://www.facebook.com/profile.php?id=100075333373172">CSKH<img src="<?php echo base_url(); ?>upload/facebook1.png" ></a></li>
			        <?php $this->load->view('site/cart/cart_sh'); ?>
			        
			        <?php if (!isset($user)) { ?>
			        	<li><a style="color: white; width: 215px" href="<?php echo base_url('dang-nhap'); ?>">Đăng nhập</a></li>
			        <?php }else{ ?>
						<li class="dropdown">
				          <a style="color: white; width: 215px" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Xin chào: <?php echo $user->name; ?><span class="caret"></span></a>
				          <ul class="dropdown-menu" style="background-color: rgb(144, 129, 241);visibility:visible;opacity:0.8;">
				          	<li><a style="color: white;" href="<?php echo base_url('user'); ?>">Tài khoản</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a style="color: white;" href="<?php echo base_url('user/logout'); ?>">Đăng xuất</a></li>
				          </ul>
				        </li>
			        <?php } ?>
			      </ul>
			    </div><!-- /.navbar-collapse -->
			    
			  </div><!-- /.container-fluid -->
			</nav>
		</div>