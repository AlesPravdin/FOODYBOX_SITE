<?php

// Product Option Image PRO / Изображения опций PRO
// Support: support@liveopencart.com / Поддержка: help@liveopencart.ru

// Heading
$_['heading_title']       = 'Product option image PRO';
$_['poip_module_name']    = 'Product option image PRO';

// Text
$_['text_module']         = 'Modules';
$_['text_success']        = 'Success: "'.$_['heading_title'] .'" settings cnanged!';
$_['text_content_top']    = 'Content Top';
$_['text_content_bottom'] = 'Content Bottom';
$_['text_column_left']    = 'Column Left';
$_['text_column_right']   = 'Column Right';

// Entry
$_['entry_settings']                  = 'Module settings';
$_['entry_import']                    = 'Import';
$_['entry_import_description']        = '<b>Notice: all product options images will be automatically deleted before import starts.</b>
<br><br>Import file format: XLS. Import uses only first sheet for getting data.
<br>First table row must contain fields names (head): product_id, option_value_id (not product_option_id), image, sort_order (image sort order)
<br>Next table rows must contain related options data in accordance with fields names in first table row.';
$_['PHPExcelNotFound']                = '<a href="http://phpexcel.codeplex.com/" target="_blank">PHPExcel</a> not found. Not found file: ';
$_['button_upload']		                = 'Import file';
$_['button_upload_help']              = 'import starts immediately after selecting the file';
$_['entry_server_response']           = 'Server answer';
$_['entry_import_result']             = 'Processed rows/images/skipped';
$_['entry_export']                    = 'Export';
$_['button_export']		                = 'Export data';
$_['entry_export_description']        = 'Export products options images data. File format: XLS. Export uses only first sheet for data.
<br>First table row contain fields names (head): product_id, option_value_id (not product_option_id), image, sort_order (image sort order)
<br>Next table rows contain data in accordance with fields names in first table row.
<br>Additional column contain options values names (just for information)';
$_['entry_export_products_wo_optimg'] = 'Export products without options values images';

$_['entry_layout']        = 'Layout:';
$_['entry_position']      = 'Position:';
$_['entry_status']        = 'Status:';
$_['entry_sort_order']    = 'Sort Order:';
$_['entry_sort_order_short']    = 'sort:';
$_['entry_settings_default']          = 'global settings';
$_['entry_settings_yes']          = 'On';
$_['entry_settings_no']          = 'Off';


$_['entry_img_use_v0']          = 'Off';
$_['entry_img_use_v1']          = 'On for all';
$_['entry_img_use_v2']          = 'On for selected';

$_['entry_img_first_v0']          = 'As usual';
$_['entry_img_first_v1']          = 'Replace with first option image';
$_['entry_img_first_v2']          = 'Add to option images list';

// Entry Module Settings
$_['entry_img_change']          = 'Change main product image on option select';
$_['entry_img_change_help']     = 'change main product image on product page when option value is selected (use first option image)';
$_['entry_img_hover']           = 'Change main product image on mouse over';
$_['entry_img_hover_help']      = 'change main product image on product page when mouse hover additional image';
$_['entry_img_main_to_additional']           = 'Main image to additional';
$_['entry_img_main_to_additional_help']      = 'add main product image to additional images list';

$_['entry_img_use']             = 'Options images like additional images';
$_['entry_img_use_help']        = 'show options images in additional product images list on product page';

$_['entry_img_limit']           = 'Filter additional images';
$_['entry_img_limit_help']      = 'show in additional product images list on product page only images situable for selected options values<br>
works only with feature "'.$_['entry_img_use'].'"';
$_['entry_img_gal']             = 'Filter product image gallery';
$_['entry_img_gal_help']        = 'show in product image gallery only visible images from additional product images list on product page recommended touse with features "'.$_['entry_img_use'].'" and "'.$_['entry_img_limit'].'"';

$_['entry_img_option']          = 'Images below option';
$_['entry_img_option_help']     = 'show option value images below option value select/radio/checkbox when option value is selected';
//$_['entry_img_select']          = 'Выбор опций по изображениям';
//$_['entry_img_select_help']     = 'добавляет надпись "Выбрать" под каждым изображением опции в списке товаров, при клике на надпись соответствующая опция выбирается автоматически';
$_['entry_img_category']        = 'Options in products lists';
$_['entry_img_category_help']   = 'show option values images with small preview in product lists on categories pages, manufaturers pages, in standard modules "Latest", "Bestsellers", "Special", "Featured".';
//$_['entry_img_sort']            = 'Сквозная сортировка изображений';
//$_['entry_img_sort_help']       = 'сортировать изображения в соответствии с указанным порядком вне зависимости от опций к которым они привязаны';
$_['entry_img_first']           = 'Standard option image';
$_['entry_img_first_help']      = 'usage of standard option images added at options page (menu Catalog - Options - etc)';
$_['entry_img_cart']            = 'Option value image in cart';
$_['entry_img_cart_help']       = 'show selected option value image in cart';

$_['entry_img_or']              = 'Filter images OR';
$_['entry_img_or_help']         = 'use OR options filtering rule instead of AND';

$_['entry_show_settings']       = 'Show individual settings for current product option';
$_['entry_hide_settings']       = 'Hide individual settings for current product option';

$_['entry_about']               = 'About';
$_['entry_about_description']   = '
Module allows to set individual images (one or few) for product options values and use them to better product view in frontend
(change images depending on selected options, change main product image on mouse over additional image, etc.).
<br>Compatible with options types: "select", "radio", "image", "checkbox".
<br><br>The module requires <a href="http://github.com/vqmod/vqmod" target="_blank">vQmod</a> version 2.4.1 or later.
<br><br>Import/export features requires <a href="http://phpexcel.codeplex.com/" target="_blank">PHPExcel</a>.
<br><br><br>We are open for conversation. Email as to <b>support@liveopencart.com</b>, if you need modify or integrate our modules, add new functionality or develop new modules.
<br><br><br>We also recommend:
<ul>
<li>
<a href="http://www.opencart.com/index.php?route=extension/extension/info&extension_id=14763" title="Related Options for OpenCart" target="_blank">
Related Options</a> - to create combinations of related product options and set stock, price, model etc. for each combination. This functionality can be useful for sales of products, having interlinked options, such as size and color for clothes.
</li><br>
<li>
<a href="http://www.opencart.com/index.php?route=extension/extension/info&extension_id=20473" title="Live Price update for OpenCart" target="_blank">
Live Price</a> - to dynamic online price information update on product page depending on customer selected product options.
</li>
</ul>
';
$_['module_copyright'] = '"'.$_['heading_title'].'". is a commercial extension. Resell or transfer it to other users is NOT ALLOWED.
<br>By purchasing this module, you get it for use on one site. 
If you want to use the module on multiple sites, you should purchase a separate copy for each site.
<br>Thank you for purchasing the module.
';



// Error
$_['error_permission']    = 'Warning: You do not have permission to modify module "'.$_['heading_title'] .'"!';



$_['module_info'] = '"'.$_['heading_title'] .'" v 1.4.1 | Developer: <a href="http://liveopencart.com" target="_blank">liveopencart.com</a> | Support: support@liveopencart.com';


?>