<?php
/* Template Name: Project page */
/* */
?>
 <?php get_header();?>

 <!-- Banner section -->
 <div class="banner-area">
        <div class="sc-preloader"></div>
        <div id="slides">
          <ul class="slides-container">
            <li>
            	<?php 
        				$project_banner_image = get_field('project_banner_image');
						if( !empty( $project_banner_image  ) ): ?>
              <img
                class="center center"
                src="<?php echo esc_url($project_banner_image['url']); ?>"
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
              <div
                id="areaStyleBannerTitle1"
                class="ccm-area-styles ccm-area-styles-a527"
              >
                <h1><?php the_field('project_banner_title');?></h1>
                <p>
                  <span
                    id="docs-internal-guid-58f91567-01c6-4cb6-7374-36ca9ea29827"
                    ><span
                      ><?php the_field('project_banner_description');?></span
                    ></span
                  >
                </p>
              </div>
            </div>
          </div>
          <div class="container down-scroller">
            <div class="trig-bot">
              <a class="down-scroll" href="#sc-wrap"></a>
            </div>
            <div class="bc">
              <a href="../index.html" target="_self">Home</a>
              <span class="ccm-autonav-breadcrumb-sep">/</span> Projects
            </div>
          </div>
        </div>
      </div>
<!-- End Banner section -->


<div class="introduction-content">
        <div class="container">
          <div class="center dynamite">
            <h2><?php the_field('project_main_title');?></h2>
            <p style="text-align: center">
              <?php the_field('project_main_description');?>
            </p>
          </div>
        </div>
      </div>
      
  <?php get_footer();?>
