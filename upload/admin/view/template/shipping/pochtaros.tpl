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
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><?php echo $entry_name; ?></td>
            <td><input type="text" name="pochtaros_name" value="<?php if (isset($pochtaros_name)) echo $pochtaros_name; ?>" /></td>
          </tr>

          <tr>
            <td><?php echo $entry_store; ?></td>
            <td>
              <div class="scrollbox">
                <?php $class = 'even'; ?>
                <div class="<?php echo $class; ?>">
                  <input type="checkbox" name="pochtaros_store[]" value="0" <?php if (isset($pochtaros_store) and in_array(0, $pochtaros_store)) { ?>checked="checked"<?php } ?> />
                  <?php echo $text_default; ?>
                </div>
                <?php foreach ($stores as $store) { ?>
                    <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                    <div class="<?php echo $class; ?>">
                      <input type="checkbox" name="pochtaros_store[]" value="<?php echo $store['store_id']; ?>" <?php if (isset($pochtaros_store) and in_array($store['store_id'], $pochtaros_store)) { ?>checked="checked"<?php } ?> />
                      <?php echo $store['name']; ?>
                    </div>
                <?php } ?>
              </div>
            </td>
          </tr>

            <tr>
              <td><?php echo $entry_city; ?></td>
              <td><input type="text" name="pochtaros_city" value="<?php if (isset($pochtaros_city)) echo $pochtaros_city; ?>" /></td>
            </tr>

            <tr>
              <td><?php echo $entry_min_weight; ?></td>
              <td><input type="text" name="pochtaros_min_weight" value="<?php if (isset($pochtaros_min_weight)) echo $pochtaros_min_weight; ?>" /></td>
            </tr>

            <tr>
              <td><?php echo $entry_max_weight; ?></td>
              <td><input type="text" name="pochtaros_max_weight" value="<?php if (isset($pochtaros_max_weight)) echo $pochtaros_max_weight; ?>" /></td>
            </tr>

          <tr>
            <td><?php echo $entry_cost; ?></td>
            <td><input type="text" name="pochtaros_cost" value="<?php if (isset($pochtaros_cost)) echo $pochtaros_cost; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_total; ?></td>
            <td><input type="text" name="pochtaros_total" value="<?php if (isset($pochtaros_total)) echo $pochtaros_total; ?>" /></td>
          </tr>
            <tr>
              <td><?php echo $entry_upakovka; ?></td>
              <td><input type="text" name="pochtaros_upakovka" value="<?php if (isset($pochtaros_upakovka)) echo $pochtaros_upakovka; ?>" /></td>
            </tr>

          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td>
              <div class="scrollbox">
                <?php $class = 'even'; ?>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                    <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                    <div class="<?php echo $class; ?>">
                      <input type="checkbox" name="pochtaros_geo_zone[]" value="<?php echo $geo_zone['geo_zone_id']; ?>" <?php if (isset($pochtaros_geo_zone) and in_array($geo_zone['geo_zone_id'], $pochtaros_geo_zone)) { ?>checked="checked"<?php } ?> />
                      <?php echo $geo_zone['name']; ?>
                    </div>
                <?php } ?>
              </div>
            </td>
          </tr>

          <tr>
            <td><?php echo $entry_methods; ?></td>
            <td>
              <div class="scrollbox">
                <?php $class = 'even'; ?>
                <?php foreach ($methods as $method) { ?>
                    <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                    <div class="<?php echo $class; ?>">
                      <input type="checkbox" name="pochtaros_method[]" value="<?php echo $method['key']; ?>" <?php if (isset($pochtaros_method) and in_array($method['key'], $pochtaros_method)) { ?>checked="checked"<?php } ?> />
                      <?php echo $method['title']; ?>
                    </div>
                <?php } ?>
              </div>
            </td>
          </tr>

          <tr>
            <td><?php echo $entry_fragmentation; ?></td>
            <td><input type="checkbox" name="pochtaros_fragmentation" value="1" <?php if ($pochtaros_fragmentation) { ?>checked="checked"<?php } ?> /></td>
          </tr>

          <tr>
              <td><?php echo $entry_sort_order; ?></td>
              <td><input type="text" name="pochtaros_sort_order" value="<?php echo $pochtaros_sort_order; ?>" size="1" /></td>
          </tr>

          <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="pochtaros_status">
                  <?php if ($pochtaros_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
          </tr>

        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>