<?php 
	if(get_field('image_banniere')){

		$style = "style=\"background-image: url('" . get_field('image_banniere') . "');\"";
	}
 ?>

<div id="homeBanner" <?php echo $style; ?> >			
	<div id="bannerText">
		<h2><?php bloginfo('name'); ?></h2>
		<p><?php the_field('texte_banniere'); ?></p>
	</div>		
</div>