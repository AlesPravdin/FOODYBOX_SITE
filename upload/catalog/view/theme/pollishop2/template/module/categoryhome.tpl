 <div id="slider_horiz" class="categorybox"> 
  
  <div class="box-heading"><?php echo $heading_title; ?></div>
  
    <a class="buttons next" href="#">right</a>
    <a class="buttons prev" href="#">left</a>	
                    
  <div  class="viewport">
  
    <ul class="overview">

<?php foreach ($categoryhome as $categoryhome) { ?>

<li>
      <div> 
         <div class="image"><a href="<?php echo $categoryhome['href']; ?>"><img src="<?php echo $categoryhome['thumb']; ?>" title="<?php echo $categoryhome['name']; ?>" alt="<?php echo $categoryhome['name']; ?>" /></a></div>
         <div class="name"><a href="<?php echo $categoryhome['href']; ?>"><?php echo $categoryhome['name']; ?></a></div>
         <div class="description"><?php echo $categoryhome['description']; ?></div>
      </div>
 </li>     
<?php } ?>

</ul>
</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
			$('.categorybox').tinycarousel({ 
            axis: 'x', // vertical or horizontal scroller? ( x || y ).
            controls: true, // show left and right navigation buttons.
            interval: false, // move to another block on intervals.
            intervaltime: 3000, // interval time in milliseconds.
            rewind: false, // If interval is true and rewind is true it will play in reverse if the last slide is reached.
            animation:true, // false is instant, true is animate.
            duration: 1000, // how fast must the animation move in ms?
            callback: null // fun
			  });	
		});
</script>