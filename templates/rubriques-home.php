<?php if( have_rows('offres') ): ?>

	<section  class="clearfix offres--home">

	<h1 class="products-list-title">
		<span><?php the_field('titre'); ?></span>
	</h1>

	<?php while( have_rows('offres') ): the_row(); 

		// vars
		$image = get_sub_field('image');
		// $content = get_sub_field('content');
		$url = get_sub_field('url');
		$lien = get_sub_field('lien');
		$link = "";

		if($lien) {
			$link = $lien;
		} else if( $url ) {
			$link = $url;
		}

		?>

		<article class="offre--home">

			<a 
				class="pic-container-link"
				href="<?php echo $link; ?>">

				<div
					class="pic-container-offre" 
					style="background-image: url(<?php echo $image['url']; ?>);">
					<h1><?php the_sub_field('title'); ?></h1>
					<p><?php the_sub_field('description'); ?></p>
				</div>
<!-- 
				<span class="btn">
					<?php the_sub_field('text_link'); ?>			
				</span> -->
			</a>

		</article>

	<?php endwhile; ?>

	</section >

<?php endif; ?>