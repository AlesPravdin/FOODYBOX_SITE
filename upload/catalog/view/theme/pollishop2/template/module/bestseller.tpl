 <div id="slider_horiz" class="bestbox"> 
  
  <div class="box-heading"><?php echo $heading_title; ?></div>
  
    <a class="buttons next" href="#">right</a>
    <a class="buttons prev" href="#">left</a>
  	               
  <div  class="viewport">
  
    <ul class="overview">
      <?php foreach ($products as $product) { ?>
       <li>
      <div> 
      <div class="bestsellers slideBox">
       
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?> 
        
        <div class="contentgrid">
            <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <div class="badger_sale"></div>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo utf8_substr(strip_tags(html_entity_decode($product['name'])), 0, 50)."..." ?></a></div>
        
           <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"></a></div>
           <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"></a></div>
           <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
        
           <?php if ($product['rating']) { ?>
           <div class="rating"><img src="catalog/view/theme/pollishop2/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
           <?php } ?>
         </div>
       </div> <!---end contentgrid--> 
        
        
       </div>

       </li>   
      <?php } ?>
    </ul>
    </div>
    
  </div>


<script type="text/javascript">
$(document).ready(function(){
			$('.bestbox').tinycarousel({ 
            axis: 'x', // vertical or horizontal scroller? ( x || y ).
            controls: true, // show left and right navigation buttons.
            interval: true, // move to another block on intervals.
            intervaltime: 6000, // interval time in milliseconds.
            rewind: false, // If interval is true and rewind is true it will play in reverse if the last slide is reached.
            animation: true, // false is instant, true is animate.
            duration: 1000, // how fast must the animation move in ms?
            callback: null // fun
			  });	
		});
</script>

<script type="text/javascript">
$(".bestsellers").hover(
			function()	{$(this).find(".contentgrid").stop().animate({bottom:70}, 500);}, 
			function()  {$(this).find(".contentgrid").stop().animate({bottom:0}, 500);}
			);
</script>