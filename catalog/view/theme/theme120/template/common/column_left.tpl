<?php if ($modules) { ?>
<div id="column-left">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
  <!-- VK Widget -->
	<div id="vk_groups"></div>
	<script type="text/javascript">
	VK.Widgets.Group("vk_groups", {mode: 0, width: "220", height: "350", color1: 'FFFFFF', color2: '2B587A', color3: '5B7FA6'}, 39035737);
	</script>
</div>
<?php } ?> 
