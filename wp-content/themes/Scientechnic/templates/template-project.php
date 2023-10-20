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
<!-- filter section button -->
 <div class="container">
        <div class="projct-map-show nav nav-tabs">
          <span class="active">
            <a
              data-project="projects-home"
              href="#projects-home"
              class="sc-link"
              >Show Project List</a
            >
          </span>
          <span>
            <a data-project="project-map" href="#project-map" class="sc-link"
              >Show Map</a
            >
          </span>
        </div>
        <div class="filter-project">
          <form method="GET">
            <ul class="client-sorter list-inline">
              <li>
                <select name="business" class="sel-filter-business">
                  <option value="">Business Unit</option>
                  <?php
                  $terms = get_terms(array( 
    'taxonomy' => 'bussinessunit',
    'hide_empty' => false,
) );

					 foreach($terms as $term):?>
                  <option value="<?php echo $term->name; ?>">
                    <?php echo $term->name; ?>
                  </option>
              <?php endforeach; ?>
                </select>
              </li>
              <li>
                <select name="location" class="sel-filter-location">
                  <option value="">Location</option>
                   <?php
                  $location = get_terms(array( 
    'taxonomy' => 'Location',
    'hide_empty' => false,
) );
					 foreach($location as $loc):?>
                   <option value="<?php echo $loc->name; ?>">
                    <?php echo $loc->name; ?>
                  </option>
              <?php endforeach; ?>
                </select>
              </li>
              <li>
                <select name="year" class="sel-filter-year">
                  <option value="">Year</option>
                  <?php
                  $year = get_terms(array( 
    'taxonomy' => 'year',
    'hide_empty' => false,
) );
					 foreach($year as $yea):?>
                  <option value="<?php echo $yea->name; ?>">
                    <?php echo $yea->name; ?>
                  </option>
              <?php endforeach; ?>
                </select>
              </li>
            </ul>
          </form>
        </div>
      </div>
<!-- End filter button -->

<!-- filter -->
 <div class="project-tab-content">
        <div id="projects-home" class="project-list tab-pane active">
          <div class="container">
            <div class="units-list wrap-unit-list">
<?php
$posts = array(
  'post_type' => 'project',
  'post_status' => 'publish',
  'numberposts' => -1
  // 'order'    => 'ASC'
);

 $query = new WP_Query($posts);
  $total = $query->found_posts;
  if($query->have_posts()){
  // echo '<div class="tab_content filtercontents active_mesh row" id="solutionLists">';
    while ($query ->have_posts()) : $query->the_post(); ?>

              <div class="clearfix">

                <div class="col-md-6 listing-blocks full_height">
                  <div class="units-list">
                    <div class="single-block">
                      <a
                        href="dubai-water-canal/index.html"
                        class="block-icon"
                        style="
                          background-image: url('./Uploads/icon-round-arrow.svg');
                        "
                      ></a>
                      <a
                        class="grad-black"
                        href="dubai-water-canal/index.html"
                      ></a>
                      <div class="inner-have">
                        <div
                          class="block_image"
                          style="
                            background-image: url('./Uploads/92a9053c22075b88712193a53c160ddb_f2996.png');
                          "
                        ></div>
                        <div class="block-content">
                          <h5>
                            <a href="dubai-water-canal/index.html"
                              ><?php echo the_title();?></a
                            >
                          </h5>
                          <!-- <p><strong>Year:</strong> 2016                                        <br/><strong>Location:</strong> Dubai                                        <br/><strong>Project Type:</strong> Case Study                                    </p> -->
                          <p>
                            Design and engineering of electrical, lighting,
                            <br />
                            audio-video and ITS works at the Boardwalk
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
               
              </div>
          <?php endwhile; } ?>
            </div>
            <div id="pagination">
              <div class="container">
                <div class="ccm-pagination">
                  <span class="ccm-page-left"
                    ><span class="ltgray">Previous</span></span
                  >
                  <span class="currentPage active numbers"
                    ><strong>1</strong></span
                  ><span class="numbers"
                    ><a href="index4658.html?page=2">2</a></span
                  ><span class="numbers"
                    ><a href="index9ba9.html?page=3">3</a></span
                  ><span class="numbers"
                    ><a href="indexfdb0.html?page=4">4</a></span
                  ><span class="numbers"
                    ><a href="indexaf4d.html?page=5">5</a></span
                  ><span class="numbers"
                    ><a href="indexc575.html?page=6">6</a></span
                  ><span class="numbers"
                    ><a href="index235c.html?page=7">7</a></span
                  ><span class="numbers"
                    ><a href="indexfdfa.html?page=8">8</a></span
                  ><span class="numbers"
                    ><a href="index0b08.html?page=9">9</a></span
                  >
                  <span class="ccm-page-right"
                    ><a class="" href="index4658.html?page=2">Next</a></span
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>

      <!-- end filter -->

  <?php get_footer();?>
