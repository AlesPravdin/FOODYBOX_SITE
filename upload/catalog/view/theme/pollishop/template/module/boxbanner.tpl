<div class="boxbanner">
  
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a></div>
    <?php } else { ?>
    <div><a href="#"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a></div>
    <?php } ?>
    <?php } ?>
  </div>



