<!DOCTYPE html>
<html>
<head>
	<?php $this->load->view('admin/head.php'); ?>
	<link rel="stylesheet" href="css/style.css">
	<title></title>
</head>

<body>
	<div class="panel-body">
		<div class="body">
			<div class="left"></div>
			<div class="right">
				<h7> Đăng nhập </h7>
				<h8> Admin HomelessPet </h8>
				<form role="form" method="post">
						<fieldset>
							<form action="">
								<input class="acc" placeholder="E-mail" name="email" type="email" autofocus=""><?php echo form_error('email'); ?>
								<input class="acc" placeholder="Mật khẩu" name="password" type="password" value=""><?php echo form_error('password'); ?>
							</form>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Nhớ tên đăng nhập
								</label>
							</div>
							<button type="submit" class="login">Đăng nhập</button>
							<h2><?php echo form_error('login'); ?></h2>
						</fieldset>
				</form>
			</div>
		</div>
	</div>	
	<?php $this->load->view('admin/footer.php'); ?>
</body>

</html>
