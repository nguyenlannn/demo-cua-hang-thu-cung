<div class="row">
<div class="panel panel-info">
	  <div class="panel-heading" style="background-image:url(upload/BackGround/tim.jpg);">
	    <h3 style="color:aliceblue ;margin-top:10px; margin-left: 6%;font-weight:bold" class="panel-title text-center"><img src="<?php echo base_url(); ?>upload/icon/sale.gif" alt=""><a href="<?php echo base_url('product/tin-tuc'); ?>" class='product_title'>Tin tức khuyến mãi </a><img src="<?php echo base_url(); ?>upload/icon/sale.gif" alt=""></h3>
	  </div>
	  <div class="" >
	  	<div style="background: linear-gradient(120deg, #e0c3fc, #8ec5fc 100%)">
		  
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			  </ol>

			  <!-- Wrapper for slides -->
			  <div style="margin-left: 12%" class="carousel-inner"+ role="listbox">
			  <?php foreach ($slider as  $value) { ?>
			  	<div class="item <?php if($value->sort_order=='1') echo 'active'; ?>">
			      <a href="<?php echo $value->link; ?>"><img src="<?php echo base_url(); ?>/upload/slider/<?php echo $value->image_link; ?>" alt="..."></a>
			      <div style="background-size:cover" class="carousel-caption">
			      </div>
			    </div>
			  <?php } ?>
			    
			  </div>

			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Lùi</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Tiếp theo</span>
			  </a>
		   </div>
		</div>