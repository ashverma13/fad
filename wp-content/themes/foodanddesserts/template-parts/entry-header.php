<?php
/**
 * Displays the post header
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */

if ( is_singular() ) {
	the_title( '<h1 class="entry-title">', '</h1>' );
} else {
	the_title( '<a href="' . esc_url( get_permalink() ) . '">', '</a>' );
}

if ( has_excerpt() && is_singular() ) {
	?>

		<div class="wp-block-latest-posts__post-excerpt">
			<?php the_excerpt(); ?>
		</div>

	<?php
}
?>