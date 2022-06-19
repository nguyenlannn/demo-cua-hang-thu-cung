<div class="row">
<div class="panel panel-info" >
	  <div class="panel-heading" style="background-image:url(upload/BackGround/tim.jpg)">
	    <h3 style="color: aliceblue; margin-top:5px; margin-left: 5%; font-weight:bold" class="panel-title text-center"><img src="<?php echo base_url(); ?>upload/icon/moi.gif" alt=""><a href="<?php echo base_url('product/news'); ?>" class='product_title'>Sản phẩm mới </a><img src="<?php echo base_url(); ?>upload/icon/moi.gif" alt=""></h3>
	  </div>
	  <div class="panel-body" style="background: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%)" >
	  	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding" >
			<?php foreach ($new_product as $value) {
				$name = covert_vi_to_en($value->name);
	  			$name = strtolower($name);
				 ?>
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
		  			<div class="product_item" style="background-color: rgba(255, 255, 255, 60%)">
		  				<p class="product_name" ><a style="color: rgb(144, 129, 241)" href="<?php echo base_url($name.'-p'.$value->id); ?>" ><?php echo $value->name; ?></a></p>
		  				<div class="product-image">
		  					<a href="<?php echo base_url($name.'-p'.$value->id); ?>"><img src="<?php echo base_url(); ?>upload/product/<?php echo $value->image_link; ?>" alt="" class=""></a>
		  				</div>
		  				<?php if ($value->discount>0) { 
		  					$new_price = $value->price - $value->discount; ?>
		  					<p><span class='price text-right'><?php echo number_format($new_price); ?> VNĐ</span> <del class="product-discount"><?php echo number_format($value->price); ?> VNĐ</del></p>
		  				<?php }else{ ?>
							<p><span class='price text-right'><?php echo number_format($value->price); ?> VNĐ</span></p>
		  				<?php	} ?>
						  <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true" title="Số lượt xem"></span> <?php echo $value->view; ?> <span class="glyphicon glyphicon-star-empty" aria-hidden="true" title="Số lượng đặt mua"><?php echo $value->buyed; ?></p>
						<a href="<?php echo base_url('cart/add/'.$value->id); ?>"><button style="background-image: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%)" class='btn btn-info'> Thêm giỏ hàng</button></a>
		  			</div>
				</div>
			<?php } ?>	
	  	</div>
	  </div>
	</div>	
</div>
<div class="row">
	<div class="panel panel-info">
	  <div class="panel-heading" style="background-image:url(upload/BackGround/tim.jpg)">
	    <h3 style="color: aliceblue; margin-top:25px;margin-left: 5%; font-weight:bold" class="panel-title text-center" ><img src="<?php echo base_url(); ?>upload/icon/hot.gif" alt=""><a href="<?php echo base_url('ban-chay'); ?>" class='product_title'>Sản phẩm bán chạy</a><img src="<?php echo base_url(); ?>upload/icon/hot.gif" alt=""></h3>
	  </div>
	  <div class="panel-body" style="background: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%);">
	  <div class=”green”></div>
	  	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding" >
	  		<?php foreach ($hot_product as $value) {
	  			$name = covert_vi_to_en($value->name);
	  			$name = strtolower($name);
	  			 ?>
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3" >
		  			<div class="product_item" style="background-color: rgba(255, 255, 255, 60%)">
		  				<p class="product_name" ><a style="color: rgb(144, 129, 241)" href="<?php echo base_url($name.'-p'.$value->id); ?>" ><?php echo $value->name; ?></a></p>
		  				<div class="product-image">
		  					<a href="<?php echo base_url($name.'-p'.$value->id); ?>"><img src="<?php echo base_url(); ?>upload/product/<?php echo $value->image_link; ?>" alt="" class=""></a>
		  				</div>
		  				<?php if ($value->discount>0) { 
		  					$new_price = $value->price - $value->discount; ?>
		  					<p><span class='price text-right'><?php echo number_format($new_price); ?> VNĐ</span> <del class="product-discount"><?php echo number_format($value->price); ?> VNĐ</del></p>
		  				<?php }else{ ?>
							<p><span class='price text-right'><?php echo number_format($value->price); ?> VNĐ</span></p>
		  				<?php	} ?>
						<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true" title="Số lượt xem"></span> <?php echo $value->view; ?> <span class="glyphicon glyphicon-star-empty" aria-hidden="true" title="Số lượng đặt mua"><?php echo $value->buyed; ?></p>
						<a href="<?php echo base_url('cart/add/'.$value->id); ?>"><button class='btn btn-info' style="background-image: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%)"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Thêm giỏ hàng</button></a>
		  			</div>
				</div>
			<?php } ?>	
	  	</div>  
	  </div>
	</div>	
</div>
<div class="row">
	<div class="panel panel-info">
	  <div class="panel-heading" style="background-image:url(upload/BackGround/tim.jpg)">
	    <h3 class="panel-title text-center" style="color: aliceblue; margin-top:20px;margin-left: 4%; font-weight:bold"><img src="<?php echo base_url(); ?>upload/icon/hot.gif" alt=""><a href="<?php echo base_url('product/views'); ?>" class='product_title'>Sản phẩm xem nhiều</a><img src="<?php echo base_url(); ?>upload/icon/hot.gif" alt=""></h3>
	  </div>
	  <div class="panel-body" style="background: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%);">
	  	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
	  		<?php foreach ($view_product as $value) {
	  			$name = covert_vi_to_en($value->name);
	  			$name = strtolower($name);
	  			 ?>
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
		  			<div class="product_item" style="background-color: rgba(255, 255, 255, 60%)">
		  				<p class="product_name" ><a style="color: rgb(144, 129, 241)" href="<?php echo base_url($name.'-p'.$value->id); ?>" ><?php echo $value->name; ?></a></p>
		  				<div class="product-image">
		  					<a href="<?php echo base_url($name.'-p'.$value->id); ?>"><img src="<?php echo base_url(); ?>upload/product/<?php echo $value->image_link; ?>" alt="" class=""></a>
		  				</div>
		  				<?php if ($value->discount>0) { 
		  					$new_price = $value->price - $value->discount; ?>
		  					<p><span class='price text-right'><?php echo number_format($new_price); ?> VNĐ</span> <del class="product-discount"><?php echo number_format($value->price); ?> VNĐ</del></p>
		  				<?php }else{ ?>
							<p><span class='price text-right'><?php echo number_format($value->price); ?> VNĐ</span></p>
		  				<?php	} ?>
						<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true" title="Số lượt xem"></span> <?php echo $value->view; ?> <span class="glyphicon glyphicon-star-empty" aria-hidden="true" title="Số lượng đặt mua"><?php echo $value->buyed; ?></p>
						<a href="<?php echo base_url('cart/add/'.$value->id); ?>"><button class='btn btn-info' style="background-image: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%)"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Thêm giỏ hàng</button></a>
		  			</div>
				</div>
			<?php } ?>	
	  	</div>  
	  </div>
	</div>	
</div>