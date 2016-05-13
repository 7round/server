<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($categories) { ?>
  <div class="box-container">
  <p class="manuf-p"><b><?php echo $text_index; ?></b>
    <?php foreach ($categories as $category) { ?>
    &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/dictionary#<?php echo $category['name']; ?>"><b><?php echo $category['name']; ?></b></a>
    <?php } ?>
  </p>
  <?php foreach ($categories as $category) { ?>
  <div class="dictionary-list">
    <div class="dictionary-heading"><span><?php echo $category['name']; ?></span><a id="<?php echo $category['name']; ?>"></a></div>
    <div class="dictionary-content">
      <?php if ($category['dictionary']) { ?>
      <?php for ($i = 0; $i < count($category['dictionary']);) { ?>
      <ul>
        <?php $j = $i + ceil(count($category['dictionary']) / 4); ?>
        <?php for (; $i < $j; $i++) { ?>
        <?php if (isset($category['dictionary'][$i])) { ?>
        <li><a href="<?php echo $category['dictionary'][$i]['href']; ?>"><?php echo $category['dictionary'][$i]['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
      <?php } ?>
    </div>
  </div>
  
  <?php } ?>
  </div>
  <?php } else { ?>
  <!-- <div class="content"><?php echo $text_empty; ?></div> -->
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>