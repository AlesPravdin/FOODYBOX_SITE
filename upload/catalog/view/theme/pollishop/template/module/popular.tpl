    <div class="popularbox">
    <div class="box-heading"><?php echo $heading_title; ?></div>
    <div class="sliderkit newslider-vertical">
					<div class="sliderkit-nav">
						<div class="sliderkit-nav-clip">
							<ul>
                             
                             <?php foreach ($products as $product) { ?>
                            
								<li><a href="<?php echo $product['href']; ?>"><?php echo utf8_substr(strip_tags(html_entity_decode($product['name'])), 0, 70)."..." ?></a></li>
                               <?php } ?>
                              
							</ul>
						</div>
					</div>
              
                   
					<div class="sliderkit-panels"> 
                    <?php foreach ($products as $product) { ?>
						<div class="sliderkit-panel">
							<div class="sliderkit-news">
								<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
								
                                
								<div id="description">
                                <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                                <?php if ($product['price']) { ?>
                                  <div class="price">
                                  <?php if (!$product['special']) { ?>
                                  <?php echo $product['price']; ?>
                                  <?php } else { ?>
                                  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                                  <?php } ?>
                                  </div>
                                <?php } ?>
                                  <div class="description"><?php echo utf8_substr(strip_tags(html_entity_decode($product['description'])), 0, 120)."..." ?></div>
                                 
                               <div class="cart">
        	
	                          <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
                             </div>
                             <?php if ($product['rating']) { ?>
                                 <div class="rating"><img src="catalog/view/theme/pollishop/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                                <?php } ?>
                           </div>
                           
							</div>
						</div>
                         <?php } ?> 
                        </div>
                       
  </div>
  </div>

<script  type="text/javascript">  
$(function () {
jQuery(".newslider-vertical").sliderkit({
					shownavitems:8,
					verticalnav:true,
					navitemshover:true
				});
});	
</script>
   