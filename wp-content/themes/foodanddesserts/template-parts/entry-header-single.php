<?php
/**
 * Displays the post header
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */
?>
<div class="blog-featured-image" style="background-image:url(<?php the_post_thumbnail_url() ?>)">
        <div class="custom-container">
                <?php
                        if ( is_singular() ) {
                                the_title( '<h1 class="page-title">', '</h1>' );
                        }
                ?>
        </div>
</div>
<?php
if ( has_excerpt() && is_singular() ) {
	?>

		<div class="wp-block-latest-posts__post-excerpt">
			<?php the_excerpt(); ?>
		</div>

	<?php
}
?>