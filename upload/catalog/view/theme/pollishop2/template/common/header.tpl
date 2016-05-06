<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/pollishop2/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pollishop2/stylesheet/responsive.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pollishop2/stylesheet/cloud-zoom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pollishop2/stylesheet/carousel.css" />

<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>



<?php foreach ($styles as $style) { ?>

<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />

<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/pollishop2/js/cloud-zoom.1.0.2.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/pollishop2/js/custom.js"></script>
<script type="text/javascript" src="catalog/view/theme/pollishop2/js/newselect.js"></script>
<script type="text/javascript" src="catalog/view/theme/pollishop2/js/menu_script.js"></script>  
<script type="text/javascript" src="catalog/view/theme/pollishop2/js/jquery.tinycarousel.min.js"></script> 
<script type="text/javascript" src="catalog/view/theme/pollishop2/js/jquery.mousewheel.min.js"></script> 
<script language="javascript" src="catalog/view/theme/pollishop2/js/jquery.tweet.js" type="text/javascript"></script>


<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>


<!--[if IE 7]>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/pollishop2/stylesheet/ie7.css" />

<![endif]-->

<!--[if lt IE 7]>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/pollishop2/stylesheet/ie6.css" />

<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>

<script type="text/javascript">

DD_belatedPNG.fix('#logo img');

</script>

<![endif]-->

<?php 

// If pollishop module is enabled

if($this->config->get('pollishop2_status')== 1) {

	if($this->config->get('pollishop2_title_font')!='' || $this->config->get('pollishop2_body_font')!='') {
		
		$regfonts = array('Arial', 'Verdana', 'Helvetica', 'Lucida Grande', 'Trebuchet MS', 'Times New Roman', 'Tahoma', 'Georgia' );
		
		// Titles font
		if (in_array($this->config->get('pollishop2_title_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('pollishop2_title_font') ?>&v1' rel='stylesheet' type='text/css'><?php 
		} // Body font
		if (in_array($this->config->get('pollishop2_body_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('pollishop2_body_font') ?>&v1' rel='stylesheet' type='text/css'><?php 
		}  
	} 
?>

	<style type="text/css">

		body{
			<?php if($this->config->get('pollishop2_backgr_color')!='') { ?>
				background-color: <?php echo $this->config->get('pollishop2_backgr_color'); ?>;
			<?php } 
           if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = $this->config->get('config_url');
			else $path_image = $this->config->get('config_url');
			
			if($this->config->get('pollishop2_custom_pattern')!='') { ?>
			
			background-image: url("<?php echo $path_image .'image/' . $this->config->get('pollishop2_custom_pattern') ?>"); ?>;
			
           <?php } else if($this->config->get('pollishop2_pattern_overlay')!='none') { ?>
				background-image: url("catalog/view/theme/pollishop2/image/patterns/overlay<?php echo $this->config->get('pollishop2_pattern_overlay'); ?>.png");
			<?php } else { ?>
				background-image: none;
			<?php } ?>
		   }
		   
		   <?php 
			if($this->config->get('pollishop2_menubar_color')!='') { ?>
			#headermenu, #powered, .menuResp > li, .menuResp, .menuResp >li > div a:hover{
				background-color: <?php echo $this->config->get('pollishop2_menubar_color'); ?>;
			}
			.htabs a.selected {border-top-color: <?php echo $this->config->get('pollishop2_menubar_color'); ?>;
			}
			<?php } 
			
          if($this->config->get('pollishop2_menulink_color')!='') { ?>
			#wrapper_menu .menu li.fullwidth > a {
				color: <?php echo $this->config->get('pollishop2_menulink_color'); ?>;
			}				
		<?php }
		if($this->config->get('pollishop2_hover_color')!='') { ?>
			#wrapper_menu .menu li.fullwidth > a :hover{
				color: <?php echo $this->config->get('pollishop2_hover_color'); ?>;
			}				
		<?php }	
		 if($this->config->get('pollishop2_menulink2_color')!='') { ?>
			#wrapper_menu .menu  .col_1 > div a, #wrapper_menu .menu  .col_1 > div  {
				color: <?php echo $this->config->get('pollishop2_menulink2_color'); ?>;
			}				
		<?php }
		if($this->config->get('pollishop2_hover2_color')!='') { ?>
			#wrapper_menu .menu  .col_1 > div a:hover{
				color: <?php echo $this->config->get('pollishop2_hover2_color'); ?>;
			}				
		<?php }	
		 if($this->config->get('pollishop2_menulink3_color')!='') { ?>
			#wrapper_menu .menu .col_1 ul li a {
				color: <?php echo $this->config->get('pollishop2_menulink3_color'); ?>;
			}				
		<?php }
		if($this->config->get('pollishop2_hover3_color')!='') { ?>
			#wrapper_menu .menu .col_1 ul li a:hover{
				color: <?php echo $this->config->get('pollishop2_hover3_color'); ?>;
			}				
		<?php }	
			if($this->config->get('pollishop2_multicolorbutton1')!='') { ?>
			#wrapper_menu .multicolor1, #mobile-menu{
				background-color: <?php echo $this->config->get('pollishop2_multicolorbutton1'); ?>;
			}				
		<?php }
		if($this->config->get('pollishop2_multicolorbutton2')!='') { ?>
			#wrapper_menu .multicolor2{
				background-color: <?php echo $this->config->get('pollishop2_multicolorbutton2'); ?>;
			}				
		<?php }
		if($this->config->get('pollishop2_multicolorbutton3')!='') { ?>
			#wrapper_menu .multicolor3{
				background-color: <?php echo $this->config->get('pollishop2_multicolorbutton3'); ?>;
			}				
		<?php }
		
		if($this->config->get('pollishop2_categ_color')!='') { ?>
			.box-category a {
				color: <?php echo $this->config->get('pollishop2_categ_color'); ?>;
			}				
			
		<?php }	
		if($this->config->get('pollishop2_hovercateg_color')!='') { ?>
			.box-category a:hover, .box-category > ul > li a.active, .box-category > ul > li a.active2  {
				color: <?php echo $this->config->get('pollishop2_hovercateg_color'); ?>;
			}				
			
		<?php }	
			if($this->config->get('pollishop2_activline_color')!='') { ?>
			.box-category li li:hover {
				background-color: <?php echo $this->config->get('pollishop2_activline_color'); ?>;
			}	
		<?php }		
		
		if($this->config->get('pollishop2_footertitle_color')!='') { ?>
			#footer h3 {
				color: <?php echo $this->config->get('pollishop2_footertitle_color'); ?>;
			}				
			
		<?php }		
		if($this->config->get('pollishop2_footer_color')!='') { ?>
			#footer .column a, #footer .tweetcolumn a, #footer .contact-column a  {
				color: <?php echo $this->config->get('pollishop2_footer_color'); ?>;
			}				
			
		<?php }	
		if($this->config->get('pollishop2_footertext_color')!='') { ?>
			#footer {
				color: <?php echo $this->config->get('pollishop2_footertext_color'); ?>;
			}				
			
		<?php }				
		
		if($this->config->get('pollishop2_alllink_color')!='') { ?>
			a, a b{
				color: <?php echo $this->config->get('pollishop2_alllink_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_allactive_color')!='') { ?>
			a:hover, #currency a b, 
			.product-grid .name a:hover, .product-list .name a:hover,
			.product-list .wishlist a:hover, .product-list .compare a:hover 
			{
				color: <?php echo $this->config->get('pollishop2_allactive_color'); ?>;
			}

			
		<?php }	
		
		if($this->config->get('pollishop2_bigtitle_color')!='') { ?>
			h1, h2, h3, .right_related .box-heading, #slider_horiz .box-heading, 
			.popularbox .box-heading, .box .box-heading, #slider_vert .box-heading,
            .right_related .box-heading, .welcome{
				color: <?php echo $this->config->get('pollishop2_bigtitle_color'); ?>;
			}				
			
		<?php }	

		if($this->config->get('pollishop2_borderactiv_color')!='') { ?>
			.product-grid > div:hover, #slider_horiz .overview li > div:hover, 
			.slides .flex-active-slide p img, .slides p img:hover{
				border-color: <?php echo $this->config->get('pollishop2_borderactiv_color'); ?>;
			}	
			.pagination .links b{ background-color:<?php echo $this->config->get('pollishop2_borderactiv_color'); ?>;}			
			
		<?php }	
		
		if($this->config->get('pollishop2_border_color')!='') { ?>
			.product-grid > div, #slider_horiz .overview li > div, .bycategory #slider_vert .light, .product-list > div 
			{
				border-color: <?php echo $this->config->get('pollishop2_border_color'); ?>;
			}	
			.pagination .links b{ background-color:<?php echo $this->config->get('pollishop2_borderactiv_color'); ?>;}			
			
		<?php }	
		
		if($this->config->get('pollishop2_titleitem_color')!='') { ?>
			#slider_horiz .name a, .htabs a.selected, .product-grid .name a, .product-list .name a,
			.newslider-vertical .sliderkit-news h3 a, .bycategory #slider_vert .name a{
				color: <?php echo $this->config->get('pollishop2_titleitem_color'); ?>;
			}				
			
		<?php }
				if($this->config->get('pollishop2_titleitemdark_color')!='') { ?>
			#slider_vert .name a{
				color: <?php echo $this->config->get('pollishop2_titleitemdark_color'); ?>;
			}				
			
		<?php }
		
		if($this->config->get('pollishop2_btext_color')!='') { ?>
			body, .breadcrumb a{
				color: <?php echo $this->config->get('pollishop2_btext_color'); ?>;
			}				
			
		<?php }
		
		if($this->config->get('pollishop2_allprice_color')!='') { ?>
			#slider_horiz .price, .sliderkit-news .price, .product-grid .price, .product-list .price,
			.product-info .price, .bycategory #slider_vert .price{
				color: <?php echo $this->config->get('pollishop2_allprice_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_oprice_color')!='') { ?>
			#slider_horiz .price-old, .sliderkit-news .price-old, .product-grid .price-old,
			.product-list .price-old, .product-info .price-old, .bycategory #slider_vert .price-old  {
				color: <?php echo $this->config->get('pollishop2_oprice_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_nprice_color')!='') { ?>
			#slider_horiz .price-new, .sliderkit-news .price-new, .product-grid .price-new,
			.product-list .price-new, .product-info .price-new , .bycategory #slider_vert .price-new {
				color: <?php echo $this->config->get('pollishop2_nprice_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_allprice2_color')!='') { ?>
			#slider_vert .price{
				color: <?php echo $this->config->get('pollishop2_allprice2_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_oprice2_color')!='') { ?>
			#slider_vert .price-old {
				color: <?php echo $this->config->get('pollishop2_oprice2_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_nprice2_color')!='') { ?>
			#slider_vert .price-new {
				color: <?php echo $this->config->get('pollishop2_nprice2_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_button1_top_color')!='') { ?>
			 .cart input.button, #button-cart, .product-info #button-cart{
				background-color: <?php echo $this->config->get('pollishop2_button1_top_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_button1_bottom_color')!='') { ?>
			 .cart input.button:hover, #button-cart:hover, .product-info #button-cart:hover,
			 #header .button-search:hover{
				background-color: <?php echo $this->config->get('pollishop2_button1_bottom_color'); ?>;
			}				
			
		<?php }
		
		if($this->config->get('pollishop2_button1_text_color')!='') { ?>
			 .cart input.button, #button-cart, .product-info #button-cart,
			  .cart input.button:hover, #button-cart:hover, .product-info #button-cart:hover{
				color: <?php echo $this->config->get('pollishop2_button1_text_color'); ?>;
			}				
			
		<?php }	
		
		
		if($this->config->get('pollishop2_button2_top_color')!='') { ?>
			 a.button, input.button{
				background-color: <?php echo $this->config->get('pollishop2_button2_top_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_bn2_bm_color')!='') { ?>
			 a.button:hover, input.button:hover{
				background-color: <?php echo $this->config->get('pollishop2_bn2_bm_color'); ?>;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_button2_text_color')!='') { ?>
			 a.button, input.button, a.button:hover, input.button:hover{
				color: <?php echo $this->config->get('pollishop2_button2_text_color'); ?>;
			}				
			
		<?php }	
		if($this->config->get('pollishop2_wishlist_top_color')!='') { ?>
			.product-grid .wishlist a, #slider_horiz .wishlist a, .product-info a.wishlist1{
				background-color: <?php echo $this->config->get('pollishop2_wishlist_top_color'); ?>;
			}
		<?php }		
			
		if($this->config->get('pollishop2_wishlist_bottom_color')!='') { ?>
			.product-grid .wishlist a:hover, #slider_horiz .wishlist a:hover, .product-info a.wishlist1:hover{
				background-color: <?php echo $this->config->get('pollishop2_wishlist_bottom_color'); ?>;
			}				
			
		<?php }
		if($this->config->get('pollishop2_compare_top_color')!='') { ?>
			.product-grid .compare a, #slider_horiz .compare a, .product-info a.compare1{
				background-color: <?php echo $this->config->get('pollishop2_compare_top_color'); ?>;
			}
		<?php }		
			
		if($this->config->get('pollishop2_compare_bottom_color')!='') { ?>
			.product-grid .compare a:hover, #slider_horiz .compare a:hover, .product-info a.compare1:hover{
				background-color: <?php echo $this->config->get('pollishop2_compare_bottom_color'); ?>;
			}				
			
		<?php }								
			
		
		if ($this->config->get('pollishop2_body_font') != '' ) {
			$fontpre =  $this->config->get('pollishop2_body_font');
			$font = str_replace("+", " ", $fontpre);
		?>

		body, td, th, input, textarea, select, a, #header #search input
		{ font-family:<?php echo $font ?>; }

		<?php } 
			if($this->config->get('pollishop2_title_font')!='') {
			$fontpre =  $this->config->get('pollishop2_title_font');
			$font = str_replace("+", " ", $fontpre);
		?>

		h1, h2, h3, .welcome, #slider_horiz .box-heading, .popularbox .box-heading, 
        .box .box-heading, #slider_vert .box-heading,.right_related .box-heading, span.select1,
		#wrapper_menu .menu  li.fullwidth > a , #wrapper_menu .menu  .col_1 > div a, #wrapper_menu .menu  .col_1 > div,
		#slider_horiz .name a, #slider_horiz .price,
		#slider_vert .price, #slider_vert .name a,
		.box-category > ul > li > a, .box-content > ul > li > a, 
		.product-list .name a, .product-list .price, .product-grid .name a,
		.product-grid .price, .product-info .price, 
		#footer h3, .product-compare a,
		.newslider-vertical .sliderkit-nav-clip li a,
		.newslider-vertical .sliderkit-news h3 a, .sliderkit-news .price,
		.product-filter .limit,
		.product-info .description span, .product-info .price,
		.attribute thead td, .attribute thead tr td:first-child,
		.compare-info thead td, .compare-info thead tr td:first-child,
		.checkout-heading, .bycategory #slider_vert .name a, .bycategory #slider_vert .price {
			font-family:<?php echo $font ?>;
		}
		
		<?php }	
		
		
		if($this->config->get('pollishop2_headersize')!='') { ?>
			 h1, .product-info .price, .welcome{
				font-size: <?php echo $this->config->get('pollishop2_headersize'); ?>px;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_header2size')!='') { ?>
			#slider_horiz .box-heading, .popularbox .box-heading, 
            .box .box-heading, #slider_vert .box-heading,
            .right_related .box-heading {
				font-size: <?php echo $this->config->get('pollishop2_header2size'); ?>px;
			}				
			
		<?php }	
		if($this->config->get('pollishop2_headersize3')!='') { ?>
			.product-list .name a, .product-grid .name a, h2, h3, #footer h3,
			.newslider-vertical .sliderkit-nav-clip li a, .newslider-vertical .sliderkit-news h3 a,
			#slider_vert .name a, #slider_horiz .name a, .bycategory #slider_vert .name a{
				font-size: <?php echo $this->config->get('pollishop2_headersize3'); ?>px;
			}				
			
		<?php }	
		if($this->config->get('pollishop2_bodysize')!='') { ?>
			body, td, th, input, textarea, select, a, #header #search input,
			#button-cart, .product-info .price .reward, .product-info .price .discount{
				font-size: <?php echo $this->config->get('pollishop2_bodysize'); ?>px;
			}				
			
		<?php }	
		if($this->config->get('pollishop2_pricesize')!='') { ?>
			.product-grid .price, .sliderkit-news .price, #slider_horiz .price,
			#slider_vert .price, .product-list .price, .bycategory #slider_vert .price {
				font-size: <?php echo $this->config->get('pollishop2_pricesize'); ?>px;
			}				
			
		<?php }	
		
		if($this->config->get('pollishop2_toplinksize')!='') { ?>
			#wrapper_menu .menu  li.fullwidth > a, #wrapper_menu .menu  .col_1 > div a, #wrapper_menu .menu  .col_1 > div   {
				font-size: <?php echo $this->config->get('pollishop2_toplinksize'); ?>px;
			}				
			
		<?php }		
		
		if($this->config->get('pollishop2_categorysize')!='') { ?>
			.box-category > ul > li > a, .box-content > ul > li > a  {
				font-size: <?php echo $this->config->get('pollishop2_categorysize'); ?>px;
			}				
		<?php }	
		
		if($this->config->get('pollishop2_home_enable')== 0) { ?>
		.multicolor1{ display:none;}
		<?php }	
		
		if($this->config->get('pollishop2_account_enable')== 0) { ?>
		.multicolor2{ display:none;}
		<?php }
		
		if($this->config->get('pollishop2_contact_enable')== 0) { ?>
		.multicolor3{ display:none;}
		<?php }
		
		if($this->config->get('pollishop2_brand_enable')== 0) { ?>
		.multicolor4{ display:none;}
		<?php }
		
		
																
		?>


   	</style>     
<?php } ?>


<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>


<script>
$(function(){
  $('.navButton').liMenuRespEasy({
    type:'button'
  });
});
</script>


<?php echo $google_analytics; ?>

</head>

<body>



<div id="container">

<div id="header">

<!---------------------------LINKS-------------------------------->
<div id="top-bar">
     <div id="welcome">
        <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
        <?php } else { ?>
        <?php echo $text_logged; ?>
         <?php } ?>
        </div>
        <div id="mobile-currency">
         <?php echo $language; ?>
         <?php echo $currency; ?>
          <div id="boxlink" class="mobilewish"> <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></div>
        </div>
 </div>

<!--------------------------end links---------------------------------->  


 <!---------------------------------LOGO-------------------------------->
  <?php if ($logo) { ?>

  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>

  <?php } ?>
  
<!---------------------------------end logo---------------------------->


<div class="right_topbox">
              
 <!---------------------------------CART------------------------------->
 <?php echo $cart; ?>
 <!---------------------------------end cart--------------------------->
 
 <!---------------------------SEARCH------------------------------------>
    <div class="center_topbox">
               <div class="button-search"></div>         
               <div id="search">
               <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />    
               </div> 
                
                
   </div>             
 <!---------------------------end search------------------------------->    
 </div> 

</div>




 
 <div  id="wrapper_menu">
<!------------------------------------MENU----------------------------->

<?php
$this->language->load('common/footer');
$text_contact = $this->language->get('text_contact');
$text_information = $this->language->get('text_information');

$text_service = $this->language->get('text_service');
$text_return = $this->language->get('text_return');
$text_sitemap = $this->language->get('text_sitemap');

$text_extra = $this->language->get('text_extra');
$text_manufacturer = $this->language->get('text_manufacturer');
$text_voucher = $this->language->get('text_voucher');
$text_affiliate = $this->language->get('text_affiliate');
$text_special = $this->language->get('text_special');

$text_order = $this->language->get('text_order');
$text_newsletter = $this->language->get('text_newsletter');

?>
<?php
$this->language->load('information/contact');
$text_location = $this->language->get('text_location');
$text_address = $this->language->get('text_address');
$text_telephone = $this->language->get('text_telephone');
$text_fax = $this->language->get('text_fax');
?>
<?php
$this->language->load('account/login');
$text_forgotten = $this->language->get('text_forgotten');
$text_register = $this->language->get('text_register');
$entry_email = $this->language->get('entry_email');
$entry_password = $this->language->get('entry_password');
$button_continue = $this->language->get('button_continue');
$button_login = $this->language->get('button_login');
?>
<div id="mobile-menu">

	<select id="mobile-menu-select" onchange="location = this.value">
        <option value=""><?php echo $text_information; ?></option>
        <option value="<?php echo $home; ?>"><?php echo $text_home; ?></option>
        <option value="<?php echo $account; ?>"><?php echo $text_account; ?></option>
        <option value="<?php echo $wishlist; ?>" id="wishlist-total"> --> <?php echo $text_wishlist; ?></option>
        <option value="<?php echo $shopping_cart; ?>"> --> <?php echo $text_shopping_cart; ?></option>
        <option value="<?php echo $checkout; ?>"> --> <?php echo $text_checkout; ?></option>
        <option value="<?php echo $order; ?>"> --> <?php echo $text_order; ?></option>
        <option value="<?php echo $newsletter; ?>"> --> <?php echo $text_newsletter; ?></option>
         <?php foreach ($informations as $information) { ?>
         <option value="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></option>
        <?php } ?>
        <option value="<?php echo $href_manufacturer; ?>"><?php echo $text_manufacturer; ?></option>
        <option value="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></option>
        <option value="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></option>
         <option value="<?php echo $special; ?>"><?php echo $text_special; ?></option>
         <option value="<?php echo $contact; ?>"><?php echo $text_contact; ?></option>
        <option value="<?php echo $return; ?>"><?php echo $text_return; ?></option>
        <option value="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></option>

      </select>
</div>


<div class="colormenu">        
<ul class="menu">

     
      <li class="fullwidth multicolor1"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
        <div  class="dropdown_fullwidth">
             <div class="col_1">
                 <div><?php echo $text_information; ?></div>
                 <ul>
                 <?php foreach ($informations as $information) { ?>
                 <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                 <?php } ?>
                 </ul>
                </div>
              
              <div class="col_1">   
                 <div><?php echo $text_extra; ?></div>
                 <ul>
                <li><a href="<?php echo $href_manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                 </ul>
                </div>   
              
              <div class="col_1">   
               <div><?php echo $text_service; ?></div>
                 <ul>
                 <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                 <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                 <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                 </ul>
                </div> 
                
                
        </div>
      </li>
      
  
       
       <li class="fullwidth multicolor2"><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
          <div  class="dropdown_fullwidth">
        

     <?php if (!$this->customer->isLogged()) { ?>
       <div class="col_1">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
         <b><?php echo $entry_email; ?></b><br />
         <input type="text" name="email" value="" />
          <br />
          <b><?php echo $entry_password; ?></b><br />
          <input type="password" name="password" value="" /><br>
          <a href="<?php echo $forgotten; ?>" id="smallink"><?php echo $text_forgotten; ?></a> | <a href="<?php echo $register; ?>" id="colorlink"><?php echo $text_register; ?></a>
          <br>
          <input type="submit" value="<?php echo $button_login; ?>" class="button" />
          
         </form>
          
           
           </div>
<?php } ?>

        <div class="col_1"> 
          <ul>
             <li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
             <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
             <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
        </div>
        </div>
      </li>

      
      
      <li class="fullwidth multicolor3"><a href="<?php echo $contact; ?>" id="lightlink"><?php echo $text_contact; ?></a>
      <div  class="dropdown_fullwidth">
          <div class="col_1">
          <div><?php echo $text_location; ?></div>
          <ul>
             <li><b><?php echo $text_address; ?></b> <?php echo $address; ?><br><br></li>
             <li><?php if ($telephone) { ?>
                  <b><?php echo $text_telephone; ?></b> <?php echo $telephone; ?><br><br>
                 <?php } ?></li>
             <li> <?php if ($fax) { ?>
                   <b><?php echo $text_fax; ?></b> <?php echo $fax; ?><br><br>
                   <?php } ?></li>            

          </ul>
        </div>
        </div>
      </li>

       
       <li class="fullwidth multicolor4"><a href="<?php echo $href_manufacturer; ?>"><?php echo $text_manufacturer; ?></a>
      <div  class="dropdown_fullwidth">
          <div class="col_1">
         
          <ul>
            <?php foreach($manufacturer as $manufacturers){ ?>
							<li><a href="<?php echo $manufacturers['href']; ?>"><?php echo $manufacturers['name']; ?></a></li>
						<?php } ?>      

          </ul>
        </div>
        </div>
      </li>
      
      
</ul>
</div>

<div class="darkmenu navButton ">
<?php if ($categories) { ?>
 <?php 
 
$this->load->model('catalog/category');
$this->load->model('catalog/product');
 
$categories_1 = $this->model_catalog_category->getCategories(0);  										      	                                     // get the categories
 
if ($categories_1) {$output = '<ul class="menu">';} 



foreach ($categories_1 as $category_1) {																			
	$output .= '<li class="fullwidth">';																				
	$unrewritten  = $this->url->link('product/category', 'path=' . $category_1['category_id']);								
	$output .= '<a href="'.($unrewritten).'">' . $category_1['name'] . '</a>';								                                           // finally, generate the category name and wrap its link
 
	$categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);								
 
	if ($categories_2) {$output .= '<div  class="dropdown_fullwidth">';}                                                                               // if this is a subresult, start off with an unordered list tag
       
	foreach ($categories_2 as $category_2) { 
       																	                                                                               // get its category
		$sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']);
         
         $output .= '<div class="col_1" ><div><a href="'.($sub_unrewritten).'">' . $category_2['name'] . '</a></div>';					                 // now, generate the category name and wrap its link

		$categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);				                                         // if this result has a sub-list, get the set of new categories
 
		if ($categories_3) {$output .= '<ul>';}									                                                                         // if this is a subresult, start off with an unordered list tag
 
		foreach ($categories_3 as $category_3) {												                                                         // for each of this third level item
			$output .= '<li>';																			
			$third_sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']);								
			$output .= '<a href="'.($third_sub_unrewritten).'">'.$category_3['name'].'</a>';		                                                    // call the category name and wrap with its link
			$output .= '</li>';																		                             	
		}
 
		if ($categories_3) {$output .= '</ul>';}													                                                     // if this was the third list, clost the list
		 $output .= '</div>';																		                                                     // then or otherwise, close the second level list tag
	}
           	
	if ($categories_2) {$output .= '</div>';}
																                                                                                         // if all sub results have been listed, close the second level
		$output .= '</li>';																				                                                 // then or otherwise close first list parent
}
if ($categories_1) {$output .= '</ul>';}																		                                         // then close the first level list table
echo $output; 																							                                                 // now produce the results
?>


<?php } ?>
</div>
<!-----------------------------------------end menu--------------------------------------------------->
</div>


<div style="clear:both;"></div>


<div id="notification"></div>