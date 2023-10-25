<?php 

function wpdocs_codex_news_init() {
  $labels = array(
      'name'                  => _x( 'News', 'Post type general name', 'textdomain' ),
      'singular_name'         => _x( 'News', 'Post type singular name', 'textdomain' ),
      'menu_name'             => _x( 'News', 'Admin Menu text', 'textdomain' ),
      'name_admin_bar'        => _x( 'News', 'Add New on Toolbar', 'textdomain' ),
      'add_new'               => __( 'Add New', 'textdomain' ),
      'add_new_item'          => __( 'Add New News', 'textdomain' ),
      'new_item'              => __( 'New News', 'textdomain' ),
      'edit_item'             => __( 'Edit News', 'textdomain' ),
      'view_item'             => __( 'View News', 'textdomain' ),
      'all_items'             => __( 'All News', 'textdomain' ),
      'search_items'          => __( 'Search News', 'textdomain' ),
      'parent_item_colon'     => __( 'Parent News:', 'textdomain' ),
  );
  $args = array(
      'labels'             => $labels,
      'public'             => true,
      'publicly_queryable' => true,
      'taxonomies'         => array('year'),
      'show_ui'            => true,
      'show_in_menu'       => true,
      'query_var'          => true,
      'rewrite'            => array( 'slug' => 'news' ),
      'capability_type'    => 'post',
      'has_archive'        => false,
      'hierarchical'       => false,
      'menu_position'      => null,
      'menu_icon'          => 'dashicons-format-aside',
      'supports'           => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
  );
  register_post_type( 'news', $args );
}

add_action( 'init', 'wpdocs_codex_news_init' );