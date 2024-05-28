<?php
/**
 * The template for the sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<?php if ( is_active_sidebar( 'sidebar-1' )  ) : ?>
	<aside id="secondary" class="sidebar widget-area" role="complementary">
	
		<section id="current_per" class="widget widget_current_per">	
			<div class="per-archive-item">
			<h2 class="widget-title">Periscope Archive</h2>	

<?php

$query = new WP_Query(array(
  'post_type' => 'page',
  'title' => 'Periscope Archive Sidebar',
  'posts_per_page' => 1
));

if ( $query->have_posts() ) {
  while ( $query->have_posts() ) {
      $query->the_post();
      $content = apply_filters('the_content', get_the_content());
      echo $content;
  }
  wp_reset_postdata();
} else {
  echo 'Page not found';
}

?>

			</div>
		</section>


	</aside><!-- .sidebar .widget-area -->
<?php endif; ?>
