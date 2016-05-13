<div class="box dictionarys">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <?php if ($dictionarys) { ?>
    <ul>
      <?php foreach ($dictionarys as $dictionary) { ?>
      <li><a href="<?php echo $dictionary['href']; ?>"><?php echo $dictionary['name']; ?></a></li>
        <?php } ?>
    </ul>
    <?php } ?>
  </div>
</div>