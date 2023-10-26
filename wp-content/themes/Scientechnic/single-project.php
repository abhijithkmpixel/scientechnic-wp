 <?php get_header();

global $post;
//echo $post->ID;
 $termd = get_the_terms( $post->ID, 'bussinessunit' ); 
foreach ($termd as $newterm) {
     $taxterm = $newterm->slug;
}
 ?>
     <div class="banner-area half-size">
        <div class="sc-preloader"></div>
        <div id="slides">
          <ul class="slides-container">
            <li>
            	<?php 
        				$single_project_banner_image = get_field('single_project_banner_image','option');
						if( !empty( $single_project_banner_image) ): ?>
              <img
                class="center center"
                src="<?php echo esc_url($single_project_banner_image['url']); ?>"
                alt="Projects"
              />
          <?php endif; ?>
            </li>
          </ul>
        </div>
        <div class="topgradient"></div>
        <div class="slider-content">
          <div class="container move-uper">
            <div class="content-holdingg wow fadeInUp">
              <h1><?php the_field('single_banner_title','option');?></h1>
              <p>
                <span
                  id="docs-internal-guid-58f91567-01c6-4cb6-7374-36ca9ea29827"
                  ><?php the_field('single_banner_description','option');?></span
                >
              </p>
            </div>
          </div>
          <div class="container down-scroller">
            <div class="trig-bot">
              <a class="down-scroll" href="#sc-wrap"></a>
            </div>
            <div class="bc">
              <a href="../../index.html" target="_self">Home</a>
              <span class="ccm-autonav-breadcrumb-sep">/</span>
              <a href="../index.html" target="_self">Projects</a>
              <span class="ccm-autonav-breadcrumb-sep">/</span> <?php the_field('project_title');?>
            </div>
          </div>
        </div>
      </div>


       <div class="introduction-content">
        <div class="container">
          <div class="center dynamite">
            <h1><?php the_field('project_title');?></h1>

            <p>
            	 <?php $terms = get_the_terms($post->ID, 'year');
            	 foreach($terms as $term){
            	 	 ?>
            	 		 <strong>Year:</strong> <?php echo $term->name; ?> &nbsp; | &nbsp; 
            	
            	 	<?php	} ?>
              <?php $termslocation = get_the_terms($post->ID, 'Location');
            	 foreach($termslocation as $termloc){
            	 	 ?>
              <strong>Location:</strong> <?php echo $termloc->name; ?> &nbsp; | &nbsp;
          <?php } ?>
              <strong>Project Type:</strong> <?php the_field('project_type');?>
            </p>
            <p>
               <?php the_field('project_short_description');?>
            </p>
          </div>
          <div class="columns-row row">
            <div class="col-md-6">
               <?php the_field('project_content');?>
              </p>
            </div>
            <div class="col-md-6">
               <?php the_field('project_content_copy');?>
            </div>
          </div>
        </div>
      </div>

<!-- Map Some case -->
      
<!-- Map Some case -->
<div class="project-info">
        <div class="container">
          <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading active">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#collapse1"
                    ><?php the_field('highlight_title');?></a
                  >
                </h4>
              </div>
              <div id="collapse1" class="panel-collapse in">
                <ul>
                	<?php if( have_rows('highlighter') ):
       					while( have_rows('highlighter') ) : the_row(); ?>
                  <li>
                    <?php the_sub_field('project_highlights');?>
                  </li>
              <?php endwhile; endif; ?>
                </ul>
              </div>
            </div>
          </div>
          <div class="project-describe"></div>
        </div>
      </div>


     <!--  Gallery Images -->
       <div class="project-images">
        <div class="container">
          <div class="col-sm-12">
            <h2><?php the_field('gallery_title');?></h2>

            <div class="project-gallery row">
            	<?php if( have_rows('Gallery_project') ):
       					while( have_rows('Gallery_project') ) : the_row(); 
			$Gallery_project_images = get_sub_field('Gallery_project_images');
       						?>
              <div class="col-sm-4 slide">
                <a
                  class="fancybox-img"
                  rel="gallery"
                  href="<?php echo esc_url($Gallery_project_images['url']); ?>"
                >
                  <img
                    class="img-responsive"
                    src="<?php echo esc_url($Gallery_project_images['url']); ?>"
                    alt="shutterstock_565469728.jpg"
                  />
                </a>
              </div>
				<?php endwhile; endif; ?>
            </div>
          </div>
        </div>
      </div>
<!-- Gallery end -->

<!-- More Projects -->
<div class="clearfix"></div>
      <div class="more-projects">
        <h2>See Also</h2>

        <div class="container">
          <div class="cat-item-list row">

    <?php      	
    $custom_terms = get_the_terms($post->ID,'bussinessunit');
    //var_dump($custom_terms);
    $tax_query = array();
    foreach( $custom_terms as $custom_term ) {

        $tax_query[] = array(
            'taxonomy' => 'bussinessunit',
            'field' => 'slug',
            'terms' => $custom_term->slug,
        );

    } 

?>
<?php
$posts = array(
  'post_type' => 'project',
  'post__not_in' => array( $post->ID),
  'tax_query' => $tax_query,
  
);

 $query = new WP_Query($posts);
  $total = $query->found_posts;
  if($query->have_posts()) {
    while ($query ->have_posts()) : $query->the_post(); ?>

            <div class="col-md-6 single-caty">
            	<?php 
$project_list_image = get_field('project_list_image');
if( !empty( $project_list_image ) ): ?>
              <div
                class="cat-image"
                style="
                  background-image: url('<?php echo esc_url($project_list_image['url']); ?>');
                "
              >
          <?php endif; ?>
                <div class="sc-go-link">
                  <a href="<?php echo get_permalink(); ?>">
                    <?php the_title(); ?>
                  </a>
                </div>
              </div>
            </div>
<?php endwhile; } ?>

          </div>
        </div>
      </div>

<!-- End  -->
<!-- Loading the instagram feed -->
      <div class="insta-feeds">
        <div class="topheading-insta center">
          <span class="fa fa-twitter"></span>
          <span class="instatitle">@Scientechnic</span>
        </div>
      </div>
      <div class="social-feed-container tweet-feeds"></div>

 <?php get_footer();?>