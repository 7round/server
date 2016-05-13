<script>
	jQuery(function(){
		jQuery('#camera_wrap_<?php echo $module; ?>').camera({
			height: '<?php echo $height; ?>px',
			fx: 'stampede',
			navigation: false,
			playPause: false,
			thumbnails: true,
			barPosition: 'top',
			loader: false,
			time: 3000,
			transPeriod:800
		});
	});
</script>
<div class="fluid_container" style="width: <?php echo $width; ?>px; height: <?php echo ($height-2); ?>px;">
	<div class="  camera_green_skin" id="camera_wrap_<?php echo $module; ?>">
	<?php foreach ($banners as $banner) { ?>
		<div title="<?php echo $banner['title']; ?>" data-thumb="<?php echo $banner['image']; ?>" <?php if ($banner['link']) { ?> data-link="<?php echo $banner['link']; ?>"<?php } ?> data-src="<?php echo $banner['image']; ?>">
			<?php if ($banner['description']) { ?>
			<div class="camera_caption moveFromLeft">
				<?php echo $banner['description']; ?>
			</div>
			<?php } ?>
		</div>
	<?php } ?>
	</div>
</div>