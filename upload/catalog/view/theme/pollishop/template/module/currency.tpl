<?php if (count($currencies) > 1) { ?>

<div id="boxlink">
<a href="#"><?php echo $text_currency; ?></a>
<div>


<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

  <div id="currency">

    <?php foreach ($currencies as $currency) { ?>


    <?php if ($currency['code'] == $currency_code) { ?>
    

    <?php if ($currency['symbol_left']) { ?>

    <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?> - <?php echo $currency['title']; ?></b></a>

    <?php } else { ?>

    <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b> - <?php echo $currency['title']; ?></a>

    <?php } ?>

    <?php } else { ?>

    <?php if ($currency['symbol_left']) { ?>

    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['symbol_left']; ?> - <?php echo $currency['title']; ?></a>

    <?php } else { ?>

    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['symbol_right']; ?> - <?php echo $currency['title']; ?></a>

    <?php } ?>

    <?php } ?>

    <?php } ?>
 

    <input type="hidden" name="currency_code" value="" />

    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" /> 

 
  </div>

</form>


</div>
</div>
<?php } ?>