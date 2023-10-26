<?php
/* Template Name: Bussinessunit page */
/* */
?>
<?php get_header();?>
  <div class="banner-area">
        <div class="sc-preloader"></div>
        <div id="slides">
          <ul class="slides-container">
            <li>
              <?php 
                $bussiness_unit_banner_image = get_field('bussiness_unit_banner_image'); ?>
              <img
                class="center center"
                src="<?php echo esc_url($bussiness_unit_banner_image['url']); ?>"
                alt="Business Units"
              />
            </li>
          </ul>
        </div>
        <div class="topgradient"></div>
        <div class="slider-content">
          <div class="container move-uper">
            <div class="content-holdingg wow fadeInUp">
              <h1> <?php the_field('bussiness_unit_banner_title'); ?></h1>
              <p>
                <?php the_field('bussiness_unit_banner_description'); ?>
              </p>
            </div>
          </div>
          <div class="container down-scroller">
            <div class="trig-bot">
              <a class="down-scroll" href="#sc-wrap"></a>
            </div>
            <div class="bc">
              <a href="../index.html" target="_self">Home</a>
              <span class="ccm-autonav-breadcrumb-sep">/</span> Business Units
            </div>
          </div>
        </div>
      </div>


    <div id="sc-wrap" class="default-content intro-new sep-border-bottom">
        <div class="container">
          <div class="col-md-3 col-sm-12">
            <h3><?php the_field('bussiness_unit_title'); ?></h3>
          </div>
          <div class="col-md-9 col-sm-12">
            <?php the_field('bussiness_unit_description'); ?>
          </div>
        </div>
      </div>


     <!-- Loading the business units block -->
      <div class="business-units">
        <div class="navy-scroll">
          <a class="next-unit"></a>
          <a class="prev-unit"></a>
        </div>
        <div class="container bu-header">
          <h3 style="text-align: center">Our Businesses</h3>
        </div>
        <div class="container">
          <div class="units-list wrap-unit-list">
            <?php
                  $terms = get_terms(array( 
    'taxonomy' => 'bussinessunit',
    'hide_empty' => false,
) );
                  $count = count($terms);
          $i = 1;
           foreach($terms as $term):
            ?>
                  
                   
            <div class="col-md-6 listing-blocks <?php if($i == 1){ echo "full_height"; } else { echo "half_width"; } ?> wow fadeInUp">
              <div class="units-list">
                <div class="single-block clearfix">
                  <?php 
                  $image = get_field('bussiness_unit_image_list',$term->taxonomy . '_' . $term->term_id);
                  $bussiness_unit_list_icon = get_field('bussiness_unit_list_icon',$term->taxonomy . '_' . $term->term_id);
                  $term_link = get_term_link( $term ); ?>
                  <a
                    href="<?php echo $term_link; ?>"
                    class="block-icon"
                    style="
                      background-image: url('<?php echo esc_url($bussiness_unit_list_icon['url']); ?>');
                    "
                  ></a>
                  <a
                    href="<?php echo $term_link; ?>"
                    class="grad-black"
                  ></a>
                  <a class="full-link" href="<?php echo $term_link; ?>">
                    <div class="inner-have">
                      <div
                        class="block_image"
                        style="
                          background-image: url('<?php echo esc_url($image['url']); ?>');
                        "
                      ></div>
                      <div class="block-content">
                        <h5> <?php echo $term->name;?></h5>
                        <p>
                          <?php the_field('bussiness_unit_short_description',$term->taxonomy . '_' . $term->term_id); ?>
                        </p>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
                <?php $i++; endforeach; ?>       
          </div>
          <!-- end .ccm-page-list -->
        </div>
      </div>


 <div class="description-block sep-border-top">
        <div class="container center">
          <h3><?php the_field('bussiness_unit_page_title'); ?></h3>
          <p style="text-align: center">
            <?php the_field('bussiness_unit_page_description'); ?>
          </p>
        </div>
      </div>

            <!-- Loading the parallax Block -->
<?php 
                  $parallax_block_image = get_field('parallax_block_image'); ?>
      <div
        class="parallax-block"
        style="
          background-image: url('<?php echo esc_url($parallax_block_image['url']); ?>');
        "
      >
        <div class="container">
          <div class="paralax_wrap">
            <div class="parallax-content">
              <h3> <?php the_field('parallax_title'); ?></h3>
              <p>
                 <?php the_field('parallax_block_description'); ?>
              </p>
              <?php 
              $parallax_block_link = get_field('parallax_block_link'); ?>
              <a
                href="<?php echo esc_url(  $parallax_block_link['url'] ) ?>"
                title="<?php echo esc_html( $parallax_block_link['title']  ); ?>"
                class="parallax-link"
              ></a>
            </div>
          </div>
        </div>
      </div>

      <!-- loading the second content section -->

        <!-- loading the recent projects -->
      <div class="business-units description-block sep-border-top">
        <div class="container">
          <h3 style="text-align: center"> <?php the_field('bussiness_project_title'); ?></h3>
          <a href="<?php echo home_url('/projects'); ?>" class="bu-salink">See All</a>
        </div>
      </div>
      <div class="sc-block-item recent_block">
        <div class="container">
          
          <div class="navy-scroll projects-scroll">
            <div class="container">
              <a class="next-unit"></a>
              <a class="prev-unit"></a>
            </div>
          </div>
<?php
if( have_rows('bussiness_project_select') ): ?>
          <div id="projects-scroll" class="projects-list owl-carousel owl-theme">

<?php
//if( have_rows('bussiness_project_select') ):
    while( have_rows('bussiness_project_select') ) : the_row();

      $project_1 = get_sub_field('project_1');
      $project_2 = get_sub_field('project_2');

?>
            <div class="chunks">
              <div class="col-md-6 listing-blocks">
                <?php foreach($project_1 as $item) { ?>
                <div class="single-block clearfix wow fadeInUp">
                  <a
                    class="block-icon"
                    style="
                      background-image: url('./Uploads/images/icon-round-arrow.svg');
                    "
                    href="<?php echo get_permalink($item->ID); ?>"
                  ></a>
                  <a
                    class="grad-black"
                    href="<?php echo get_permalink($item->ID); ?>"
                  ></a>
                  <div class="inner-have">
                    <?php 
                      $project_list_image = get_field('project_list_image',$item->ID); ?>
                    <div
                      class="block_image"
                      style="
                        background-image: url('<?php echo esc_url($project_list_image['url']); ?>');
                      "
                    ></div>
                    <div class="block-content">
                      <h5>
                        <a href="<?php echo get_permalink($item->ID); ?>"
                          ><?php echo $item->post_title;?></a
                        >
                      </h5>
                      <p><?php echo the_field('single_project_description',$item->ID);?></p>
                    </div>
                  </div>
                </div>
              <?php } ?>
              </div>

              <div class="col-md-6 listing-blocks">
                <?php foreach($project_2 as $items) { ?>
                <div class="single-block clearfix wow fadeInUp">
                  <a
                    class="block-icon"
                    style="
                      background-image: url('../themes/scientechnic/images/icon-round-arrow.svg');
                    "
                    href="<?php echo get_permalink($items->ID); ?>"
                  ></a>
                  <a
                    class="grad-black"
                    href="<?php echo get_permalink($items->ID); ?>"
                  ></a>
                  <div class="inner-have">
                     <?php 
                      $project_list_images = get_field('project_list_image',$items->ID); ?>
                    <div
                      class="block_image"
                      style="
                        background-image: url('<?php echo esc_url($project_list_images['url']); ?>');
                      "
                    ></div>
                    <div class="block-content">
                      <h5>
                        <a
                          href="<?php echo get_permalink($items->ID); ?>"
                          ><?php echo $items->post_title;?></a
                        >
                      </h5>
                      <!--  <p><strong>Year:</strong> 2022<br/><strong>Location:</strong> Dubai<br/></p> -->
                      <p><?php echo the_field('single_project_description',$items->ID);?></p>
                    </div>
                  </div>
                </div>
   <?php } ?>
              </div>
            </div>
            
            <?php endwhile;  ?>
          </div>
        <?php endif; ?>
        </div>
      </div>
  <?php get_footer();?>