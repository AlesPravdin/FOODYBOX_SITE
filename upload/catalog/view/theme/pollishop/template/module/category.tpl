<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
  <div class="box-category">
    <?php  
$this->load->model('catalog/category');
$this->load->model('catalog/product');

$categories_1 = $this->model_catalog_category->getCategories(0);  											
if ($categories_1) {$output = '<ul>';}  															

foreach ($categories_1 as $category_1) {																			
	$output .= '<li>';																					
	$unrewritten  = $this->url->link('product/category', 'path=' . $category_1['category_id']);

	$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category_1['category_id']));

       if ($category_1['category_id'] == $category_id)
			{$output .= '<a href="'.($unrewritten).'"  class="active">' . $category_1['name'] .($this->config->get('config_product_count') ? ' (' . $total . ')' : '') . '</a>';	}
		else {$output .= '<a href="'.($unrewritten).'">' . $category_1['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : ''). '</a>';}
        
	$categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);								
       
	if ($categories_2) {$output .= '<ul>';}												

	foreach ($categories_2 as $category_2) {																
		$output .= '<li>';																																	
		$sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']);

		$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category_2['category_id']));

		 if ($category_2['category_id'] == $child_id)
			{$output .= '<a href="'.($sub_unrewritten).'"  class="active2">- ' . $category_2['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : '') . '</a>';	}
		    else {$output .= '<a href="'.($sub_unrewritten).'">- ' . $category_2['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : '') . '</a>';}			
		  
		$categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);				
 
		if ($categories_3) {$output .= '<ul>';}									
        
		foreach ($categories_3 as $category_3) {												
			$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category_3['category_id']));
			$output .= '<li>';																			
			$third_sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']);
			$output .= '<a href="'.($third_sub_unrewritten).'">'.$category_3['name']. ($this->config->get('config_product_count') ? ' (' . $total . ')' : '') . '</a>';
			$output .= '</li>';																			
		}
 
		if ($categories_3) {$output .= '</ul>';}
			$output .= '</li>';
	}
	if ($categories_2) {$output .= '</ul>';}
		$output .= '</li>';
}
if ($categories_1) {$output .= '</ul>';}
echo $output;
?>
  </div>
  </div>
</div>


 