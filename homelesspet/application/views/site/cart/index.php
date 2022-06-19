<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 clearpaddingr">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
						<?php if (isset($message) && !empty($message)) { ?>
							<h4 style="color:red;margin-top: 20px"><?php echo $message; ?></h4>
						<?php }
						if ($total_items > 0) { ?>
							<div class="panel panel-info " style="margin-bottom: 15px">
							  <div class="panel-heading" style="background-color: rgb(144, 129, 241)">
							    <h3 style="color: white;font-weight:bold" class="panel-title"><img src="<?php echo base_url(); ?>upload/card.png" > GIỎ HÀNG ( <?php echo $total_items; ?> sản phẩm )</h3>
							  </div>
							  <div class="panel-body" style="background-color: #f6f3ff">
							  	<table class="table table-hover">
									<thead>
										<th>STT</th>
										<th>Tên sản phẩm</th>
										<th>Hình ảnh</th>
										<th>Số lượng</th>
										<th>Thành tiền</th>
										<th>Xóa</th>
									</thead>
									<tbody>
									<?php 
										$i=0;
										$total_price = 0;
										foreach ($carts as $items) { 
											$total_price = $total_price + $items['subtotal']; ?>
										<tr>
											<td><?php echo $i = $i + 1 ?></td>
											<td><?php echo $items['name']; ?></td>
											<td><img src="<?php echo base_url('upload/product/'.$items['image_link']); ?>" class="img-thumbnail" alt="" style="width: 50px;"></td>
											<td><a class="cart-sumsub" href="<?php echo base_url('cart/update/'.$items['id'].'/sub'); ?>">-</a><input type="text" value="<?php echo $items['qty']; ?>" style="width: 30px;text-align: center;"><a class="cart-sumsub" href="<?php echo base_url('cart/update/'.$items['id'].'/sum'); ?>">+</a></td>
											<td><?php echo number_format($items['subtotal']); ?> VNĐ</td>
											<td><a  href="<?php echo base_url('cart/del/'.$items['id']); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
										</tr>
									<?php	}
									?>
										
										<tr>
											<td colspan="4">Tổng tiền</td>
											<td style="font-weight: bold;color:#001100	"><?php echo number_format($total_price); ?> VNĐ</td>
											<td><a style="font-weight: bold;color: red" href="<?php echo base_url('cart/del'); ?>">Xóa toàn bộ</a></td>
										</tr>
										<tr>
											<?php if (!isset($user)) { ?>
											<td colspan="6">
												<a style="background-color: rgb(144, 129, 241)" href="<?php echo base_url('dang-nhap'); ?>" class="btn btn-success">Đặt mua</a>
											 <?php } else { ?>
											<td colspan="6">
												<a style="background-color: rgb(144, 129, 241);" href="<?php echo base_url('order'); ?>" class="btn btn-success">Đặt mua</a>
											</td>
									
										<?php } ?>
											<td colspan="6">
												<a style="margin-left:-150px;background-color:rgb(144, 129, 241)" href=<?php echo base_url('product/hot'); ?> class="btn btn-success">Tiếp tục mua sắm</a>
											</td>
									</tr>
									</tbody>
								</table>
								<div style="margin-left:12%" id="paypal-button-container"></div>
								<!-- Include the PayPal JavaScript SDK -->
								<script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>
								<script>
        						// Render the PayPal button into #paypal-button-container
        								paypal.Buttons({

            					// Set up the transaction
           						 		createOrder: function(data, actions) {
                						return actions.order.create({
                   						purchase_units: [{
                        				amount: {
                            			value: '88.44'
                        				}
                    				}]
                				});
           					 },

            				// Finalize the transaction
            				onApprove: function(data, actions) {
                			return actions.order.capture().then(function(orderData) {
                   			// Successful capture! For demo purposes:
                    		console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                    		var transaction = orderData.purchase_units[0].payments.captures[0];
                    		alert('Transaction '+ transaction.status + ': ' + transaction.id + '\n\nSee console for all available details');

                    		// Replace the above to show a success message within this page, e.g.
                    		// const element = document.getElementById('paypal-button-container');
                   			// element.innerHTML = '';
                    		// element.innerHTML = '<h3>Thank you for your payment!</h3>';
                    		// Or go to another URL:  actions.redirect('thank_you.html');
                			});
            			}
        			}).render('#paypal-button-container');
    			</script>
					</div>
						<?php }else{ ?>
							<div class="panel panel-info " style="margin-bottom: 15px">
							  <div class="panel-heading" style="background-color: rgb(144, 129, 241);color:white">
							    <h3 class="panel-title">GIỎ HÀNG ( 0 sản phẩm )</h3>
							  </div>
							  <div class="panel-body">
							  	<div class="text-center">
							  		<img src="<?php echo base_url('upload/empty-cart.png') ?>" alt="">
								  	<h4 style="color:red">Không có sản phẩm trong giỏ hàng</h4>
								 	<a style="background-color: rgb(144, 129, 241);" href="<?php echo base_url('product/hot'); ?>" class="btn btn-success">Mua sắm</a>
							 	</div>
							  	
							  </div>
							</div>
							
						<?php }	
						 ?>
						

						
					</div>
				</div>