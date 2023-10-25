 <?php get_header(); 
global $post;
 ?>

 <div class="banner-area half-size">
 	<div class="sc-preloader"></div>
 	<div id="slides">
 		<ul class="slides-container">
 			<li>
 				<?php 
 				$news_banner_image = get_field('single_news_banner_image','option');
 				if( !empty( $news_banner_image) ): ?>
 					<img
 					class="center center"
 					src="<?php echo esc_url($news_banner_image['url']); ?>"
 					alt="News"
 					/>
 				<?php endif; ?>
 			</li>
 		</ul>
 	</div>
 	<div class="topgradient"></div>
 	<div class="slider-content">
 		<div class="container move-uper">
 			<div class="content-holdingg wow fadeInUp">
 				<h1><?php the_field('single_news_banner_title','option'); ?></h1>
 				<p><?php the_field('single_news_banner_description','option'); ?></p>
 			</div>
 		</div>
 		<div class="container down-scroller">
 			<div class="trig-bot">
 				<a class="down-scroll" href="#sc-wrap"></a>
 			</div>
 			<div class="bc">
 				<a href="../index.html" target="_self">Home</a>
 				<span class="ccm-autonav-breadcrumb-sep">/</span> News
 			</div>
 		</div>
 	</div>
 </div>



 <div class="introduction-content">
 	<div class="container">
 		<div class="news-details-date">
 			<div class="news-date"><p><?php echo the_date(); ?></p></div>
 		</div>
 		<div class="center dynamite">
 			<h1><?php the_title(); ?></h1>
 			<p><?php the_field('news_short_description'); ?></p>
 		</div>
 		<div class="columns-row">
 			<div class="col-md-6 pl25">
 				<?php the_field('content_one'); ?>
 			</div>
 			<div class="col-md-6 pr25">
 				<?php the_field('content_two'); ?>
 			</p>
 		</div>
 	</div>
 </div>
 <?php if(get_field('show_hide_images') == true): ?>
 <div class="container">
 	<div class="col-sm-12 group-slide">
 		<div class="project-gallery row">

 			<?php if( have_rows('news_images') ):
 				while( have_rows('news_images') ) : the_row(); 
 					$news_image = get_sub_field('news_image');
 					?>
 					<div class="col-sm-4 slide">
 						<a
 						class="fancybox-img"
 						rel="gallery"
 						href="<?php echo esc_url($news_image['url']); ?>"
 						>
 						<img
 						class="img-responsive"
 						src="<?php echo esc_url($news_image['url']); ?>"
 						alt="MTE Corp at SCT HQ_1.png"
 						/>
 					</a>
 				</div>
 			<?php endwhile; endif; ?>
 		</div>
 	</div>
 </div>
<?php endif; ?>
</div>



<div class="news-additional container">
	<div class="col-sm-12">
		<div class="back-btn">
			<a href="<?php echo home_url('/news'); ?>">Back to News</a>
		</div>
	</div>
	<div class="latest-news">
		<div class="container bu-header border-bottom">
			<h3 class="center">Latest News</h3>
			<a href="<?php echo home_url('/news'); ?>" class="bu-salink">See All</a>
		</div>
		<div class="news-content container">
			<ul class="news-teasers list-inline">

				<?php
$posts = array(
  'post_type' => 'news',
  'post_status' => 'publish',
  'post__not_in' => array( $post->ID),
  'numberposts' => -1
);

 $query = new WP_Query($posts);
  $total = $query->found_posts;
  //$i = wp_count_posts();
  if($total % 3 == 1){
  	$class = 'no-rightborder';
  }
  if($query->have_posts()){
  $i = 1 ;
    while ($query ->have_posts()) : $query->the_post(); ?>
            <li class="equalheights <?php if($i % 3 == 0 ):echo $class; endif; ?> wow fadeInUp">
            	<?php 
        				$news_list_image = get_field('news_list_image');
						//if( !empty( $news_list_image  ) ): ?>
              <div
                class="image-hover"
                style="
                  background-image: url('<?php echo esc_url($news_list_image['url']); ?>');
                "
              >
          <?php //endif; ?>
                <a
                  href="<?php echo get_permalink(); ?>"
                  class="more-details"
                  >Click to See</a
                >
              </div>

              <div class="news-content">
                <div class="news-title">
                  <h3>
                    <a
                      href="<?php echo get_permalink(); ?>"
                      ><?php echo the_title();?></a
                    >
                  </h3>
                  <span class="date"><?php echo the_date(); ?> </span>
                </div>
                <div class="news-dscription">
                  <p><?php the_field('news_short_description'); ?></p>
                </div>
                <a
                  class="content-btn"
                  href="<?php echo get_permalink(); ?>"
                  >read more</a
                >
              </div>
            </li>
          <?php $i++; endwhile; } ?>
</ul>
</div>
</div>
</div>
<?php get_footer();?>