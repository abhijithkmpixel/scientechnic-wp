<?php
/* Template Name: News page */
/* */
?>
 <?php get_header();?>
 <div class="banner-area half-size">
        <div class="sc-preloader"></div>
        <div id="slides">
          <ul class="slides-container">
            <li>
            	<?php 
        				$news_banner_image = get_field('news_banner_image');
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
              <h1><?php the_field('news_page_title'); ?></h1>
              <p><?php the_field('news_banner_description'); ?></p>
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
        <div class="col-sm-12">
          <div class="center dynamite">
            <h2><?php the_field('news_listing_title'); ?></h2>
          </div>
          <div class="columns-row row">
            <div class="col-md-6"></div>
            <div class="col-md-6"></div>
          </div>
        </div>
      </div>
    </div>


<div class="container">
      <div class="news-filter-wrap">
        <div class="insight-filter filter-type">
          <form>
            <div class="filter-show-all">
              <span>Filter By</span>
            </div>
            <div class="filter-drop">
              <select name="year">
                <option value="all">Year</option>

                <?php
                  $year = get_terms(array( 
    'taxonomy' => 'year',
    'hide_empty' => false,
		) );
					 foreach($year as $yea){?>
                  <option value="<?php echo $yea->name; ?>">
                    <?php echo $yea->name; ?>
                  </option>
              <?php } ?>

              </select>
            </div>
            <div class="filter-search">
              <input name="query" type="text" placeholder="Search" value="" />
              <input type="submit" />
            </div>
          </form>
        </div>
      </div>
    </div>

<!-- 
News Listing -->

 <div class="news-listing">
        <div class="container">
          <ul class="news-teasers list-inline">

<?php
$posts = array(
  'post_type' => 'news',
  'post_status' => 'publish',
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
          <div id="pagination">
            <div class="ccm-spacer"></div>
            <div class="ccm-pagination">
              <span class="ccm-page-left"
                ><span class="ltgray">&laquo; Previous</span></span
              >
              <span class="currentPage active numbers"><strong>1</strong></span
              ><span class="numbers"><a href="index4658.html?page=2">2</a></span
              ><span class="numbers"><a href="index9ba9.html?page=3">3</a></span
              ><span class="numbers"><a href="indexfdb0.html?page=4">4</a></span
              ><span class="numbers"><a href="indexaf4d.html?page=5">5</a></span
              ><span class="numbers"><a href="indexc575.html?page=6">6</a></span
              ><span class="numbers"><a href="index235c.html?page=7">7</a></span
              ><span class="ccm-pagination-ellipses">...</span
              ><span class="numbers"
                ><a href="indexa7f1.html?page=14">14</a></span
              >
              <span class="ccm-page-right"
                ><a class="" href="index4658.html?page=2">Next &raquo;</a></span
              >
            </div>
          </div>
        </div>
      </div>



  <?php get_footer();?>