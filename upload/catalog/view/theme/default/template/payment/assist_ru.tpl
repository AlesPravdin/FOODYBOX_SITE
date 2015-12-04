<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" id="payment">
 <input type="hidden" name="Shop_IDP" value="<?php echo $shop_idp; ?>" />
 <input type="hidden" name="Order_IDP" value="<?php echo $order_idp; ?>" />
 <input type="hidden" name="Subtotal_P" value="<?php echo $total; ?>" />
 <input type="hidden" name="Currency" value="<?php echo $currency; ?>" />
 <input type="hidden" name="FirstName" value="<?php echo $first_name; ?>" />
 <input type="hidden" name="LastName" value="<?php echo $last_name; ?>" />
 <input type="hidden" name="Email" value="<?php echo $email; ?>" />
 <input type="hidden" name="Comment" value="<?php echo $comment; ?>" />
 <input type="hidden" name="Language" value="<?php echo $language; ?>" />
 <input type="hidden" name="Phone" value="<?php echo $phone; ?>" />
 <input type="hidden" name="Country" value="<?php echo $country; ?>" />
 <input type="hidden" name="Zip" value="<?php echo $zip; ?>" />
 <?php if (isset ($state)) { ?>
 <input type="hidden" name="State" value="<?php echo $state; ?>" />
 <?php } ?>
 <input type="hidden" name="City" value="<?php echo $city; ?>" />
 <input type="hidden" name="Address" value="<?php echo $street_address; ?>" />
 <?php if (isset ($test_result)) { ?>
 <input type="hidden" name="DemoResult" value="<?php echo $test_result; ?>" />
 <?php } ?>
 <input type="hidden" name="URL_RETURN_OK" value="<?php echo $return_url_ok; ?>" />
 <input type="hidden" name="URL_RETURN_NO" value="<?php echo $return_url_no; ?>" />
 <div class="buttons">
  <div class="right"><a onclick="$('#payment').submit();" class="button"><span><?php echo $button_confirm; ?></span></a></div>
 </div>
</form>