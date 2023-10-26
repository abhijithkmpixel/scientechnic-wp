<?php
function wporg_custom_post_type() {
	register_post_type('products',
		array(
			'labels'      => array(
				'name'          => __('Products', 'textdomain'),
				'singular_name' => __('Products', 'textdomain'),
			),
				'public'      => true,
				'has_archive' => true,
				'taxonomies'         => array('bussinessunit'),
		)
	);
}
add_action('init', 'wporg_custom_post_type');
