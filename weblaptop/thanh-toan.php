
    <?php   
    	require_once __DIR__. "/autoload/autoload.php"; 

    	$user = $db->fetchID("users",intval($_SESSION['name_id']));
    	// _debug($user);
    	if ($_SERVER["REQUEST_METHOD"] == "POST") 
    	{
    		$data =
    		[
    			'amount' => $_SESSION['total'],
    			'users_id' => $_SESSION['name_id'],
    			'note' => postInput("note")
    		];

    		// _debug($data);
    		$idtran = $db-> insert("transaction",$data);
    		if($idtran > 0)
    		{
    			foreach ($_SESSION['cart'] as $key => $value)
    			{
    				$data2 =
    				[
    					'transaction_id' => $idtran,
    					'product_id' => $key,
    					'qty' => $value['qty'],
    					'price' => $value['price']
    				];

    				$id_insert = $db->insert("orders",$data2);
    			}
    			unset($_SESSION['cart']);
    			 unset($_SESSION['total']);
    			$_SESSION['success'] = " Lưu thông tin đơn hàng thành công! Chúng tôi sẽ liên hệ với bạn sớm nhất! ";
    			header("location: thong-bao.php");
    		}
    	}
    	

    ?>
    <?php   require_once __DIR__. "/layouts/header.php"; ?>

                    <div class="col-md-9 bor">


                        <section class="box-main1">
                            <h3 class="title-main"><a href=""> Thanh toán </a> </h3>
                            
                             <form action="" method="POST" class="form-horizontal" role="form" style="margin-top:20px ">
                                <div class="form-group">
                                <img src="images/biglaptop.gif" height="150px" class="col-md-offset-5">
                            </div>
                            <div class="form-group">
                            	<label class="col-sm-3 control-label"> Tên thành viên </label>
                            	<div class="col-md-8">
                            		<input type="text" readonly="" name="name" placeholder=" Mời bạn nhập tên " class="form-control" value="<?php echo $user['name'] ?>">
                                    
                            	</div>
                            </div>
                             <div class="form-group">
                            	<label class="col-sm-3 control-label"> Email </label>
                            	<div class="col-md-8">
                            		<input type="email" readonly="" name="email" placeholder=" Email@gmail.com " class="form-control" value="<?php echo $user['email'] ?>">
                                    
                            	</div>
                            </div>
                               
                              	<div class="form-group">
                            	<label class="col-sm-3 control-label"> Số điện thoại </label>
                            	<div class="col-md-8">
                            		<input type="number" readonly="" name="phone" placeholder=" 034295**** " class="form-control" value="<?php echo $user['phone'] ?>">
                                   
                            	</div>
                            </div>
                               <div class="form-group">
                            	<label class="col-sm-3 control-label"> Địa chỉ </label>
                            	<div class="col-md-8">
                            		<input type="text" readonly="" name="address" placeholder=" 180 Đường Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh" class="form-control" value="<?php echo $user['address'] ?>">
                                    
                            	</div>
                            </div>
                              <div class="form-group">
                            	<label class="col-sm-3 control-label"> Số tiền </label>
                            	<div class="col-md-8">
                            		<input type="text" readonly="" name="address" placeholder=" 180 Đường Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh" class="form-control" value="<?php echo formatPrice($_SESSION['total']) ?>đ">
                                    
                            	</div>
                            </div>
                             <div class="form-group">
                            	<label class="col-sm-3 control-label"> Ghi chú </label>
                            	<div class="col-md-8">
                            		<input type="text"  name="note" placeholder=" Giao hàng tận nơi " class="form-control" value="">
                                    
                            	</div>
                            </div>
                            <button type="submit" readonly="" class="btn btn-success col-sm-2 col-md-offset-5" style="margin-bottom: 20px"> Xác nhận </button>
                            </form>
                        <!-- noi dung -->
                        </section>

                    </div>
 
    <?php   require_once __DIR__. "/layouts/footer.php"; ?>
               