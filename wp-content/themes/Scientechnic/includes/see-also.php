<?php
      function seealso(){
?>
            <div class="bottom-items">
                  <div class="container">
                        <div class="links-hoster">
                              <div class="container">
                                    <div class="row">
                                          <ul class="link-blod list-inline">
                                                <?php
                                                      if( have_rows('see_also') ):
                                                            while( have_rows('see_also') ) : the_row();
                                                                  $image_imgg = get_sub_field('image');
                                                                  $image = $image_imgg['url'];
                                                ?>
                                                                  <li>
                                                                        <?php 
                                                                              $link = get_sub_field('link');
                                                                              if( $link ): 
                                                                                    $link_url = $link['url'];
                                                                                    $link_title = $link['title'];
                                                                                    $link_target = $link['target'] ? $link['target'] : '_self';
                                                                        ?>
                                                                                    <a class="row blockylarge reg1 registrar-box wow fadeInUp" href="<?php echo esc_url( $link_url ); ?>" target="<?php echo esc_attr( $link_target ); ?>">
                                                                                          <div class="content-holding" style="background-image: url('<?php echo $image;?>');">
                                                                                                <div class="contentinside">
                                                                                                      <h2><?php echo esc_html( $link_title ); ?></h2>
                                                                                                </div>
                                                                                          </div>
                                                                                    </a>
                                                                        <?php endif; ?>
                                                                  </li>
                                                <?php
                                                            endwhile;
                                                      endif;
                                                ?>
                                          </ul>
                                    </div>
                              </div>
                        </div>
                  </div>
            </div>
<?php
      }
?>