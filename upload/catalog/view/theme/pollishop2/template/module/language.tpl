<?php if (count($languages) > 1) { ?>
<div id="boxlink">
<a href="#"><?php echo $text_language; ?></a>
<div>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="language">
    <?php foreach ($languages as $language) { ?>
    <a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"  /> - <?php echo $language['name']; ?></a>
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>


</div>
</div>
<?php } ?>