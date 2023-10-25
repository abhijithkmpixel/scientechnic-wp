<?php get_header();?>

<div class="banner-area">
      <?php $banner = wp_get_attachment_url( get_post_thumbnail_id($post->ID), 'thumbnail' );
            $banner_title = get_field('banner_title');
            $banner_description = get_field('banner_description');
      ?>

      <div class="sc-preloader"></div>
      <div id="slides">
            <ul class="slides-container">
                  <li>
                        <?php if($banner): echo'<img class="center center" src="'.$banner.'""/>'; endif;?>
                  </li>
            </ul>
      </div>
      <div class="topgradient"></div>
      <div class="slider-content">
            <div class="container move-uper">
                  <div class="content-holdingg wow fadeInUp">
                        <?php if($banner_title): echo'<h1>'.$banner_title.'</h1>'; endif;?>
                        <?php if($banner_description): echo'<p>'.$banner_description.'</p>'; endif;?>
                  </div>
            </div>
            <div class="container down-scroller">
                  <div class="trig-bot">
                        <a class="down-scroll" href="#sc-wrap"></a>
                  </div>


                  <div class="bc">
                        <a href="../index.html" target="_self">Home</a>
                        <span class="ccm-autonav-breadcrumb-sep">/</span> Partners
                  </div>
            </div>
      </div>
</div>

<div class="introduction-content">
      <div class="container">
            <div class="center dynamite">
                  <?php
                        $title = get_field('title');
                        $description = get_field('description');
                  ?>
                  <?php if($title): echo'<h2>'.$title.'</h2>'; endif;?>
                  <?php if($description): echo''.$description.''; endif;?>
            </div>
      </div>
</div>
<div class="action-blocks layout-double">
      <div class="container">
            <?php
                  if(have_rows('partners_details')):
                        while(have_rows('partners_details')):the_row();
                              $type = get_sub_field('type');
                              $image_normal = get_sub_field('image_normal');
                              // $image_normal = $image_normal_img['url'];
                              $title_normal = get_sub_field('title_normal');
                              $description_normal = get_sub_field('description_normal');
                              $image_bg = get_sub_field('image_bg');
                              // $image_bg = $image_bg_img['url'];
                              $title_bg = get_sub_field('title_bg');
                              $description_bg = get_sub_field('description_bg');
            ?>
            <?php
                  if($type == 'normal'){
            ?>
                              <div class="sc-container-warp">
                                    <div class="outer-act">
                                          <div class="col-md-12">
                                                <div class="col-md-6 padd-act">
                                                      <?php if($title_normal): echo'<h2>'.$title_normal.'</h2>'; endif;?>
                                                      <?php if($description_normal): echo''.$description_normal.''; endif;?>
                                                </div>
                                                <?php if($image_normal): echo'<div class="col-md-6 img-bg">
                                                      <img src="'.$image_normal.'" class="img-responsive"alt="Scientechnic | empowering tomorrow | UAE"/>
                                                </div>'; endif;?>
                                          </div>
                                    </div>
                              </div>
            <?php
                  }elseif($type == 'bg'){
            ?>
                              <div class="greyone">
                                    <div class="sc-container-warp">
                                          <div class="outer-act">
                                                <div class="col-md-12">
                                                      <div class="col-md-6 padd-act">
                                                            <?php if($title_bg): echo'<h2>QHSE policy</h2>'; endif;?>
                                                            <?php if($description_bg): echo''.$description_bg.''; endif;?>
                                                            </div>
                                                      </div>
                                                      <?php if($image_bg): echo'<div class="col-md-6 img-bg">
                                                            <img src="'.$image_bg.'"  class="img-responsive" alt="Scientechnic | empowering tomorrow | UAE"/>
                                                      </div>'; endif;?>
                                                </div>
                                          </div>
                                    </div>
                              </div>
            
            <?php
                  }
                        endwhile;
                  endif;
            ?>
        </div>
      </div>

<?php get_footer();?>