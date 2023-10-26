<?php
/**
 * Register a custom post type called "Projects".
 *
 * @see get_post_type_labels() for label keys.
 */
function wpdocs_codex_companies_new_init() {
  $labels = array(
      'name'                  => _x( 'Projects', 'Post type general name', 'textdomain' ),
      'singular_name'         => _x( 'Projects', 'Post type singular name', 'textdomain' ),
      'menu_name'             => _x( 'Projects', 'Admin Menu text', 'textdomain' ),
      'name_admin_bar'        => _x( 'Projects', 'Add New on Toolbar', 'textdomain' ),
      'add_new'               => __( 'Add New', 'textdomain' ),
      'add_new_item'          => __( 'Add New Project', 'textdomain' ),
      'new_item'              => __( 'New Project', 'textdomain' ),
      'edit_item'             => __( 'Edit Project', 'textdomain' ),
      'view_item'             => __( 'View Project', 'textdomain' ),
      'all_items'             => __( 'All Projects', 'textdomain' ),
      'search_items'          => __( 'Search Project', 'textdomain' ),
      'parent_item_colon'     => __( 'Parent Project:', 'textdomain' ),
  );

  $args = array(
      'labels'             => $labels,
      'public'             => true,
      'publicly_queryable' => true,
      //'taxonomies'         => array('projectcategory'),
      'show_ui'            => true,
      'show_in_menu'       => true,
      'query_var'          => true,
      'rewrite'            => array( 'slug' => 'projects' ),
      'capability_type'    => 'post',
      'has_archive'        => true,
      'hierarchical'       => false,
      'menu_position'      => null,
      'menu_icon'          => 'dashicons-format-aside',
      'supports'           => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
  );

  register_post_type( 'project', $args );
}

add_action( 'init', 'wpdocs_codex_companies_new_init' );

function create_expertise_taxonomy() {
  $labels = array(
    'name' => _x( 'Year', 'taxonomy general name' ),
    'singular_name' => _x( 'Year', 'taxonomy singular name' ),
    'search_items' =>  __( 'Search Years' ),
    'all_items' => __( 'All Year' ),
    'parent_item' => __( 'Parent Year' ),
    'parent_item_colon' => __( 'Parent Year:' ),
    'edit_item' => __( 'Edit Year' ), 
    'update_item' => __( 'Update Year' ),
    'add_new_item' => __( 'Add new Year' ),
    'new_item_name' => __( 'New Year name' ),
    'menu_name' => __( 'Years' ),
  );
  register_taxonomy('year',array('project'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_in_rest' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'year' ),
  ));
 
}
add_action( 'init', 'create_expertise_taxonomy' );

// Taxonomy Bussiness Units

add_action( 'init', 'create_subjects_hierarchical_taxonomy', 0 );   
function create_subjects_hierarchical_taxonomy() {
$labels = array(
    'name' => _x( 'Bussiness Units', 'taxonomy general name' ),
    'singular_name' => _x( 'Bussiness Unit', 'taxonomy singular name' ),
    'search_items' =>  __( 'Search Bussiness Units' ),
    'all_items' => __( 'All Bussiness Units' ),
    'parent_item' => __( 'Parent Bussiness Unit' ),
    'parent_item_colon' => __( 'Parent Bussiness Unit:' ),
    'edit_item' => __( 'Edit Bussiness Unit' ), 
    'update_item' => __( 'Update Bussiness Unit' ),
    'add_new_item' => __( 'Add New Bussiness Unit' ),
    'new_item_name' => __( 'New Bussiness Unit Name' ),
    'menu_name' => __( 'Bussiness Units' ),
  );    

  register_taxonomy('bussinessunit',array('project'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_in_rest' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'bussinessunit' ),
  ));
  
}


// Taxonomy Location

add_action( 'init', 'create_location_hierarchical_taxonomy_');   
function create_location_hierarchical_taxonomy_() {
$labels = array(
    'name' => _x( 'Location', 'taxonomy general name' ),
    'singular_name' => _x( 'Location', 'taxonomy singular name' ),
    'search_items' =>  __( 'Search Location' ),
    'all_items' => __( 'All Location' ),
    'parent_item' => __( 'Parent Location' ),
    'parent_item_colon' => __( 'Parent Location:' ),
    'edit_item' => __( 'Edit Location' ), 
    'update_item' => __( 'Update Location' ),
    'add_new_item' => __( 'Add New Location' ),
    'new_item_name' => __( 'New Location' ),
    'menu_name' => __( 'Location' ),
  );    

  register_taxonomy('Location',array('project'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_in_rest' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'location' ),
  ));
  
}
