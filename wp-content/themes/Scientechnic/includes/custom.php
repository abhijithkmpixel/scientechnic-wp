<?php
// Redirection
function my_logged_in_redirect() { 
      if( have_rows('redirection_urls', 'options') ):
          while( have_rows('redirection_urls', 'options') ) : the_row();
              $source_url = get_sub_field('source_url');
              $source_id 	= url_to_postid( $source_url );
              $target_url = get_sub_field('target_url');
              $target_id 	= url_to_postid( $target_url );
            if ( is_page( $source_id ) ) {
                wp_redirect( get_permalink( $target_id ) );
                die;
            }
          endwhile;
      endif;    
    }
    add_action( 'template_redirect', 'my_logged_in_redirect' );
    // Redirection end
?>