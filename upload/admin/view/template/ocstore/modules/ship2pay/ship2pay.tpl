<?php echo $header; ?>
<div id="content">
  <div style="position: absolute; right: 20px">
	<?php echo $ocstore_header; ?>
  </div>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
<div class="box">
    <div class="heading">
      <h1><?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button">Save</a><a onclick="location = 'http://oc-1541.local/admin/index.php?route=catalog/category&amp;token=b4bc0fd1feec6c4d901e26085e564a83';" class="button">Cancel</a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action;?>" method="post" enctype="multipart/form-data" id="form">
        <div>
            <table class="form">
              <tbody>
				<?php foreach ($shipping as $sCode => $sName) : ?>
					<tr>
						<td><?=$sName;?></td>
						<td>
							<select class="js-example-tokenizer form-control" multiple="multiple" name="<?=$sCode;?>[]" style="width: 100%">
								<?php foreach ($payment as $pCode => $pName) : ?>
									<option value="<?=$pCode;?>" <?=(isset($saved[$sCode]) && in_array($pCode, $saved[$sCode])? "SELECTED": "");?>><?=$pName;?>
								<? endforeach; ?>
							</select>
						</td>
					</div>
				<?php endforeach ?>
				
			  </tbody>
            </table>
        </div>
      </form>
    </div>
  </div>
 </div>

<script>
    $(document).ready(function() {
        $(".js-example-tokenizer").select2({
            tags: true,
            tokenSeparators: [',', ' ']
        });
    });
</script>
<?php echo $footer; ?>