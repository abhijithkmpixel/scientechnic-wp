<?php
if ( ! defined( '_S_VERSION' ) ) {
    // Replace the version number of the theme on each release.
    define( '_S_VERSION', '1.0.0' );
}

if ( ! function_exists( 'theme_setup' ) ) :
  function theme_setup() {
    // Add default posts and comments RSS feed links to head.
    add_theme_support( 'automatic-feed-links' );
    add_theme_support( 'title-tag' );
    add_theme_support( 'post-thumbnails' );
  }
endif;
add_action( 'after_setup_theme', 'theme_setup' );

/* Register menu */
    function register_my_menu() {
      register_nav_menu('desktop-header-menu',__( 'Desktop Header Menu' ));
      register_nav_menu('mobile-header-menu',__( 'Mobile Header Menu' ));
      register_nav_menu('footer-menu',__( 'Footer menu' ));
    }
    add_action( 'init', 'register_my_menu' );
/* Register menu end */

//Disable Gutenburg Editor
    add_filter('use_block_editor_for_post', '__return_false', 10);
//Disable Gutenburg Editor end

// support SVG
    function cc_mime_types($mimes) {
      $mimes['svg'] = 'image/svg+xml';
      return $mimes;
    }
    add_filter('upload_mimes', 'cc_mime_types');
// support SVG end

/* Convert to WEBP URL*/
    function webpUrl($url) {
      if($url && strpos($url, 'uploads') !== false){
        $url = str_replace("uploads","uploads-webpc/uploads", $url);
        $url = $url . '.webp';
      }
      return $url;
    }
/* Convert to WEBP URL end*/

/* custom option page with ACF */
    if( function_exists('acf_add_options_page') ) {
        acf_add_options_page(array(
            'page_title'    => 'Theme General Settings',
            'menu_title'    => 'Theme Settings',
            'menu_slug'     => 'theme-general-settings',
            'capability'    => 'edit_posts',
            'redirect'      => false
        ));
        acf_add_options_sub_page(array(
            'page_title'    => 'Theme Header Settings',
            'menu_title'    => 'Header',
            'parent_slug'   => 'theme-general-settings',
        ));
        acf_add_options_sub_page(array(
            'page_title'    => 'Theme Footer Settings',
            'menu_title'    => 'Footer',
            'parent_slug'   => 'theme-general-settings',
        ));
        acf_add_options_sub_page(array(
            'page_title'    => '404 page Settings',
            'menu_title'    => '404 page',
            'parent_slug'   => 'theme-general-settings',
        )); 
    }
/* custom option page with ACF end */

/* Enqueue scripts and styles.*/
// function theme_scripts() {
//     wp_enqueue_style( 'theme-style', get_stylesheet_uri(), array(), _S_VERSION );
//     wp_enqueue_style('font', get_template_directory_uri() . '/assets/css/font-awesome.min.css');
//     wp_enqueue_style('mapbox', get_template_directory_uri() . '/assets/css/mapbox-gl.css');
//     wp_enqueue_style('print', get_template_directory_uri() . '/assets/css/print.css');
//     wp_enqueue_style('slick-theme', get_template_directory_uri() . '/assets/css/slick-theme.css');
//     wp_enqueue_style('custom', get_template_directory_uri() . '/assets/css/custom.css');
//     wp_enqueue_style('style', get_template_directory_uri() . '/assets/css/style.css');
//      wp_enqueue_style('jquery', get_template_directory_uri() . '/assets/css/jquery.fancybox.css');
//       wp_enqueue_style('ccm', get_template_directory_uri() . '/assets/css/ccm.base.css');
//       wp_enqueue_style('data', get_template_directory_uri() . '/assets/css/datatables.min.css');


//     wp_style_add_data( 'theme-style', 'rtl', 'replace' );
//      wp_enqueue_script( 'ccm-base', get_template_directory_uri() . '/assets/js/ccm.base.js', array(), _S_VERSION, true );
//   wp_enqueue_script( 'jquery', get_template_directory_uri() . '/assets/js/jquery.js', array(), _S_VERSION, true );
//     wp_enqueue_script( 'jquery-mCustomScrollbar', get_template_directory_uri() . '/assets/js/jquery.mCustomScrollbar.concat.min.js', array(), _S_VERSION, true );
//     wp_enqueue_script( 'datatables-js', get_template_directory_uri() . '/assets/js/datatables.min.js', array(), _S_VERSION, true );
//     wp_enqueue_script( 'codebird', get_template_directory_uri() . '/assets/js/codebird.js', array(), _S_VERSION, true );
//     wp_enqueue_script( 'doT-min', get_template_directory_uri() . '/assets/js/doT.min.js', array(), _S_VERSION, true );
   
   
    
    
    
//     wp_enqueue_script( 'data-js', get_template_directory_uri() . '/assets/js/datatables.min.js', array(), _S_VERSION, true );
   
//      wp_enqueue_script( 'moment', get_template_directory_uri() . '/assets/js/moment.js', array(), _S_VERSION, true );
//       wp_enqueue_script( 'jquery-socialfeed', get_template_directory_uri() . '/assets/js/jquery.socialfeed.js', array(), _S_VERSION, true );
//     wp_enqueue_script( 'jPushMenu', get_template_directory_uri() . '/assets/js/jPushMenu.js', array(), _S_VERSION, true );
    

//     wp_enqueue_script( 'mapbox-gl', get_template_directory_uri() . '/assets/js/mapbox-gl.js', array(), _S_VERSION, true );
//            wp_enqueue_script( 'map-js', get_template_directory_uri() . '/assets/js/map.js', array(), _S_VERSION, true );

//         wp_enqueue_script( 'wow-js', get_template_directory_uri() . '/assets/js/wow.js', array(), _S_VERSION, true );
            
//              wp_enqueue_script( 'all-js', get_template_directory_uri() . '/assets/js/all.js', array(), _S_VERSION, true );
// wp_enqueue_script( 'slick-js', get_template_directory_uri() . '/assets/js/slick.js', array(), _S_VERSION, true );

// wp_enqueue_script( 'jquery-ui-js', get_template_directory_uri() . '/assets/js/jquery.ui.js', array(), _S_VERSION, true );

//              wp_enqueue_script( 'smoothDivScroll-js', get_template_directory_uri() . '/assets/js/smoothDivScroll.js', array(), _S_VERSION, true );
//              wp_enqueue_script( 'jquery-fancybox-js', get_template_directory_uri() . '/assets/js/jquery-fancybox.js', array(), _S_VERSION, true );
//              wp_enqueue_script( 'jquery-fancybox', get_template_directory_uri() . '/assets/js/jquery.fancybox-media.js', array(), _S_VERSION, true );
    
//              wp_enqueue_script( 'custom-js', get_template_directory_uri() . '/assets/js/custom.js', array(), _S_VERSION, true );

//   wp_enqueue_script( 'jquery-matchHeight-min', get_template_directory_uri() . '/assets/js/jquery.matchHeight-min.js', array(), _S_VERSION, true );
  
 
//     wp_enqueue_script( 'jquery-superslides', get_template_directory_uri() . '/assets/js/jquery.superslides.min.js', array(), _S_VERSION, true );
     
            
            
// }
// add_action( 'wp_enqueue_scripts', 'theme_scripts' );

// custom functions
    require get_template_directory() . '/includes/custom.php';
    require get_template_directory() . '/includes/cpt/projects.php';
    