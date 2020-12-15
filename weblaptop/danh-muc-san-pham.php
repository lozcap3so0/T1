
    <?php  

     	require_once __DIR__. "/autoload/autoload.php"; 
     //   _debug($_POST['keywork']);
     	 $id =intval(getInput('id'));
     	 $Editcategory= $db->fetchID("category",$id);

 /*               if(empty($Editcategory))
                {
                  $_SESSION['error'] =" Dữ liệu không tồn tại!!!";
                  redirectAdmin("category");
                }*/
         if(isset($_GET['p']))
         {
         	$p = $_GET['p'];

         }else
         {
         	$p = 1;
         }

     	 $sql =" SELECT * FROM product WHERE category_id = $id ";
            if (isset($_POST['keywork']))
            {
                $sql = "SELECT * FROM product WHERE category_id > '0' AND (name LIKE '%".$_POST["keywork"]."%')";
            }


     	 $total = count($db->fetchsql($sql));

     	 $product = $db-> fetchJones("product",$sql,$total,$p,4,true);
     	 $sotrang = $product['page'];
     	 unset($product['page']);
/*     	 _debug($product);*/

     	 $path = $_SERVER['SCRIPT_NAME'];
/*     	 _debug($path);*/
     ?>
    <?php   require_once __DIR__. "/layouts/header.php"; ?>

                    <div class="col-md-9 bor">


                        <section class="box-main1">
                            <h3 class="title-main"><a href="javascript:void(0)"><?php echo isset($Editcategory['name']) ? $Editcategory['name'] : "Sản phẩm tìm kiếm" ?></a> </h3>
                            
                            <div class="showitem clearfix">
                            	<?php foreach ($product as $item): ?>
                            		  <div class="col-md-3 item-product bor">
                                   			<a href="chi-tiet-san-pham.php?id=<?php echo $item['id'] ?>">
                                         	<img src="<?php echo uploads() ?>/product/<?php echo $item['thunbar'] ?>" class="" width="100%" height="180">
                                            </a>
                                            <div class="info-item">
                                             <a href="chi-tiet-san-pham.php?id=<?php echo $item['id'] ?>"><?php echo $item['name'] ?></a>
                                              <p><strike class="sale"><?php echo formatPrice($item['price']) ?>đ</strike><b class="price"><?php echo formatpricesale($item['price'],['sale']) ?>đ</b></p>
                                            </div>
                                            <div class="hidenitem">
                                                <p><a href="chi-tiet-san-pham.php?id=<?php echo $item['id'] ?>"><i class="fa fa-search"></i></a></p>
                                                <p><a href=""><i class="fa fa-heart"></i></a></p>
                                                <p><a href="addcart.php?id=<?php echo $item['id'] ?>"><i class="fa fa-shopping-basket"></i></a></p>
                                            </div>
                                </div>
                            	<?php endforeach ?>
                              
                               </div>
                                <nav class="text-center">
                                	<ul class="pagination">
                                	<?php for ($i=1; $i < $sotrang; $i++) :?>
                                		<li class="<?php echo isset($_GET['p']) && $_GET['p'] == $i ? 'active' : ''?>"><a href="<?php echo $path ?>?id=<?php echo $id ?>&&p=<?php echo $i ?>"><?php echo $i; ?></a></li>
                                	<?php endfor ; ?>
									  
									</ul>
                                </nav>	
                            
                        <!-- noi dung -->
                        </section>

                    </div>
 
    <?php   require_once __DIR__. "/layouts/footer.php"; ?>
               