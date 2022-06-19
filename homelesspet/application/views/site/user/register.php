<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('site/head',$this->data); ?>
</head>
<body>
	<div class="container" style="width:100%">
		<?php $this->load->view('site/header',$this->data); ?>

		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding" >
				<div class="panel panel-info " style="background-image:url(upload/BackGround/bg3.jpg)">

						<?php if (isset($message_success) && !empty($message_success)) { ?>
							<h4 style="color:green;text-align: center;margin-top: 30px"><?php echo $message_success; ?></h4>
							
						<?php } ?>
						<?php if (isset($message_fail) && !empty($message_fail)) { ?>
							<h4 style="color:red;text-align: center;margin-top: 30px"><?php echo $message_fail; ?></h4>
						<?php } ?>
				  <div class="panel-body">
				  	<form class="form-horizontal" method="post" action="<?php echo base_url('user/register'); ?>">
					  <div>
						  <h3 style="color: Red;margin-left:47%"> Đăng ký</h3>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-offset-2 col-sm-2 control-label">Họ tên</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="inputEmail3" placeholder="" name="name" value="<?php echo set_value('name'); ?>">
					    </div>
					    <div class="col-sm-3">
				    	<?php echo form_error('name'); ?>
					</div>
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
					    <label for="inputEmail3" class=" col-sm-offset-2 col-sm-2 control-label">Nhập lại mật khẩu</label>
					    <div class="col-sm-4">
					      <input type="password" class="form-control" id="inputEmail3" placeholder="" name="re_password">
					    </div>
					    <div class="col-sm-3">
				    	<?php echo form_error('re_password'); ?>
					</div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-offset-2 col-sm-2 control-label">Địa chỉ</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="inputEmail3" placeholder="" name="address" value="<?php echo set_value('address'); ?>">
					    </div>
					    <div class="col-sm-3">
				    	<?php echo form_error('address'); ?>
					</div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-offset-2 col-sm-2 control-label">Số điện thoại</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="inputEmail3" placeholder="" name="phone" value="<?php echo set_value('phone'); ?>">
					    </div>
					    <div class="col-sm-3">
				    	<?php echo form_error('phone'); ?>
					</div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-4 col-sm-7" >
					      <button style="background-color: rgb(144, 129, 241); font-weight: bold;" type="submit" class="btn btn-success" ><a href="<?php echo base_url('dang-nhap'); ?>" style="color:white"> Đăng ký </a></button>
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