<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('site/head',$this->data); ?>
</head>
<body>
	<div class="container" style="width:100% ; background-image:url(upload/BackGround/bg3.jpg)">
		<?php $this->load->view('site/header',$this->data); ?>

		<div class="row" >
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding" style="margin-top: 15px;">
				<div class="panel panel-info ">
					<?php if (isset($message_fail) && !empty($message_fail)) { ?>
						<?php echo $message_fail; ?>
					<?php } ?>
				  <div class="panel-body"style="background-image: url(upload/BackGround/bg3.jpg);">
				  	<form class="form-horizontal" method="post" action="<?php echo base_url('user/login'); ?>">
				  		<div class="form-group">
				  			 <h3 style="color: red"><?php echo form_error('login'); ?></h3>
				  		</div>
						  <div style="margin-left: 45%;padding:20px;color:#333333">
							  <h3> Đăng nhập</h3>
						  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class=" col-sm-offset-2 col-sm-2 control-label">Email</label>
					    <div class="col-sm-4">
					      <input type="email" class="form-control" id="inputEmail3" placeholder="" name="email" value="<?php echo set_value('email'); ?>">
					    </div>
						<div class="col-sm-3">
					    	<?php echo form_error('email'); ?>
						</div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-offset-2 col-sm-2 control-label">Mật khẩu</label>
					    <div class="col-sm-4">
					      <input type="password" class="form-control" id="inputEmail3" placeholder="" name="password">
					    </div>
					    <div class="col-sm-3">
					    	<?php echo form_error('password'); ?>
						</div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-4 col-sm-2">
					      <button style="background-color: rgb(144, 129, 241); font-weight: bold;" type="submit" class="btn btn-success">Đăng nhập</button>
					    </div>
					    <div class="col-sm-offset-1 col-sm-2">
							<p style="display: inline;margin-left:-100px" >Chưa có tài khoản ?</p>
					      <button><a style="font-weight: bold;" href="<?php echo base_url('dang-ky'); ?>">Đăng kí</a></button>
					    </div>
					  </div>
					</form>				  	
				  </div>

					</div>
			</div>
		</div>
		<?php $this->load->view('site/footer',$this->data); ?>
	</div>
    <script src="<?php echo public_url('site/'); ?>bootstrap/js/bootstrap.min.js"></script>
</body>
</html>