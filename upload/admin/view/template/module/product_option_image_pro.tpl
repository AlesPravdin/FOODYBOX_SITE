<?php
// Product Option Image PRO / ����������� ����� PRO
// Support: support@liveopencart.com / ���������: help@liveopencart.ru
?>
<?php echo $header; ?>
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if (isset($success) && $success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>


<div class="box">
  <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
  <div class="content" >
		
		<div id="tabs" class="htabs"> 
			<a href="#tab-settings"><?php echo $entry_settings; ?></a>
			<a href="#tab-import"><?php echo $entry_import; ?></a>
			<a href="#tab-export"><?php echo $entry_export; ?></a>
			<a href="#tab-about"><?php echo $entry_about; ?></a>
		</div>
		
		<div id="tab-settings">
		
			<form action="<?php echo $action; ?>" method="POST" id="form">
			<table class="form">
				
				<?php  foreach ($settings_names as $setting_name) {  ?>
				<tr>
					<td>
						<?php echo ${'entry_'.$setting_name}; ?>:
					</td>
					<td>
						<?php
						
						if ( in_array($setting_name.'_v0', $settings_values) ) {  
						
							echo "<select name=\"poip_module[".$setting_name."]\">";
							for ($i=0; $i<9; $i++) {
								if ( in_array($setting_name.'_v'.$i, $settings_values) ) {
									echo "<option value=\"".$i."\" ".( (isset($modules[$setting_name]) && $modules[$setting_name]== $i)?("selected"):("") ).">". (${"entry_".$setting_name."_v".$i}) ."</option>";
								}
							}
							echo "</select>";
						
						} else {  ?>
						<input type="checkbox" name="poip_module[<?php echo $setting_name; ?>]" value="1" <?php  if(isset($modules[$setting_name]) && $modules[$setting_name]) echo "checked"; ?> >
						<?php  }  ?>
					</td>
					<td>
						<span class="help"><?php echo ${'entry_'.$setting_name.'_help'}; ?></span>
					</td>
				</tr>
				<?php  }  ?>
				
				
				
			</table>
			</form>
		
		</div>
      
		<div id="tab-import">
			<p><?php echo $entry_import_description; ?></p>
			<br>
			<br>
			<?php if ($PHPExcelExists) { ?>
				<a id="button-upload" class="button"><?php echo $button_upload; ?></a>
				<span class="help"><?php echo $button_upload_help ?></span>
			<?php
			} else {
				echo "<font style='color: red'>".$PHPExcelNotFound.$PHPExcelPath."</font>";
			}
			?>
			<br>
			<div id="import_result">
				
			</div>
			<br>
			<div id="import_result_text">
				
			</div>
		</div>
		
		<div id="tab-export">
			<p><?php echo $entry_export_description; ?></p>
			<br>
			
			<?php if ($PHPExcelExists) { ?>
				<form id="form_export" action="<?php echo $action_export; ?>" method="post" target="export_frame">
					<label for="export_products_wo_optimg"><input type="checkbox" name="export_products_wo_optimg" id="export_products_wo_optimg"><?php echo $entry_export_products_wo_optimg; ?></label>
					<br>
					<br>
				</form>
				
				<a id="button-export" class="button" onclick="$('#form_export').submit()"><?php echo $button_export; ?></a>
			
			<?php
			} else {
				echo "<font style='color: red'>".$PHPExcelNotFound.$PHPExcelPath."</font>";
			}
			?>
			<br><br><br>
			
			<iframe name="export_frame" src="" id="export_frame" style="display: none"></iframe>
			<br><br>
		</div>
		
		<div id="tab-about">
			<table style="max-width: 700px;">
				<tr>
					<td>
						<?php echo $entry_about_description; ?>
					</td>
				</tr>
			</table>
		</div>
		
		<br><br><br>
		<span class="help" ><?php echo $module_info; ?></span>
		<br><span class="help" style="font-size: 9px"><?php echo $module_copyright; ?></span>
			
  </div>
</div>

<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script>

<script type="text/javascript" src="view/javascript/jquery/ajaxupload.js"></script>
<script type="text/javascript"><!--
new AjaxUpload('#button-upload', {
  action: 'index.php?route=module/product_option_image_pro/import&token=<?php echo $token; ?>',
  name: 'file',
  autoSubmit: true,
  responseType: 'text',
  onSubmit: function(file, extension) {
    $('#button-upload').after('<img src="view/image/loading.gif" class="loading" style="padding-left: 5px;" />');
  },
  onComplete: function(file, result) {
    
    $('.loading').remove();
    
    $('#import_result_text').html("<?php echo $entry_server_response; ?>: "+result);

    json = jQuery.parseJSON(result);
    if (json['error']) {
      $('#import_result_text').html('Error: '+json['error']);
    } else {
      $('#import_result_text').html('<?php echo $entry_import_result; ?>: '+json['rows']+'/'+json['images']+'/'+json['skipped']);
    }
  }
});
//--></script>

<?php echo $footer; ?>