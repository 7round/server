<script type="text/javascript">
	$(function(){
		$('.info-list li').last().addClass('last');
	});
</script>
<div class="box info">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
  	
    <ul class="info-list">
      <?php foreach ($informations as $information) { ?>
        <?php if($information['id'] == 10) continue ;?>
        <?php if($information['id'] == 11) continue ;?>
        <?php if($information['id'] == 12) continue ;?>
        <?php if($information['id'] == 13) continue ;?>
        <?php if($information['id'] == 14) continue ;?>
        <?php if($information['id'] == 15) continue ;?>
        <?php if($information['id'] == 16) continue ;?>
        <?php if($information['id'] == 17) continue ;?>
        <?php if($information['id'] == 18) continue ;?>
        <?php if($information['id'] == 19) continue ;?>
        <?php if($information['id'] == 20) continue ;?>
        <?php if($information['id'] == 21) continue ;?>
        <?php if($information['id'] == 22) continue ;?>
        <?php if($information['id'] == 23) continue ;?>
        <?php if($information['id'] == 24) continue ;?>
        
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
</div>
