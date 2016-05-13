<div class="box manufacturers">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <?php if ($manufacturers) { ?>
    <ul>
      <?php foreach ($manufacturers as $manufacturer) { ?>
      <li><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></li>
        <?php } ?>
    </ul>
    <?php } ?>
  </div>
</div>