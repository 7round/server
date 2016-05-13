<?php echo $header; ?>
<style type="text/css">
    .input-group {display:table; width:100%;}
    .input-group-addon {display:table-cell; width: 20px; padding:2px 12px; text-align:center; vertical-align:middle; background-color:#EEE; border:1px solid #CCC;}
</style>
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
      <h1><img src="view/image/payment/sbrf.png" width="26" height="25"><?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_bank; ?><span class="help"><?php echo $help_bank; ?></span></td>
            <td>
              <?php foreach ($languages as $language) { ?>
                  <div class="input-group">
                      <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                      <textarea name="sbrf_online_bank[<?php echo $language['language_id']; ?>]" rows="10"
                                id="sbrf_online_bank<?php echo $language['language_id']; ?>"
                                ><?php echo isset($sbrf_online_bank[$language['language_id']]) ? $sbrf_online_bank[$language['language_id']] : $text_bank_default; ?></textarea>
                  </div>
              <?php } ?>
              <?php if ($error_bank) { ?>
                <span class="error"><?php echo $error_bank; ?></span>
              <?php } ?>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_page_success; ?><span class="help"><?php echo $help_page_success; ?></span></td>
            <td>
              <?php foreach ($languages as $language) { ?>
                  <div class="input-group">
                      <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                      <textarea name="sbrf_online_page_success[<?php echo $language['language_id']; ?>]" rows="10"
                                id="sbrf_online_page_success<?php echo $language['language_id']; ?>"
                                ><?php echo isset($sbrf_online_page_success[$language['language_id']]) ? $sbrf_online_page_success[$language['language_id']] : $text_page_success_default; ?></textarea>
                  </div>
              <?php } ?>
            </td>
          </tr>
          <tr>
              <td><?php echo $entry_title; ?><br><span class="help"><?php echo $help_title; ?></span></td>
              <td>
                  <?php foreach ($languages as $language) { ?>
                      <div class="input-group">
                          <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <input type="text" size="80" id="title<?php echo $language['language_id']; ?>"
                                 name="sbrf_online_langdata[<?php echo $language['language_id']; ?>][title]"
                                 value="<?php echo !empty($sbrf_online_langdata[$language['language_id']]['title'])
                                    ? $sbrf_online_langdata[$language['language_id']]['title'] : $title_default; ?>"/>
                  </div>
                  <?php } ?>
              </td>
          </tr>
          <tr>
              <td><?php echo $entry_description; ?><br><span class="help"><?php echo $help_description; ?></span></td>
              <td>
                  <?php foreach ($languages as $language) { ?>
                      <div class="input-group">
                          <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <textarea style="width:100%;" rows="10" id="description<?php echo $language['language_id']; ?>"
                                 name="sbrf_online_langdata[<?php echo $language['language_id']; ?>][description]"
                                 ><?php echo !empty($sbrf_online_langdata[$language['language_id']]['description'])
                                    ? $sbrf_online_langdata[$language['language_id']]['description'] : ''; ?></textarea>
                  </div>
                  <?php } ?>
              </td>
          </tr>
          <tr>
              <td><?php echo $entry_icon; ?></td>
              <td>
                  <label>
                      <input type="radio" name="sbrf_online_icon"
                             value="1" <?php echo $sbrf_online_icon ? 'checked="checked" ' : ''; ?>/> <?php echo $text_yes; ?>
                  </label>
                  <label>
                      <input type="radio" name="sbrf_online_icon"
                             value="0" <?php echo !$sbrf_online_icon ? 'checked="checked" ' : ''; ?>/> <?php echo $text_no; ?>
                  </label>
              </td>
          </tr>
          <tr>
          <tr>
            <td><?php echo $entry_minimal_order; ?><span class="help"><?php echo $help_minimal_order; ?></span></td>
            <td><input type="text" name="sbrf_online_minimal_order" value="<?php echo $sbrf_online_minimal_order; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_maximal_order; ?><span class="help"><?php echo $help_maximal_order; ?></span></td>
            <td><input type="text" name="sbrf_online_maximal_order" value="<?php echo $sbrf_online_maximal_order; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="sbrf_online_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $sbrf_online_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="sbrf_online_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $sbrf_online_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="sbrf_online_status">
                <?php if ($sbrf_online_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="sbrf_online_sort_order" value="<?php echo $sbrf_online_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
    <div style="padding: 15px 15px; border:1px solid #ccc; margin-top: 15px; box-shadow:0 0px 5px rgba(0,0,0,0.1);"><?php echo $text_copyright; ?></div>
  </div>
</div>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
  CKEDITOR.config.autoParagraph = false;
  <?php foreach ($languages as $language) { ?>
    CKEDITOR.replace('sbrf_online_bank<?php echo $language['language_id']; ?>', {
      filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
    });
    CKEDITOR.replace('sbrf_online_page_success<?php echo $language['language_id']; ?>', {
      filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
      filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
    });
  <?php } ?>
//--></script>
<?php echo $footer; ?>