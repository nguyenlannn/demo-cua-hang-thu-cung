<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 clearpaddingr">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
		<div class="panel panel-info" >
		  <div class="panel-heading" style="background-image: url(upload/BackGround/tim.jpg)">
		    <h3 style="margin-top:20px;color:white;font-weight:bold;margin-left:40%" class="panel-title">Sản phẩm bán chạy</h3>
		  </div>
		  <div class="panel-body" style="background-image: url(upload/BackGround/28.gif); background-size:cover">
		  	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
		  		<?php foreach ($product_list as $value) {
		  			$name = covert_vi_to_en($value->name);
	  				$name = strtolower($name);
	  				 ?>
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 re-padding">
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
							<a href="<?php echo base_url('cart/add/'.$value->id); ?>"><button style="background-image: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%)" class='btn btn-info'> Thêm giỏ hàng</button></a>
			  			</div>
					</div>
				<?php } ?>	
		  	</div>
		  </div>
		</div>
		
	</div>
</div>