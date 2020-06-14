<?php
/**
 * Displays the featured image
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */

if ( has_post_thumbnail() && ! post_password_required() ) {

	$featured_media_inner_classes = '';

	// Make the featured media thinner on archive pages.
	if ( ! is_singular() ) {
		$featured_media_inner_classes .= ' medium';
	}
	?>

		<div class="wp-block-latest-posts__featured-image aligncenter">

			<?php
				the_post_thumbnail();
			?>

		</div><!-- .featured-media-inner -->

	<?php
}
