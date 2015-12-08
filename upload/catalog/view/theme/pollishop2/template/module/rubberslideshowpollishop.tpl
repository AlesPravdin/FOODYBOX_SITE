 <section class="slider">
<div  id="slider_bigimg" class="flexslider">
  <ul class="slides">
        <?php foreach ($banners as $banner) { ?>
           <li>
            <?php if ($banner['link']) { ?>
            	<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" /></a>

            <?php } else { ?>
            	
                <img src="<?php echo $banner['image']; ?>" />
                
            <?php } ?>
            </li>
        <?php } ?>
    </ul>
     </div> 
   <div id="flexcarousel" class="flexslider">
   <div>
          <ul class="slides">
            <?php foreach ($banners as $banner) { ?>
           <li>
                 <p><img src="<?php echo $banner['image']; ?>" /></p>  

            </li>
        <?php } ?>
            </ul>
   </div> 
   </div>
   </section>
           
  <script type="text/javascript">
   $(window).load(function() {
	   
  if ( $("#content").hasClass("homepage") ) {  
	   

  $('#flexcarousel').flexslider({
    animation: "slide",
    controlNav: false,
	directionNav: true,
    animationLoop: true,
    slideshow: true,
    itemWidth:172,
    itemMargin: 0,
    asNavFor: '#slider_bigimg'
  });
   
  $('#slider_bigimg').flexslider({
    animation: "slide",
    controlNav: true,
	directionNav: true,
    animationLoop: true,
    slideshow: false,
	slideshowSpeed: 7000, 
    animationSpeed: 600, 
    sync: "#flexcarousel"
  });

	 } else {
	 $('#slider_bigimg').flexslider({
    animation: "slide",
	controlNav: true,
	directionNav: true,
    animationLoop: true,
	slideshow: true,
    slideshowSpeed: 7000, 
    animationSpeed: 600, 
    itemWidth: 750,             //{NEW} Integer: Box-model width of individual carousel items, including horizontal borders and padding.
    itemMargin:0,               //{NEW} Integer: Margin between carousel items.
    minItems: 1,                //{NEW} Integer: Minimum number of carousel items that should be visible. Items will resize fluidly when below this.
    maxItems: 5                 //{NEW} Integer: Maxmimum number of carousel items that should be visible. Items will resize fluidly when above this limit.
  });
	$('#flexcarousel').css('display','none');
	 }
	 
	 
});
  </script>
