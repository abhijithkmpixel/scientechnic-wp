<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'scientechnic' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'B/!0:Du[7CQ3PKs16O7gD+X:|.f,-Lh1~xgJO?B@#G%wkY3,8f QJ6q*4aL@H.]u' );
define( 'SECURE_AUTH_KEY',  ',L}oQ)H^<m^7,d6U%pbcE&uK0a<_Um_H-seQs?)3~4LUufJN@ec>^5-(`oIR LK{' );
define( 'LOGGED_IN_KEY',    '7k_(`:>Ugg#0VP$99iO;N+!K)zELsaaz&1,>/W-8@t[^u:3EGk0re#-*e@T1~V%y' );
define( 'NONCE_KEY',        'X?xu}{CuOMtex=]y6&FL*TAwC^{$k_ie:%&!.J2<[eK8huTEvjcwyIT@,BpZWtJ4' );
define( 'AUTH_SALT',        '=S`jc2yrR$q|ya@&nh&9^$Q_Vg]I[i9/Rm5OSf*=JJtfFG^Dyq0@:^lSM]:Uw1><' );
define( 'SECURE_AUTH_SALT', 'cIdd<<jSIlNW/^FU|]zH0EB/3<clBhYRFB#8ehkS5JujR|I&3BDw>t:db2[q6Q$x' );
define( 'LOGGED_IN_SALT',   '`[9+H8 hOMw%pba7deh5SZqz*:6O++*FPWLS/xJIE>U!L~G]%%.Nz{|rGo5pei!L' );
define( 'NONCE_SALT',       '*`cn;ZM_rTYJd+]q#x(.V.hzrnO-e43a-_wV4{7eUFy8? 2d!mnKiI4WxFBVU8Ig' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
