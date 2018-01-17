# WordPress MySQL database migration
#
# Generated: Wednesday 17. January 2018 18:58 UTC
# Hostname: database
# Database: `wordpress`
# URL: //staging-newportartmuseum.kinsta.com
# Path: /www/newportartmuseum_353/public
# Tables: wp_commentmeta, wp_comments, wp_gf_addon_feed, wp_links, wp_object_sync_sf_field_map, wp_object_sync_sf_object_map, wp_options, wp_pmxi_files, wp_pmxi_history, wp_pmxi_imports, wp_pmxi_posts, wp_pmxi_templates, wp_postmeta, wp_posts, wp_rg_form, wp_rg_form_meta, wp_rg_form_view, wp_rg_incomplete_submissions, wp_rg_lead, wp_rg_lead_detail, wp_rg_lead_detail_long, wp_rg_lead_meta, wp_rg_lead_notes, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_woocommerce_api_keys, wp_woocommerce_attribute_taxonomies, wp_woocommerce_bundled_itemmeta, wp_woocommerce_bundled_items, wp_woocommerce_downloadable_product_permissions, wp_woocommerce_log, wp_woocommerce_order_itemmeta, wp_woocommerce_order_items, wp_woocommerce_payment_tokenmeta, wp_woocommerce_payment_tokens, wp_woocommerce_sessions, wp_woocommerce_shipping_zone_locations, wp_woocommerce_shipping_zone_methods, wp_woocommerce_shipping_zones, wp_woocommerce_tax_rate_locations, wp_woocommerce_tax_rates
# Table Prefix: wp_
# Post Types: revision, events, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-06 20:48:39', '2018-01-06 20:48:39', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_gf_addon_feed`
#

DROP TABLE IF EXISTS `wp_gf_addon_feed`;


#
# Table structure of table `wp_gf_addon_feed`
#

CREATE TABLE `wp_gf_addon_feed` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `feed_order` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addon_form` (`addon_slug`,`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_gf_addon_feed`
#

#
# End of data contents of table `wp_gf_addon_feed`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_object_sync_sf_field_map`
#

DROP TABLE IF EXISTS `wp_object_sync_sf_field_map`;


#
# Table structure of table `wp_object_sync_sf_field_map`
#

CREATE TABLE `wp_object_sync_sf_field_map` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wordpress_object` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salesforce_object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salesforce_record_types_allowed` longblob DEFAULT NULL,
  `salesforce_record_type_default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pull_trigger_field` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LastModifiedDate',
  `sync_triggers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `push_async` tinyint(1) NOT NULL DEFAULT 0,
  `push_drafts` tinyint(1) NOT NULL DEFAULT 0,
  `weight` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `name_sf_type_wordpress_type` (`wordpress_object`,`salesforce_object`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_object_sync_sf_field_map`
#

#
# End of data contents of table `wp_object_sync_sf_field_map`
# --------------------------------------------------------



#
# Delete any existing table `wp_object_sync_sf_object_map`
#

DROP TABLE IF EXISTS `wp_object_sync_sf_object_map`;


#
# Table structure of table `wp_object_sync_sf_object_map`
#

CREATE TABLE `wp_object_sync_sf_object_map` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `wordpress_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesforce_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wordpress_object` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `object_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_sync` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_sync_action` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_sync_status` tinyint(1) NOT NULL DEFAULT 0,
  `last_sync_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salesforce` (`salesforce_id`),
  UNIQUE KEY `salesforce_wordpress` (`wordpress_object`,`wordpress_id`),
  KEY `wordpress_object` (`wordpress_object`,`wordpress_id`),
  KEY `salesforce_object` (`salesforce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_object_sync_sf_object_map`
#

#
# End of data contents of table `wp_object_sync_sf_object_map`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://staging-newportartmuseum.kinsta.com', 'yes'),
(2, 'home', 'http://staging-newportartmuseum.kinsta.com', 'yes'),
(3, 'blogname', 'Newport Art Museum', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nic@workshop.co', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:314:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:16:"shop-products/?$";s:33:"index.php?post_type=shop-products";s:46:"shop-products/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=shop-products&feed=$matches[1]";s:41:"shop-products/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=shop-products&feed=$matches[1]";s:33:"shop-products/page/([0-9]{1,})/?$";s:51:"index.php?post_type=shop-products&paged=$matches[1]";s:18:"membership-tier/?$";s:35:"index.php?post_type=membership-tier";s:48:"membership-tier/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=membership-tier&feed=$matches[1]";s:43:"membership-tier/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=membership-tier&feed=$matches[1]";s:35:"membership-tier/page/([0-9]{1,})/?$";s:53:"index.php?post_type=membership-tier&paged=$matches[1]";s:17:"donation-tiers/?$";s:34:"index.php?post_type=donation-tiers";s:47:"donation-tiers/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=donation-tiers&feed=$matches[1]";s:42:"donation-tiers/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=donation-tiers&feed=$matches[1]";s:34:"donation-tiers/page/([0-9]{1,})/?$";s:52:"index.php?post_type=donation-tiers&paged=$matches[1]";s:13:"exhibition/?$";s:31:"index.php?post_type=exhibitions";s:43:"exhibition/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=exhibitions&feed=$matches[1]";s:38:"exhibition/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=exhibitions&feed=$matches[1]";s:30:"exhibition/page/([0-9]{1,})/?$";s:49:"index.php?post_type=exhibitions&paged=$matches[1]";s:9:"events/?$";s:26:"index.php?post_type=events";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=events&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=events&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:44:"index.php?post_type=events&paged=$matches[1]";s:10:"classes/?$";s:27:"index.php?post_type=classes";s:40:"classes/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=classes&feed=$matches[1]";s:35:"classes/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=classes&feed=$matches[1]";s:27:"classes/page/([0-9]{1,})/?$";s:45:"index.php?post_type=classes&paged=$matches[1]";s:7:"news/?$";s:24:"index.php?post_type=news";s:37:"news/feed/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=news&feed=$matches[1]";s:32:"news/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=news&feed=$matches[1]";s:24:"news/page/([0-9]{1,})/?$";s:42:"index.php?post_type=news&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:52:"wp_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?wp_log_type=$matches[1]&feed=$matches[2]";s:47:"wp_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?wp_log_type=$matches[1]&feed=$matches[2]";s:28:"wp_log_type/([^/]+)/embed/?$";s:44:"index.php?wp_log_type=$matches[1]&embed=true";s:40:"wp_log_type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?wp_log_type=$matches[1]&paged=$matches[2]";s:22:"wp_log_type/([^/]+)/?$";s:33:"index.php?wp_log_type=$matches[1]";s:46:"group/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?group=$matches[1]&feed=$matches[2]";s:41:"group/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?group=$matches[1]&feed=$matches[2]";s:22:"group/([^/]+)/embed/?$";s:38:"index.php?group=$matches[1]&embed=true";s:34:"group/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?group=$matches[1]&paged=$matches[2]";s:16:"group/([^/]+)/?$";s:27:"index.php?group=$matches[1]";s:56:"news-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?news-categories=$matches[1]&feed=$matches[2]";s:51:"news-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?news-categories=$matches[1]&feed=$matches[2]";s:32:"news-categories/([^/]+)/embed/?$";s:48:"index.php?news-categories=$matches[1]&embed=true";s:44:"news-categories/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?news-categories=$matches[1]&paged=$matches[2]";s:26:"news-categories/([^/]+)/?$";s:37:"index.php?news-categories=$matches[1]";s:58:"events-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?events-categories=$matches[1]&feed=$matches[2]";s:53:"events-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?events-categories=$matches[1]&feed=$matches[2]";s:34:"events-categories/([^/]+)/embed/?$";s:50:"index.php?events-categories=$matches[1]&embed=true";s:46:"events-categories/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?events-categories=$matches[1]&paged=$matches[2]";s:28:"events-categories/([^/]+)/?$";s:39:"index.php?events-categories=$matches[1]";s:59:"classes-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?classes-categories=$matches[1]&feed=$matches[2]";s:54:"classes-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?classes-categories=$matches[1]&feed=$matches[2]";s:35:"classes-categories/([^/]+)/embed/?$";s:51:"index.php?classes-categories=$matches[1]&embed=true";s:47:"classes-categories/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?classes-categories=$matches[1]&paged=$matches[2]";s:29:"classes-categories/([^/]+)/?$";s:40:"index.php?classes-categories=$matches[1]";s:63:"exhibitions-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?exhibitions-categories=$matches[1]&feed=$matches[2]";s:58:"exhibitions-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?exhibitions-categories=$matches[1]&feed=$matches[2]";s:39:"exhibitions-categories/([^/]+)/embed/?$";s:55:"index.php?exhibitions-categories=$matches[1]&embed=true";s:51:"exhibitions-categories/([^/]+)/page/?([0-9]{1,})/?$";s:62:"index.php?exhibitions-categories=$matches[1]&paged=$matches[2]";s:33:"exhibitions-categories/([^/]+)/?$";s:44:"index.php?exhibitions-categories=$matches[1]";s:41:"shop-products/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"shop-products/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"shop-products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"shop-products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"shop-products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"shop-products/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"shop-products/([^/]+)/embed/?$";s:46:"index.php?shop-products=$matches[1]&embed=true";s:34:"shop-products/([^/]+)/trackback/?$";s:40:"index.php?shop-products=$matches[1]&tb=1";s:54:"shop-products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?shop-products=$matches[1]&feed=$matches[2]";s:49:"shop-products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?shop-products=$matches[1]&feed=$matches[2]";s:42:"shop-products/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?shop-products=$matches[1]&paged=$matches[2]";s:49:"shop-products/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?shop-products=$matches[1]&cpage=$matches[2]";s:38:"shop-products/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?shop-products=$matches[1]&page=$matches[2]";s:30:"shop-products/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"shop-products/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"shop-products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"shop-products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"shop-products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"shop-products/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"membership-tier/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"membership-tier/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"membership-tier/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"membership-tier/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"membership-tier/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"membership-tier/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"membership-tier/([^/]+)/embed/?$";s:48:"index.php?membership-tier=$matches[1]&embed=true";s:36:"membership-tier/([^/]+)/trackback/?$";s:42:"index.php?membership-tier=$matches[1]&tb=1";s:56:"membership-tier/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?membership-tier=$matches[1]&feed=$matches[2]";s:51:"membership-tier/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?membership-tier=$matches[1]&feed=$matches[2]";s:44:"membership-tier/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?membership-tier=$matches[1]&paged=$matches[2]";s:51:"membership-tier/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?membership-tier=$matches[1]&cpage=$matches[2]";s:40:"membership-tier/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?membership-tier=$matches[1]&page=$matches[2]";s:32:"membership-tier/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"membership-tier/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"membership-tier/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"membership-tier/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"membership-tier/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"membership-tier/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"donation-tiers/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"donation-tiers/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"donation-tiers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"donation-tiers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"donation-tiers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"donation-tiers/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"donation-tiers/([^/]+)/embed/?$";s:47:"index.php?donation-tiers=$matches[1]&embed=true";s:35:"donation-tiers/([^/]+)/trackback/?$";s:41:"index.php?donation-tiers=$matches[1]&tb=1";s:55:"donation-tiers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?donation-tiers=$matches[1]&feed=$matches[2]";s:50:"donation-tiers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?donation-tiers=$matches[1]&feed=$matches[2]";s:43:"donation-tiers/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?donation-tiers=$matches[1]&paged=$matches[2]";s:50:"donation-tiers/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?donation-tiers=$matches[1]&cpage=$matches[2]";s:39:"donation-tiers/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?donation-tiers=$matches[1]&page=$matches[2]";s:31:"donation-tiers/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"donation-tiers/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"donation-tiers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"donation-tiers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"donation-tiers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"donation-tiers/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"exhibition/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"exhibition/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"exhibition/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"exhibition/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"exhibition/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"exhibition/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"exhibition/([^/]+)/embed/?$";s:44:"index.php?exhibitions=$matches[1]&embed=true";s:31:"exhibition/([^/]+)/trackback/?$";s:38:"index.php?exhibitions=$matches[1]&tb=1";s:51:"exhibition/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?exhibitions=$matches[1]&feed=$matches[2]";s:46:"exhibition/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?exhibitions=$matches[1]&feed=$matches[2]";s:39:"exhibition/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?exhibitions=$matches[1]&paged=$matches[2]";s:46:"exhibition/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?exhibitions=$matches[1]&cpage=$matches[2]";s:35:"exhibition/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?exhibitions=$matches[1]&page=$matches[2]";s:27:"exhibition/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"exhibition/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"exhibition/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"exhibition/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"exhibition/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"exhibition/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"events/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"events/([^/]+)/embed/?$";s:39:"index.php?events=$matches[1]&embed=true";s:27:"events/([^/]+)/trackback/?$";s:33:"index.php?events=$matches[1]&tb=1";s:47:"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?events=$matches[1]&feed=$matches[2]";s:42:"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?events=$matches[1]&feed=$matches[2]";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&cpage=$matches[2]";s:31:"events/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?events=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"events/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"classes/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"classes/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"classes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"classes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"classes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"classes/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"classes/([^/]+)/embed/?$";s:40:"index.php?classes=$matches[1]&embed=true";s:28:"classes/([^/]+)/trackback/?$";s:34:"index.php?classes=$matches[1]&tb=1";s:48:"classes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?classes=$matches[1]&feed=$matches[2]";s:43:"classes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?classes=$matches[1]&feed=$matches[2]";s:36:"classes/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?classes=$matches[1]&paged=$matches[2]";s:43:"classes/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?classes=$matches[1]&cpage=$matches[2]";s:32:"classes/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?classes=$matches[1]&page=$matches[2]";s:24:"classes/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"classes/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"classes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"classes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"classes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"classes/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"news/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"news/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"news/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"news/([^/]+)/embed/?$";s:37:"index.php?news=$matches[1]&embed=true";s:25:"news/([^/]+)/trackback/?$";s:31:"index.php?news=$matches[1]&tb=1";s:45:"news/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?news=$matches[1]&feed=$matches[2]";s:40:"news/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?news=$matches[1]&feed=$matches[2]";s:33:"news/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?news=$matches[1]&paged=$matches[2]";s:40:"news/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?news=$matches[1]&cpage=$matches[2]";s:29:"news/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?news=$matches[1]&page=$matches[2]";s:21:"news/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"news/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"news/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'custom', 'yes'),
(41, 'stylesheet', 'custom', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:"woocommerce-services/woocommerce-services.php";a:2:{i:0;s:17:"WC_Connect_Loader";i:1;s:16:"plugin_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:20:"configure_salesforce";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:12:{i:1516215226;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1516222121;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1516222126;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516222314;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516222362;a:1:{s:17:"gravityforms_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516225228;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1516225597;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516233600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516565866;a:1:{s:20:"wcs_cleanup_big_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1516744720;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1517875200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(117, 'can_compress_scripts', '0', 'no'),
(132, 'recently_activated', 'a:6:{s:19:"jetpack/jetpack.php";i:1515364356;s:45:"woocommerce-services/woocommerce-services.php";i:1515364342;s:59:"woocommerce-product-bundles/woocommerce-product-bundles.php";i:1515362449;s:35:"wpai-acf-add-on/wpai-acf-add-on.php";i:1515277108;s:37:"wpai-user-add-on/wpai-user-add-on.php";i:1515277108;s:39:"wp-all-import-pro/wp-all-import-pro.php";i:1515277108;}', 'yes'),
(138, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'acf_version', '5.6.7', 'yes'),
(142, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(143, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(144, 'gform_enable_background_updates', '1', 'yes'),
(145, 'gf_db_version', '2.2.5', 'yes'),
(146, 'gform_pending_installation', '', 'yes'),
(147, 'rg_form_version', '2.2.5', 'yes'),
(148, 'gravityformsaddon_feed-base_version', '0.13', 'yes'),
(149, 'gravityformsaddon_gravityformsmailchimp_version', '4.2', 'yes'),
(157, 'rg_gforms_key', 'a1cbfbeaeac872ec749e236d1e61e5a3', 'yes'),
(158, 'rg_gforms_enable_akismet', '1', 'yes'),
(159, 'rg_gforms_currency', 'USD', 'yes'),
(160, 'gform_enable_toolbar_menu', '1', 'yes'),
(161, 'mtphr_post_duplicator_settings', '', 'yes'),
(162, 'cpto_options', 'a:7:{s:23:"show_reorder_interfaces";a:2:{s:4:"post";s:4:"hide";s:10:"attachment";s:4:"hide";}s:8:"autosort";i:1;s:9:"adminsort";i:1;s:18:"use_query_ASC_DESC";s:0:"";s:17:"archive_drag_drop";i:1;s:10:"capability";s:14:"manage_options";s:21:"navigation_sort_apply";i:1;}', 'yes'),
(163, 'CPT_configured', 'TRUE', 'yes'),
(166, 'PMAI_Plugin_Options', 'a:0:{}', 'yes'),
(167, 'PMUI_Plugin_Options', 'a:0:{}', 'yes'),
(168, 'PMXI_Plugin_Options', 'a:30:{s:12:"info_api_url";s:26:"http://www.wpallimport.com";s:18:"history_file_count";i:10000;s:16:"history_file_age";i:365;s:15:"highlight_limit";i:10000;s:19:"upload_max_filesize";i:2048;s:13:"post_max_size";i:2048;s:14:"max_input_time";i:-1;s:18:"max_execution_time";i:-1;s:7:"dismiss";i:0;s:16:"dismiss_speed_up";i:0;s:13:"html_entities";i:0;s:11:"utf8_decode";i:0;s:12:"cron_job_key";s:10:"7g_OZZZetH";s:10:"chunk_size";i:32;s:9:"pingbacks";i:1;s:33:"legacy_special_character_handling";i:1;s:14:"case_sensitive";i:1;s:12:"session_mode";s:7:"default";s:17:"enable_ftp_import";i:0;s:16:"large_feed_limit";i:1000;s:26:"cron_processing_time_limit";i:120;s:6:"secure";i:1;s:11:"log_storage";i:5;s:10:"cron_sleep";s:0:"";s:4:"port";s:0:"";s:16:"google_client_id";s:0:"";s:16:"google_signature";s:0:"";s:8:"licenses";a:0:{}s:8:"statuses";a:0:{}s:19:"force_stream_reader";i:0;}', 'yes'),
(178, 'pmxi_is_migrated', '4.5.0', 'yes'),
(179, 'wp_all_import_db_version', '4.5.0', 'yes'),
(187, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5T1RNd01UVjhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMkxURXhMVEEwSURFek9qRXdPakkwIjtzOjM6InVybCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDgwIjt9', 'yes'),
(193, 'woocommerce_store_address', '76 Bellevue Avenue', 'yes'),
(194, 'woocommerce_store_address_2', '', 'yes'),
(195, 'woocommerce_store_city', 'Newport', 'yes'),
(196, 'woocommerce_default_country', 'US:RI', 'yes'),
(197, 'woocommerce_store_postcode', '02840', 'yes'),
(198, 'woocommerce_allowed_countries', 'all', 'yes'),
(199, 'woocommerce_all_except_countries', '', 'yes'),
(200, 'woocommerce_specific_allowed_countries', '', 'yes'),
(201, 'woocommerce_ship_to_countries', '', 'yes'),
(202, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(203, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(204, 'woocommerce_calc_taxes', 'yes', 'yes'),
(205, 'woocommerce_demo_store', 'no', 'yes'),
(206, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(207, 'woocommerce_currency', 'USD', 'yes'),
(208, 'woocommerce_currency_pos', 'left', 'yes'),
(209, 'woocommerce_price_thousand_sep', ',', 'yes'),
(210, 'woocommerce_price_decimal_sep', '.', 'yes'),
(211, 'woocommerce_price_num_decimals', '2', 'yes'),
(212, 'woocommerce_weight_unit', 'oz', 'yes'),
(213, 'woocommerce_dimension_unit', 'in', 'yes'),
(214, 'woocommerce_enable_reviews', 'yes', 'yes'),
(215, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(216, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(217, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(218, 'woocommerce_review_rating_required', 'yes', 'no'),
(219, 'woocommerce_shop_page_id', '4', 'yes'),
(220, 'woocommerce_shop_page_display', '', 'yes'),
(221, 'woocommerce_category_archive_display', '', 'yes'),
(222, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(223, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(224, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(225, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(226, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(227, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(228, 'woocommerce_manage_stock', 'yes', 'yes'),
(229, 'woocommerce_hold_stock_minutes', '10080', 'no'),
(230, 'woocommerce_notify_low_stock', 'yes', 'no'),
(231, 'woocommerce_notify_no_stock', 'yes', 'no'),
(232, 'woocommerce_stock_email_recipient', 'nic@workshop.co', 'no'),
(233, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(234, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(235, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(236, 'woocommerce_stock_format', '', 'yes'),
(237, 'woocommerce_file_download_method', 'force', 'no'),
(238, 'woocommerce_downloads_require_login', 'no', 'no'),
(239, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(240, 'woocommerce_prices_include_tax', 'no', 'yes'),
(241, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(242, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(243, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(244, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(245, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(246, 'woocommerce_tax_display_cart', 'excl', 'no'),
(247, 'woocommerce_price_display_suffix', '', 'yes'),
(248, 'woocommerce_tax_total_display', 'itemized', 'no'),
(249, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(250, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(251, 'woocommerce_ship_to_destination', 'billing', 'no'),
(252, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(253, 'woocommerce_enable_coupons', 'yes', 'yes'),
(254, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(255, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(256, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(257, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(258, 'woocommerce_cart_page_id', '5', 'yes'),
(259, 'woocommerce_checkout_page_id', '6', 'yes'),
(260, 'woocommerce_terms_page_id', '', 'no'),
(261, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(262, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(263, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(264, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(265, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(266, 'woocommerce_myaccount_page_id', '7', 'yes'),
(267, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(268, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(269, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(270, 'woocommerce_registration_generate_username', 'yes', 'no'),
(271, 'woocommerce_registration_generate_password', 'no', 'no'),
(272, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(273, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(274, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(275, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(276, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(277, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(278, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(279, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(280, 'woocommerce_email_from_name', 'Newport Art Museum', 'no'),
(281, 'woocommerce_email_from_address', 'nic@workshop.co', 'no'),
(282, 'woocommerce_email_header_image', '', 'no'),
(283, 'woocommerce_email_footer_text', 'Newport Art Museum', 'no'),
(284, 'woocommerce_email_base_color', '#96588a', 'no'),
(285, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(286, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(287, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(288, 'woocommerce_api_enabled', 'yes', 'yes'),
(292, 'woocommerce_version', '3.2.6', 'yes'),
(293, 'woocommerce_db_version', '3.2.6', 'yes'),
(294, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(296, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(297, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(298, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(299, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(300, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(301, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(302, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(303, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(304, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(305, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(306, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(307, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(309, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(310, 'woocommerce_product_type', 'both', 'yes'),
(311, 'woocommerce_allow_tracking', 'yes', 'yes'),
(312, 'woocommerce_tracker_last_send', '1516040981', 'yes'),
(316, 'woocommerce_stripe_settings', 'a:23:{s:7:"enabled";s:3:"yes";s:14:"create_account";s:3:"yes";s:5:"email";s:16:"info@workshop.co";s:20:"apple_pay_domain_set";s:2:"no";s:5:"title";s:20:"Credit Card (Stripe)";s:11:"description";s:37:"Pay with your credit card via Stripe.";s:8:"testmode";s:3:"yes";s:20:"test_publishable_key";s:32:"pk_test_ubxqgUDWpmlmfExPeycfWlIz";s:15:"test_secret_key";s:32:"sk_test_yMuTFpaDWMnIt07zoqhQkkkZ";s:15:"publishable_key";s:0:"";s:10:"secret_key";s:0:"";s:20:"statement_descriptor";s:18:"Newport Art Museum";s:7:"capture";s:3:"yes";s:15:"stripe_checkout";s:2:"no";s:22:"stripe_checkout_locale";s:2:"en";s:14:"stripe_bitcoin";s:2:"no";s:21:"stripe_checkout_image";s:0:"";s:19:"request_payment_api";s:2:"no";s:9:"apple_pay";s:2:"no";s:16:"apple_pay_button";s:5:"black";s:21:"apple_pay_button_lang";s:2:"en";s:11:"saved_cards";s:3:"yes";s:7:"logging";s:3:"yes";}', 'yes'),
(317, 'woocommerce_braintree_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(318, 'woocommerce_paypal_settings', 'a:3:{s:7:"enabled";s:2:"no";s:5:"email";b:0;s:5:"debug";s:3:"yes";}', 'yes'),
(321, 'jetpack_activated', '1', 'yes'),
(324, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(328, 'jetpack_available_modules', 'a:1:{s:3:"5.7";a:43:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:11:"lazy-images";s:5:"5.6.0";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:3:"pwa";s:5:"5.6.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(329, 'jetpack_options', 'a:2:{s:7:"version";s:14:"5.7:1515275103";s:11:"old_version";s:14:"5.7:1515275103";}', 'yes'),
(330, 'jetpack_testimonial', '0', 'yes'),
(336, 'do_activate', '0', 'yes'),
(341, 'wc_stripe_version', '3.2.3', 'yes'),
(342, 'woocommerce_setup_domestic_live_rates_zone', '1', 'no'),
(344, 'woocommerce_setup_intl_live_rates_zone', '1', 'no'),
(345, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(348, 'wc_connect_options', 'a:1:{s:12:"tos_accepted";b:1;}', 'yes'),
(367, 'wc_stripe_show_request_api_notice', 'no', 'yes'),
(368, 'wc_stripe_show_apple_pay_notice', 'no', 'yes'),
(371, 'wp-all-import-pro_85b8495febade7a221f67b0bca7d59d9', 'O:8:"stdClass":15:{s:11:"new_version";s:5:"4.5.0";s:14:"stable_version";s:5:"4.5.0";s:4:"name";s:13:"WP All Import";s:4:"slug";s:17:"wp-all-import-pro";s:3:"url";s:67:"http://www.wpallimport.com/downloads/wp-all-import-pro/?changelog=1";s:12:"last_updated";s:19:"2017-11-16 18:37:00";s:8:"homepage";s:55:"http://www.wpallimport.com/downloads/wp-all-import-pro/";s:7:"package";s:0:"";s:13:"download_link";s:0:"";s:8:"sections";a:2:{s:11:"description";s:129:"<p>Learn more about WP All Import at <a href="https://www.wpallimport.com/" target="_blank">https://www.wpallimport.com/</a></p>\n";s:9:"changelog";s:16960:"<p>4.5.0</p>\n<ul>\n<li>improvement: Make the WooCo Short Description expandable</li>\n<li>improvement: show notice when function editor is not saved</li>\n<li>improvement: added timestamp to import log lines</li>\n<li>improvement: added support for bmp images</li>\n<li>improvement: added new action pmxi_before_post_import_{$addon}</li>\n<li>security fix: patch XSS exploit</li>\n<li>bug fix: import pages hierarchy</li>\n<li>bug fix: error in pclzip.lib.php with php 7.1</li>\n<li>bug fix: import taxonomies hierarchy</li>\n<li>bug fix: json to xml convertation</li>\n<li>bug fix: import password protected feeds with port defined</li>\n</ul>\n<p>4.4.9</p>\n<ul>\n<li>improvement: custom fields detection</li>\n<li>improvement: new action wp_all_import_post_skipped</li>\n<li>improvement: updated history page title</li>\n<li>improvement: optimize large imports deletion</li>\n<li>improvement: added import friendly name to confirm screen</li>\n<li>improvement: sql query optimization on manage imports screen</li>\n<li>improvement: added wp_all_import_shard_delay filter</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: compatibility with WPML</li>\n<li>bug fix: generation image filename</li>\n<li>bug fix: wp_all_import_specified_records filter</li>\n</ul>\n<p>4.4.8</p>\n<ul>\n<li>improvement: added hungarian translation</li>\n<li>bug fix: csv headers generation</li>\n<li>bug fix: import template from Import Settings works again</li>\n<li>bug fix: users no longer logged out when user is update via import</li>\n<li>bug fix: images with encoded quotes</li>\n</ul>\n<p>4.4.7</p>\n<ul>\n<li>bug fix: cron job completed early for imports with xpath</li>\n<li>bug fix: csv headers with non latin characters</li>\n</ul>\n<p>4.4.6</p>\n<ul>\n<li>bug fix: cron job un-triggered on timeout error</li>\n</ul>\n<p>4.4.5</p>\n<ul>\n<li>bug fix: import xls from dropbox</li>\n<li>bug fix: template preview</li>\n</ul>\n<p>4.4.4</p>\n<ul>\n<li>improvement: new filter \'wp_all_import_phpexcel_delimiter\'</li>\n<li>improvement: new filter \'wp_all_import_is_trim_parsed_data\'</li>\n<li>improvement: added new \'filter wp_all_import_skip_x_csv_rows\'</li>\n<li>improvement: added csv delimiter setting to import options screen</li>\n<li>bug fix: taxonomies dropdown list</li>\n<li>bug fix: cron job was never untriggered when calling to undefined function</li>\n<li>bug fix: taxonomies preview</li>\n<li>bug fix: import duplicate tags</li>\n<li>bug fix: importing taxonomy terms that already exist in a different taxonomies</li>\n</ul>\n<p>4.4.3</p>\n<ul>\n<li>bug fix: parsing images for newly added records</li>\n<li>bug fix: the event calendar conflict</li>\n</ul>\n<p>4.4.2</p>\n<ul>\n<li>improvement: added new filter wp_all_import_phpexcel_object to modify excel data before import</li>\n<li>bug fix: search for images ending with underscores in media</li>\n<li>bug fix: import hierarchical posts and pages</li>\n<li>bug fix: import custom post type page templates</li>\n<li>bug fix: matching taxonomies by name</li>\n<li>bug fix: custom fields validation</li>\n</ul>\n<p>4.4.1</p>\n<ul>\n<li>improvement: compatibility with PHP 7.x</li>\n<li>improvement: search for existing attachments option</li>\n<li>improvement: new filter for file path of functions.php file</li>\n<li>bug fix: images preview</li>\n<li>bug fix: improved matching for images similar to image.com.png</li>\n</ul>\n<p>4.4.0</p>\n<ul>\n<li>new feature: added import taxonomies feature</li>\n<li>bug fix: hierarchy taxonomies preview</li>\n<li>bug fix: empty logs folder generation</li>\n<li>bug fix: \'Keep images currently in Media Library\' option for add-ons</li>\n<li>bug fix: import bundles with gz files</li>\n<li>bug fix: custom functions for attachments</li>\n</ul>\n<p>4.3.2</p>\n<ul>\n<li>improvement: \'Force Stream Reader\' setting</li>\n<li>improvement: tar + gz compression support for remote feeds</li>\n<li>improvement: new filter \'wp_all_import_auto_create_csv_headers\'</li>\n<li>improvement: new filter \'wp_all_import_is_base64_images_allowed\'</li>\n<li>improvement: new filter \'wp_all_import_set_post_terms\' to leave a specific category alone when a post is being updated</li>\n<li>bug fix: cron import timeout when set missing outofstock option is enabled</li>\n<li>bug fix: nodes navigation for xpath like /news/item</li>\n<li>bug fix: frozen import template screen for cyrillic XML feeds</li>\n<li>bug fix: conflict between taxonomies & user import</li>\n<li>bug fix: creating users with the same email</li>\n<li>bug fix: enable keep line breaks option by default</li>\n<li>bug fix: composer namespace conflict</li>\n<li>bug fix: images preview when wp is in subdirectory</li>\n<li>bug fix: \'Instead of deletion, set Custom Field\' option for users import</li>\n</ul>\n<p>4.3.1</p>\n<ul>\n<li>fixed issue with libxml 2.9.3</li>\n<li>execute \'pmxi_article_data\' filter for all posts ( new & existing )</li>\n</ul>\n<p>4.3.0</p>\n<ul>\n<li>added de_CH translation</li>\n<li>added support for .svg images</li>\n<li>added possibility for import excerpts for pages</li>\n<li>added new filter \'wp_all_import_specified_records\'</li>\n<li>added new filter \'wp_all_import_is_post_to_delete\'</li>\n<li>fixed saving function editor</li>\n<li>fixed custom fields mapping rules with \'0\' value</li>\n<li>fixed termination of the import if the "Delete source XML file after importing" is checked</li>\n<li>disable XMLReader stream filter for HHVM</li>\n<li>improve search for existing images in media gallery</li>\n</ul>\n<p>4.2.9</p>\n<ul>\n<li>fixed error messages on step 4</li>\n<li>fixed renaming image files</li>\n<li>fixed delete missing records option</li>\n<li>fixed csv to xml convertation in case when there are some equal titles in csv file</li>\n<li>stop using $HTTP_RAW_POST_DATA for PHP 7.x compatibility</li>\n<li>added new action \'pmxi_missing_post\'</li>\n</ul>\n<p>4.2.8</p>\n<ul>\n<li>update required database tables</li>\n</ul>\n<p>4.2.7</p>\n<ul>\n<li>fixed detecting root nodes with colons in names</li>\n<li>fixed php notice "Undefined variable: existing_meta_keys"</li>\n<li>fixed rendering special chars in function editor</li>\n<li>fixed css for WordPress 4.4</li>\n<li>added feature to delete only posts not import</li>\n<li>added feature to download template/bundle from import settings</li>\n<li>added new option for importing images "Use images currently in Media Library"</li>\n<li>remove periods to hyphens convertation in image name</li>\n<li>auto detect dropbox URLs and change to dl=1</li>\n<li>changed comma delimiting behavior/UI in image meta</li>\n</ul>\n<p>4.2.6</p>\n<ul>\n<li>fixed preview prices</li>\n<li>fixed counting XML nodes</li>\n</ul>\n<p>4.2.5</p>\n<ul>\n<li>fixed \'Delete source XML file after importing\' option</li>\n<li>fixed ‘Instead of deletion, change post status to Draft’ option</li>\n<li>fixed reading XML files with NS in element names</li>\n<li>added ‘WooCommerce Order’ to post type list on step 1</li>\n</ul>\n<p>4.2.4</p>\n<ul>\n<li>fixed duplicate matching by custom field</li>\n<li>fixed error messages on step1 in case when server throws fatal error e.q. time limit exception</li>\n<li>fixed option "Delete posts that are no longer present in your file", now it works with empty CSV files which has only one header row</li>\n<li>fixed importing custom fields with the same name</li>\n<li>fixed custom functions in images preview</li>\n<li>added es_ES translation</li>\n<li>added de_DE translation</li>\n<li>added iterative ajax delete process ( deleting associated posts )</li>\n</ul>\n<p>4.2.3</p>\n<ul>\n<li>Fixed removing uploaded XML source file on re-run process</li>\n</ul>\n<p>4.2.2</p>\n<ul>\n<li>Fixed saving function editor</li>\n</ul>\n<p>4.2.1</p>\n<ul>\n<li>fixed duplicate matching by custom field ( cron )</li>\n<li>fixed converting image filenames to lowercase</li>\n<li>fixed import html to image description</li>\n<li>fixed import _wp_old_slug</li>\n<li>added Post ID to manual record matching</li>\n<li>added \'Comment status\' to \'Choose data to update\' section</li>\n<li>added \'cancel\' to cron API /wp-cron.php?import_key=Kt&amp;import_id=407&amp;action=cancel</li>\n<li>added function editor</li>\n</ul>\n<p>4.2.0</p>\n<ul>\n<li>fixed parsing CSV with empty lines</li>\n<li>fixed parsing multiple IF statements</li>\n<li>fixed preview in case when ‘Disable the visual editor when writing’ is enabled</li>\n<li>fixed conflict with WooCommerce - Store Exporter Deluxe</li>\n<li>added possibility to start synchronized cron requests &amp;sync=1</li>\n<li>added notifications for required addons</li>\n<li>added support for wp all export bundle</li>\n<li>added support for manual import bundle</li>\n<li>added feature \'click to download import file\'</li>\n<li>added validation for excerpt and images sections</li>\n<li>added auto-detect a broken Unique ID notification</li>\n<li>added import template notifications</li>\n<li>removed support for importing WooCommerce Orders</li>\n<li>changed absolute paths to relative in db</li>\n<li>updated cron response messages</li>\n<li>moved uploaded files to \'Use existing\' dropdown</li>\n</ul>\n<p>4.1.7</p>\n<ul>\n<li>added support for Excel files ( .xls, .xlsx )</li>\n<li>added new option \'Do not remove images from media gallery\' on import<br />\nsettings screen</li>\n<li>added new options to taxonomies import \'Try to match terms to<br />\nexisting child Product Categories\' &amp; \'Only assign Products to the<br />\nimported Product Category, not the entire hierarchy\'</li>\n<li>fixed excessive update requests</li>\n<li>added options to \'Delete associated posts</li>\n</ul>\n<p>4.1.6</p>\n<ul>\n<li>load ini_set only on plugins pages</li>\n<li>fixed saving import template</li>\n<li>added import post format via XPath</li>\n</ul>\n<p>4.1.5</p>\n<ul>\n<li>fixed import page template</li>\n<li>added a second argument to pmxi_saved_post action ( SimpleXML object ) of current record</li>\n</ul>\n<p>4.1.4</p>\n<ul>\n<li>fixed Apply mapping rules before splitting via separator symbol for manual hierarchy</li>\n<li>fixed path equal or less than</li>\n<li>fixed changing unique key when moving back from confirm screen</li>\n<li>fixed override page template</li>\n<li>fixed unlink images on deleting missing posts</li>\n<li>updated wp_all_import_is_post_to_update filter with second argument XML node as array</li>\n<li>updated compatibility with WP All Export</li>\n<li>added filter wp_all_import_feed_type</li>\n<li>added possibility to use php to calculate URL on first step [add_to_url("https://google.com/")]</li>\n</ul>\n<p>4.1.3</p>\n<ul>\n<li>fixed un triggering issue on cron jobs for empty files</li>\n<li>changed updater priority from 10 to 20</li>\n<li>added post parent option for all hierarchical CPT</li>\n</ul>\n<p>4.1.2</p>\n<ul>\n<li>Important security fixes - additional hardening, prevention of blind SQL injection and reflected XSS attacks</li>\n</ul>\n<p>4.1.1</p>\n<ul>\n<li>critical security fix - stopping non-logged in users from accessing adminInit https://www.wpallimport.com/2015/02/wp-import-4-1-1-mandatory-security-update/</li>\n<li>added new filter wp_all_import_is_post_to_update to skip needed posts add_filter(\'wp_all_import_is_post_to_update\', \'is_post_to_update\', 10, 1);</li>\n<li>added new option Search for existing attachments to prevent duplicates in media library</li>\n<li>fixed imports pagination</li>\n<li>fixed preview taxonomies</li>\n<li>fixed upload folder creation when \'upload_dir\' filter defined</li>\n<li>fixed db schema for wpmu when new site added</li>\n</ul>\n<p>4.1.0</p>\n<ul>\n<li>fixed cron execution when titles are not defined</li>\n<li>added an option to separate hierarchy groups via symbol</li>\n<li>added separator symbol for manually nested taxonomies</li>\n</ul>\n<p>4.0.9</p>\n<ul>\n<li>added license key setting for automatic update</li>\n<li>added option search images through attachments</li>\n<li>added option assign term to the bottom level term in the hierarchy</li>\n</ul>\n<p>4.0.8</p>\n<ul>\n<li>fixed taxonomies preview</li>\n<li>fixed import meta description for images</li>\n<li>added feature to assign posts to needed terms</li>\n<li>added new option for taxonomies Apply mapping rules before splitting via separator symbol</li>\n<li>added set with XPath option for comment status, ping status, page parent, page template</li>\n</ul>\n<p>4.0.7</p>\n<ul>\n<li>fixed feed detection for rss chanels</li>\n<li>fixed parsing json data</li>\n<li>fixed add only new images option</li>\n<li>fixed delete missing records option</li>\n<li>added ability to import custom fields with the same name</li>\n<li>added port setting</li>\n</ul>\n<p>4.0.6</p>\n<ul>\n<li>fixed encoding for taxonomies mapping</li>\n<li>optimization for delete missing records option</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed changes that related to _wp_page_template meta data</li>\n</ul>\n<p>4.0.5</p>\n<ul>\n<li>fixed template parsing when php function arguments contains an array()</li>\n<li>fixed error msg when feed is html page e.g. page 404</li>\n<li>fixed xpath building</li>\n<li>update hierarchy taxonomies options</li>\n</ul>\n<p>4.0.4</p>\n<ul>\n<li>changed main file name to wp-all-import-pro.php</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed bug with empty unique keys</li>\n</ul>\n<p>4.0.3</p>\n<ul>\n<li>fixed re-count record when a file has been changed at an import setting screen</li>\n<li>fixed database schema auto-update</li>\n<li>fixed uploading large files</li>\n<li>fixed auto-detecting root element</li>\n<li>fixed log storage in database</li>\n<li>fixed cron execution when "do not create new records" option is enabled</li>\n<li>fixed feed type detection</li>\n<li>fixed unlink attachment source when posts updated/deleted</li>\n<li>fixed specialchars in taxnomies/categories mapping</li>\n<li>updated taxonomies hierarchy settings</li>\n<li>added a limit 10 to the existing meta values</li>\n</ul>\n<p>4.0.2</p>\n<ul>\n<li>speed up the import of taxonomies/categories</li>\n<li>added taxonomies/categories mapping feature</li>\n<li>added custom fields auto-detection feature</li>\n<li>added custom fields mapping feature</li>\n<li>added images/taxonomies preview feature</li>\n<li>added unofficial support for more file formats - json &amp; sql</li>\n<li>added new setting (secure mode) to protect your files</li>\n<li>better import logs</li>\n<li>updated design</li>\n</ul>\n<p>3.4.2</p>\n<ul>\n<li>fixed navigation bug</li>\n<li>fixed search duplicates</li>\n<li>fixed duplicate categories</li>\n<li>fixed path builder for element attributes</li>\n<li>fixed cron processing for already uploaded files (XML)</li>\n<li>added taxonomies for pages</li>\n</ul>\n<p>3.4.1</p>\n<ul>\n<li>fixed pmxi_delete_post action: this action was executed after posts were deleted</li>\n<li>fixed import menu order &amp; post parent for pages</li>\n<li>fixed import log for continue import feature</li>\n<li>added is update author option</li>\n<li>fixed post formats</li>\n<li>fixed cron processing: WP_Error object was not initialized</li>\n<li>fixed cron processing for import where XPath filtering is defined</li>\n<li>fixed UTC dates on manage imports page</li>\n</ul>\n<p>3.4.0</p>\n<ul>\n<li>fixed: import empty content</li>\n<li>fixed: log files</li>\n<li>fixed: detect image extension</li>\n<li>fixed: terms hierarchy on cron job execution</li>\n</ul>\n<p>3.3.9</p>\n<ul>\n<li>added: feature to do not escape shortcodes</li>\n<li>fixed: pre-processing logic</li>\n<li>fixed: downloading images with unicode url</li>\n<li>fixed: clear non ASCII/invalid symbols in CSV files</li>\n<li>fixed: import option \'Instead of using original image file name, set file name(s)\'</li>\n</ul>\n<p>3.3.8</p>\n<ul>\n<li>fixed: admin notices</li>\n<li>fixed: creation duplicates draft post via cron</li>\n<li>fixed: images with encoded symbols</li>\n<li>fixed: upload file via URL</li>\n<li>fixed: php notices</li>\n<li>added: compatibility with WP 3.9</li>\n</ul>\n<p>3.3.7</p>\n<ul>\n<li>updated convertation CSV to XML with XMLWriter</li>\n<li>fixed import *.zip files</li>\n<li>fixed xpath helper on step 2</li>\n<li>fixed showing zeros in XML tree</li>\n<li>allow post content to be empty on step 3</li>\n<li>added autodetect session mode</li>\n<li>delete deprecated settings my csv contain html code and case sensitivity</li>\n<li>fixed deleting history files</li>\n<li>fixed autodetect image extensions</li>\n<li>fixed increasing SQL query length</li>\n<li>added error messages</li>\n<li>fixed "High Speed Small File Processing" option</li>\n</ul>\n<p>3.3.6</p>\n<ul>\n<li>fixed: multiple cron execution</li>\n<li>fixed: load options template</li>\n<li>fixed: session initialization</li>\n<li>fixed: import search</li>\n<li>fixed: attachment author on cron execution</li>\n<li>fixed: download images option</li>\n<li>added: errors messages to the log</li>\n<li>added: "not contains" filter to step 2</li>\n<li>added: compatibility with categories mapping addon</li>\n<li>updated: cpt navigation on step 4</li>\n</ul>\n<p>3.3.5</p>\n<ul>\n<li>fixed bug with cron processing</li>\n<li>fixed bug with saving wrong image name</li>\n<li>added serialized custom fields feature</li>\n<li>added compatibility with user import add-on</li>\n<li>added compatibility with 3rd party developers</li>\n<li>added new setting \'Cron processing time limit\'</li>\n</ul>\n";}s:7:"banners";a:2:{s:4:"high";s:55:"http://ps.w.org/wp-all-import/assets/banner-772x250.png";s:3:"low";s:0:"";}s:8:"requires";s:5:"3.6.1";s:6:"tested";s:5:"4.9.1";s:6:"author";s:6:"Soflyy";s:12:"contributors";O:8:"stdClass":2:{s:6:"soflyy";s:38:"https://profiles.wordpress.org/soflyy/";s:11:"wpallimport";s:43:"https://profiles.wordpress.org/wpallimport/";}}', 'no'),
(372, 'wp-all-import-pro_timeout_85b8495febade7a221f67b0bca7d59d9', '1515280669', 'yes'),
(381, 'object_sync_for_salesforce_db_version', '1.2.1', 'yes'),
(382, 'object_sync_for_salesforce_activate_time', '1515277094', 'yes'),
(399, 'woocommerce_tracker_ua', 'a:1:{i:0;s:121:"mozilla/5.0 (macintosh; intel mac os x 10_11_6) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.132 safari/537.36";}', 'yes'),
(418, 'woocommerce_product_bundles_version', '5.7.1', 'yes'),
(419, 'woocommerce_product_bundles_db_version', '5.7.1', 'yes'),
(427, 'woocommerce_subscriptions_add_to_cart_button_text', 'Sign Up Now', 'yes'),
(428, 'woocommerce_subscriptions_order_button_text', 'Sign Up Now', 'yes'),
(429, 'woocommerce_subscriptions_subscriber_role', 'subscriber', 'yes'),
(430, 'woocommerce_subscriptions_cancelled_role', 'customer', 'yes'),
(431, 'woocommerce_subscriptions_accept_manual_renewals', 'no', 'yes'),
(432, 'woocommerce_subscriptions_turn_off_automatic_payments', 'no', 'yes'),
(433, 'woocommerce_subscriptions_allow_switching', 'no', 'yes'),
(434, 'woocommerce_subscriptions_apportion_recurring_price', 'no', 'yes'),
(435, 'woocommerce_subscriptions_apportion_sign_up_fee', 'no', 'yes'),
(436, 'woocommerce_subscriptions_apportion_length', 'no', 'yes'),
(437, 'woocommerce_subscriptions_switch_button_text', 'Upgrade or Downgrade', 'yes'),
(438, 'woocommerce_subscriptions_sync_payments', 'no', 'yes'),
(439, 'woocommerce_subscriptions_prorate_synced_payments', 'no', 'yes'),
(440, 'woocommerce_subscriptions_max_customer_suspensions', '0', 'yes'),
(441, 'woocommerce_subscriptions_multiple_purchase', 'yes', 'yes'),
(442, 'woocommerce_subscriptions_drip_downloadable_content_on_renewal', 'no', 'yes'),
(443, 'woocommerce_subscriptions_enable_retry', 'no', 'yes'),
(444, 'woocommerce_subscriptions_paypal_debugging_default_set', 'true', 'yes'),
(445, 'woocommerce_subscriptions_is_active', '1', 'yes'),
(448, 'wcs_upgrade_initial_total_subscription_count', '0', 'yes'),
(449, 'woocommerce_subscriptions_previous_version', '0', 'yes'),
(450, 'wc_subscriptions_siteurl', 'http://loc_[wc_subscriptions_siteurl]_alhost:8080', 'yes'),
(451, 'woocommerce_subscriptions_active_version', '2.2.16', 'yes'),
(568, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1515360800;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(569, 'current_theme', 'Newport Art Museum Website', 'yes'),
(570, 'theme_mods_custom', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(571, 'theme_switched', '', 'yes'),
(688, 'wccpt_need_flush_rewrite_rules', '', 'yes'),
(689, 'woocommerce_shop-products_page_id', '', 'yes'),
(690, 'shop-products_woorei_woocommerce_template_loader', 'no', 'yes'),
(691, 'shop-products_woorei_woocommerce_active', 'yes', 'yes'),
(748, 'wc_pb_meta_box_notices', 'a:0:{}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(749, 'wc_pb_maintenance_notices', 'a:0:{}', 'yes'),
(760, 'woocommerce_membership-tiers_page_id', '', 'yes'),
(761, 'membership-tiers_woorei_woocommerce_template_loader', 'no', 'yes'),
(762, 'membership-tiers_woorei_woocommerce_active', 'yes', 'yes'),
(763, 'woocommerce_events_page_id', '', 'yes'),
(764, 'events_woorei_woocommerce_template_loader', 'no', 'yes'),
(765, 'events_woorei_woocommerce_active', 'yes', 'yes'),
(766, 'woocommerce_donation-tiers_page_id', '', 'yes'),
(767, 'donation-tiers_woorei_woocommerce_template_loader', 'no', 'yes'),
(768, 'donation-tiers_woorei_woocommerce_active', 'yes', 'yes'),
(769, 'woocommerce_classes_page_id', '', 'yes'),
(770, 'classes_woorei_woocommerce_template_loader', 'no', 'yes'),
(771, 'classes_woorei_woocommerce_active', 'yes', 'yes'),
(793, 'jetpack_sync_settings_disable', '0', 'yes'),
(796, 'jpsq_sync-1515364356.254746-154809-1', 'a:6:{i:0;s:18:"deactivated_plugin";i:1;a:2:{i:0;s:19:"jetpack/jetpack.php";i:1;b:0;}i:2;i:1;i:3;d:1515364356.25459;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(797, 'jpsq_sync-1515364356.257727-154809-2', 'a:6:{i:0;s:14:"updated_option";i:1;a:3:{i:0;s:14:"active_plugins";i:1;a:16:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:51:"acf-gravityforms-add-on/acf-gravityforms-add-on.php";i:2;s:41:"acf-to-rest-api/class-acf-to-rest-api.php";i:3;s:34:"advanced-custom-fields-pro/acf.php";i:4;s:49:"ajax-thumbnail-rebuild/ajax-thumbnail-rebuild.php";i:5;s:35:"gravityformsmailchimp/mailchimp.php";i:6;s:19:"jetpack/jetpack.php";i:7;s:57:"object-sync-for-salesforce/object-sync-for-salesforce.php";i:8;s:38:"post-duplicator/m4c-postduplicator.php";i:9;s:37:"post-types-order/post-types-order.php";i:10;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:13;s:55:"woocommerce-subscriptions/woocommerce-subscriptions.php";i:14;s:49:"woocommerce-woorei-cpt/woocommerce-woorei-cpt.php";i:15;s:27:"woocommerce/woocommerce.php";i:16;s:38:"wp-async-task-master/wp-async-task.php";i:17;s:31:"wp-migrate-db/wp-migrate-db.php";}i:2;a:15:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:51:"acf-gravityforms-add-on/acf-gravityforms-add-on.php";i:2;s:41:"acf-to-rest-api/class-acf-to-rest-api.php";i:3;s:34:"advanced-custom-fields-pro/acf.php";i:4;s:49:"ajax-thumbnail-rebuild/ajax-thumbnail-rebuild.php";i:5;s:35:"gravityformsmailchimp/mailchimp.php";i:7;s:57:"object-sync-for-salesforce/object-sync-for-salesforce.php";i:8;s:38:"post-duplicator/m4c-postduplicator.php";i:9;s:37:"post-types-order/post-types-order.php";i:10;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:13;s:55:"woocommerce-subscriptions/woocommerce-subscriptions.php";i:14;s:49:"woocommerce-woorei-cpt/woocommerce-woorei-cpt.php";i:15;s:27:"woocommerce/woocommerce.php";i:16;s:38:"wp-async-task-master/wp-async-task.php";i:17;s:31:"wp-migrate-db/wp-migrate-db.php";}}i:2;i:1;i:3;d:1515364356.2575719;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(800, 'jpsq_sync-1515364356.265225-154809-3', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:16:"EMPTY_TRASH_DAYS";i:1;i:30;}i:2;i:1;i:3;d:1515364356.265043;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(801, 'jpsq_sync-1515364356.266256-154809-4', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:17:"WP_POST_REVISIONS";i:1;b:1;}i:2;i:1;i:3;d:1515364356.26615;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(802, 'jpsq_sync-1515364356.267190-154809-5', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:7:"ABSPATH";i:1;s:33:"/www/newportartmuseum_353/public/";}i:2;i:1;i:3;d:1515364356.2670989;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(803, 'jpsq_sync-1515364356.268120-154809-6', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:14:"WP_CONTENT_DIR";i:1;s:43:"/www/newportartmuseum_353/public/wp-content";}i:2;i:1;i:3;d:1515364356.2680171;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(804, 'jpsq_sync-1515364356.269471-154809-7', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:16:"JETPACK__VERSION";i:1;s:3:"5.7";}i:2;i:1;i:3;d:1515364356.2693789;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(805, 'jpsq_sync-1515364356.270338-154809-8', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:20:"WP_CRON_LOCK_TIMEOUT";i:1;i:60;}i:2;i:1;i:3;d:1515364356.270247;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(806, 'jpsq_sync-1515364356.271225-154809-9', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:11:"PHP_VERSION";i:1;s:6:"5.6.31";}i:2;i:1;i:3;d:1515364356.2711351;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(807, 'jpsq_sync-1515364356.272081-154809-10', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:15:"WP_MEMORY_LIMIT";i:1;s:3:"40M";}i:2;i:1;i:3;d:1515364356.2719851;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(808, 'jpsq_sync-1515364356.273100-154809-11', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:19:"WP_MAX_MEMORY_LIMIT";i:1;s:4:"256M";}i:2;i:1;i:3;d:1515364356.2729931;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(809, 'jpsq_sync-1515364356.274065-154809-12', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:14:"WC_PLUGIN_FILE";i:1;s:79:"/www/newportartmuseum_353/public/wp-content/plugins/woocommerce/woocommerce.php";}i:2;i:1;i:3;d:1515364356.273963;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(810, 'jpsq_sync-1515364356.275025-154809-13', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:10:"WC_ABSPATH";i:1;s:64:"/www/newportartmuseum_353/public/wp-content/plugins/woocommerce/";}i:2;i:1;i:3;d:1515364356.27493;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(811, 'jpsq_sync-1515364356.275863-154809-14', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:18:"WC_PLUGIN_BASENAME";i:1;s:27:"woocommerce/woocommerce.php";}i:2;i:1;i:3;d:1515364356.275773;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(812, 'jpsq_sync-1515364356.276903-154809-15', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:10:"WC_VERSION";i:1;s:5:"3.2.6";}i:2;i:1;i:3;d:1515364356.276803;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(813, 'jpsq_sync-1515364356.277768-154809-16', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:19:"WOOCOMMERCE_VERSION";i:1;s:5:"3.2.6";}i:2;i:1;i:3;d:1515364356.2776761;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(814, 'jpsq_sync-1515364356.279380-154809-17', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:21:"WC_ROUNDING_PRECISION";i:1;i:4;}i:2;i:1;i:3;d:1515364356.2792671;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(815, 'jpsq_sync-1515364356.280298-154809-18', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:25:"WC_DISCOUNT_ROUNDING_MODE";i:1;i:2;}i:2;i:1;i:3;d:1515364356.2801931;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(816, 'jpsq_sync-1515364356.281169-154809-19', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:20:"WC_TAX_ROUNDING_MODE";i:1;i:1;}i:2;i:1;i:3;d:1515364356.281076;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(817, 'jpsq_sync-1515364356.282031-154809-20', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:12:"WC_DELIMITER";i:1;s:1:"|";}i:2;i:1;i:3;d:1515364356.281939;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(818, 'jpsq_sync-1515364356.282870-154809-21', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:10:"WC_LOG_DIR";i:1;s:60:"/www/newportartmuseum_353/public/wp-content/uploads/wc-logs/";}i:2;i:1;i:3;d:1515364356.2827799;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(819, 'jpsq_sync-1515364356.283699-154809-22', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:22:"WC_SESSION_CACHE_GROUP";i:1;s:13:"wc_session_id";}i:2;i:1;i:3;d:1515364356.283608;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(820, 'jpsq_sync-1515364356.284521-154809-23', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:22:"WC_TEMPLATE_DEBUG_MODE";i:1;b:0;}i:2;i:1;i:3;d:1515364356.284425;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(821, 'jetpack_constants_sync_checksum', 'a:31:{s:16:"EMPTY_TRASH_DAYS";i:2473281379;s:17:"WP_POST_REVISIONS";i:4261170317;s:26:"AUTOMATIC_UPDATER_DISABLED";i:634125391;s:7:"ABSPATH";i:349357834;s:14:"WP_CONTENT_DIR";i:3188548084;s:9:"FS_METHOD";i:634125391;s:18:"DISALLOW_FILE_EDIT";i:634125391;s:18:"DISALLOW_FILE_MODS";i:634125391;s:19:"WP_AUTO_UPDATE_CORE";i:634125391;s:22:"WP_HTTP_BLOCK_EXTERNAL";i:634125391;s:19:"WP_ACCESSIBLE_HOSTS";i:634125391;s:16:"JETPACK__VERSION";i:3445754320;s:12:"IS_PRESSABLE";i:634125391;s:15:"DISABLE_WP_CRON";i:634125391;s:17:"ALTERNATE_WP_CRON";i:634125391;s:20:"WP_CRON_LOCK_TIMEOUT";i:3994858278;s:11:"PHP_VERSION";i:1108401221;s:15:"WP_MEMORY_LIMIT";i:3065409971;s:19:"WP_MAX_MEMORY_LIMIT";i:1474498405;s:14:"WC_PLUGIN_FILE";i:2286215777;s:10:"WC_ABSPATH";i:1661258440;s:18:"WC_PLUGIN_BASENAME";i:1149093810;s:10:"WC_VERSION";i:232560892;s:19:"WOOCOMMERCE_VERSION";i:232560892;s:21:"WC_ROUNDING_PRECISION";i:4088798008;s:25:"WC_DISCOUNT_ROUNDING_MODE";i:450215437;s:20:"WC_TAX_ROUNDING_MODE";i:2212294583;s:12:"WC_DELIMITER";i:2455911554;s:10:"WC_LOG_DIR";i:955136587;s:22:"WC_SESSION_CACHE_GROUP";i:4278978988;s:22:"WC_TEMPLATE_DEBUG_MODE";i:734881840;}', 'yes'),
(824, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:4:"http";}', 'yes'),
(825, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:"http";i:1;s:4:"http";}', 'yes'),
(826, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:"http";i:1;s:4:"http";}', 'yes'),
(829, 'jpsq_sync-1515364356.301263-154809-24', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:18:"wp_max_upload_size";i:1;i:2097152;}i:2;i:1;i:3;d:1515364356.3011611;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(830, 'jpsq_sync-1515364356.303017-154809-25', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:15:"is_main_network";i:1;b:0;}i:2;i:1;i:3;d:1515364356.3029051;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(831, 'jpsq_sync-1515364356.303907-154809-26', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:13:"is_multi_site";i:1;b:0;}i:2;i:1;i:3;d:1515364356.3038149;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(832, 'jpsq_sync-1515364356.305131-154809-27', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:17:"main_network_site";i:1;s:42:"http://staging-newportartmuseum.kinsta.com";}i:2;i:1;i:3;d:1515364356.3050301;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(833, 'jpsq_sync-1515364356.306028-154809-28', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:8:"site_url";i:1;s:42:"http://staging-newportartmuseum.kinsta.com";}i:2;i:1;i:3;d:1515364356.305923;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(834, 'jpsq_sync-1515364356.307126-154809-29', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:8:"home_url";i:1;s:42:"http://staging-newportartmuseum.kinsta.com";}i:2;i:1;i:3;d:1515364356.3069961;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(835, 'jpsq_sync-1515364356.308147-154809-30', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:16:"single_user_site";i:1;b:1;}i:2;i:1;i:3;d:1515364356.308038;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(836, 'jpsq_sync-1515364356.309805-154809-31', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:7:"updates";i:1;a:5:{s:7:"plugins";i:0;s:6:"themes";i:0;s:9:"wordpress";i:0;s:12:"translations";i:0;s:5:"total";i:0;}}i:2;i:1;i:3;d:1515364356.309653;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(837, 'jpsq_sync-1515364356.310963-154809-32', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:28:"has_file_system_write_access";i:1;b:1;}i:2;i:1;i:3;d:1515364356.3108349;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(838, 'jpsq_sync-1515364356.312094-154809-33', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:21:"is_version_controlled";i:1;b:0;}i:2;i:1;i:3;d:1515364356.3119531;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(839, 'jpsq_sync-1515364356.313537-154809-34', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"taxonomies";i:1;a:13:{s:8:"category";O:8:"stdClass":23:{s:4:"name";s:8:"category";s:5:"label";s:10:"Categories";s:6:"labels";O:8:"stdClass":23:{s:4:"name";s:10:"Categories";s:13:"singular_name";s:8:"Category";s:12:"search_items";s:17:"Search Categories";s:13:"popular_items";N;s:9:"all_items";s:14:"All Categories";s:11:"parent_item";s:15:"Parent Category";s:17:"parent_item_colon";s:16:"Parent Category:";s:9:"edit_item";s:13:"Edit Category";s:9:"view_item";s:13:"View Category";s:11:"update_item";s:15:"Update Category";s:12:"add_new_item";s:16:"Add New Category";s:13:"new_item_name";s:17:"New Category Name";s:26:"separate_items_with_commas";N;s:19:"add_or_remove_items";N;s:21:"choose_from_most_used";N;s:9:"not_found";s:20:"No categories found.";s:8:"no_terms";s:13:"No categories";s:21:"items_list_navigation";s:26:"Categories list navigation";s:10:"items_list";s:15:"Categories list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:25:"&larr; Back to Categories";s:9:"menu_name";s:10:"Categories";s:14:"name_admin_bar";s:8:"category";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:1;s:11:"meta_box_cb";s:24:"post_categories_meta_box";s:11:"object_type";a:1:{i:0;s:4:"post";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:15:"edit_categories";s:12:"delete_terms";s:17:"delete_categories";s:12:"assign_terms";s:17:"assign_categories";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:1;s:12:"hierarchical";b:1;s:7:"ep_mask";i:512;s:4:"slug";s:8:"category";}s:9:"query_var";s:13:"category_name";s:21:"update_count_callback";N;s:12:"show_in_rest";b:1;s:9:"rest_base";s:10:"categories";s:21:"rest_controller_class";s:24:"WP_REST_Terms_Controller";s:8:"_builtin";b:1;}s:8:"post_tag";O:8:"stdClass":23:{s:4:"name";s:8:"post_tag";s:5:"label";s:4:"Tags";s:6:"labels";O:8:"stdClass":23:{s:4:"name";s:4:"Tags";s:13:"singular_name";s:3:"Tag";s:12:"search_items";s:11:"Search Tags";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:8:"All Tags";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit Tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update Tag";s:12:"add_new_item";s:11:"Add New Tag";s:13:"new_item_name";s:12:"New Tag Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:4:"Tags";s:14:"name_admin_bar";s:8:"post_tag";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:1;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:4:"post";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:16:"manage_post_tags";s:10:"edit_terms";s:14:"edit_post_tags";s:12:"delete_terms";s:16:"delete_post_tags";s:12:"assign_terms";s:16:"assign_post_tags";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:1;s:12:"hierarchical";b:0;s:7:"ep_mask";i:1024;s:4:"slug";s:3:"tag";}s:9:"query_var";s:3:"tag";s:21:"update_count_callback";N;s:12:"show_in_rest";b:1;s:9:"rest_base";s:4:"tags";s:21:"rest_controller_class";s:24:"WP_REST_Terms_Controller";s:8:"_builtin";b:1;}s:8:"nav_menu";O:8:"stdClass":23:{s:4:"name";s:8:"nav_menu";s:5:"label";s:16:"Navigation Menus";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:16:"Navigation Menus";s:13:"singular_name";s:15:"Navigation Menu";s:12:"search_items";s:11:"Search Tags";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:16:"Navigation Menus";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit Tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update Tag";s:12:"add_new_item";s:11:"Add New Tag";s:13:"new_item_name";s:12:"New Tag Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:16:"Navigation Menus";s:14:"name_admin_bar";s:15:"Navigation Menu";s:8:"archives";s:16:"Navigation Menus";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:13:"nav_menu_item";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";b:0;s:9:"query_var";b:0;s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:1;}s:13:"link_category";O:8:"stdClass":23:{s:4:"name";s:13:"link_category";s:5:"label";s:15:"Link Categories";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:15:"Link Categories";s:13:"singular_name";s:13:"Link Category";s:12:"search_items";s:22:"Search Link Categories";s:13:"popular_items";N;s:9:"all_items";s:19:"All Link Categories";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:18:"Edit Link Category";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:20:"Update Link Category";s:12:"add_new_item";s:21:"Add New Link Category";s:13:"new_item_name";s:22:"New Link Category Name";s:26:"separate_items_with_commas";N;s:19:"add_or_remove_items";N;s:21:"choose_from_most_used";N;s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:30:"&larr; Back to Link Categories";s:9:"menu_name";s:15:"Link Categories";s:14:"name_admin_bar";s:13:"Link Category";s:8:"archives";s:19:"All Link Categories";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:4:"link";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:12:"manage_links";s:10:"edit_terms";s:12:"manage_links";s:12:"delete_terms";s:12:"manage_links";s:12:"assign_terms";s:12:"manage_links";}s:7:"rewrite";b:0;s:9:"query_var";b:0;s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:1;}s:11:"post_format";O:8:"stdClass":23:{s:4:"name";s:11:"post_format";s:5:"label";s:6:"Format";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:6:"Format";s:13:"singular_name";s:6:"Format";s:12:"search_items";s:11:"Search Tags";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:6:"Format";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit Tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update Tag";s:12:"add_new_item";s:11:"Add New Tag";s:13:"new_item_name";s:12:"New Tag Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:6:"Format";s:14:"name_admin_bar";s:6:"Format";s:8:"archives";s:6:"Format";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:4:"post";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:1;s:12:"hierarchical";b:0;s:7:"ep_mask";i:0;s:4:"slug";s:4:"type";}s:9:"query_var";s:11:"post_format";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:1;}s:12:"action-group";O:8:"stdClass":23:{s:4:"name";s:12:"action-group";s:5:"label";s:12:"Action Group";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:12:"Action Group";s:13:"singular_name";s:12:"Action Group";s:12:"search_items";s:11:"Search Tags";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:12:"Action Group";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit Tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update Tag";s:12:"add_new_item";s:11:"Add New Tag";s:13:"new_item_name";s:12:"New Tag Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:12:"Action Group";s:14:"name_admin_bar";s:12:"Action Group";s:8:"archives";s:12:"Action Group";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:1;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:16:"scheduled-action";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";b:0;s:9:"query_var";b:0;s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;}s:12:"product_type";O:8:"stdClass":23:{s:4:"name";s:12:"product_type";s:5:"label";s:4:"Tags";s:6:"labels";O:8:"stdClass":23:{s:4:"name";s:4:"Tags";s:13:"singular_name";s:3:"Tag";s:12:"search_items";s:11:"Search Tags";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:8:"All Tags";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit Tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update Tag";s:12:"add_new_item";s:11:"Add New Tag";s:13:"new_item_name";s:12:"New Tag Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:4:"Tags";s:14:"name_admin_bar";s:12:"product_type";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:7:"product";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";b:0;s:9:"query_var";s:12:"product_type";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;}s:18:"product_visibility";O:8:"stdClass":23:{s:4:"name";s:18:"product_visibility";s:5:"label";s:4:"Tags";s:6:"labels";O:8:"stdClass":23:{s:4:"name";s:4:"Tags";s:13:"singular_name";s:3:"Tag";s:12:"search_items";s:11:"Search Tags";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:8:"All Tags";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit Tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update Tag";s:12:"add_new_item";s:11:"Add New Tag";s:13:"new_item_name";s:12:"New Tag Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:4:"Tags";s:14:"name_admin_bar";s:18:"product_visibility";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:2:{i:0;s:7:"product";i:1;s:17:"product_variation";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";b:0;s:9:"query_var";s:18:"product_visibility";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;}s:11:"product_cat";O:8:"stdClass":23:{s:4:"name";s:11:"product_cat";s:5:"label";s:18:"Product categories";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:18:"Product categories";s:13:"singular_name";s:8:"Category";s:12:"search_items";s:17:"Search categories";s:13:"popular_items";N;s:9:"all_items";s:14:"All categories";s:11:"parent_item";s:15:"Parent category";s:17:"parent_item_colon";s:16:"Parent category:";s:9:"edit_item";s:13:"Edit category";s:9:"view_item";s:13:"View Category";s:11:"update_item";s:15:"Update category";s:12:"add_new_item";s:16:"Add new category";s:13:"new_item_name";s:17:"New category name";s:26:"separate_items_with_commas";N;s:19:"add_or_remove_items";N;s:21:"choose_from_most_used";N;s:9:"not_found";s:19:"No categories found";s:8:"no_terms";s:13:"No categories";s:21:"items_list_navigation";s:26:"Categories list navigation";s:10:"items_list";s:15:"Categories list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:25:"&larr; Back to Categories";s:9:"menu_name";s:10:"Categories";s:14:"name_admin_bar";s:8:"Category";s:8:"archives";s:14:"All categories";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:24:"post_categories_meta_box";s:11:"object_type";a:1:{i:0;s:7:"product";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:20:"manage_product_terms";s:10:"edit_terms";s:18:"edit_product_terms";s:12:"delete_terms";s:20:"delete_product_terms";s:12:"assign_terms";s:20:"assign_product_terms";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:0;s:12:"hierarchical";b:1;s:7:"ep_mask";i:0;s:4:"slug";s:16:"product-category";}s:9:"query_var";s:11:"product_cat";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;}s:11:"product_tag";O:8:"stdClass":23:{s:4:"name";s:11:"product_tag";s:5:"label";s:12:"Product tags";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:12:"Product tags";s:13:"singular_name";s:3:"Tag";s:12:"search_items";s:11:"Search tags";s:13:"popular_items";s:12:"Popular tags";s:9:"all_items";s:8:"All tags";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update tag";s:12:"add_new_item";s:11:"Add new tag";s:13:"new_item_name";s:12:"New tag name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:13:"No tags found";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:4:"Tags";s:14:"name_admin_bar";s:3:"Tag";s:8:"archives";s:8:"All tags";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:7:"product";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:20:"manage_product_terms";s:10:"edit_terms";s:18:"edit_product_terms";s:12:"delete_terms";s:20:"delete_product_terms";s:12:"assign_terms";s:20:"assign_product_terms";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:0;s:12:"hierarchical";b:0;s:7:"ep_mask";i:0;s:4:"slug";s:11:"product-tag";}s:9:"query_var";s:11:"product_tag";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;}s:22:"product_shipping_class";O:8:"stdClass":23:{s:4:"name";s:22:"product_shipping_class";s:5:"label";s:24:"Product shipping classes";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:24:"Product shipping classes";s:13:"singular_name";s:14:"Shipping class";s:12:"search_items";s:23:"Search shipping classes";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:20:"All shipping classes";s:11:"parent_item";s:21:"Parent shipping class";s:17:"parent_item_colon";s:22:"Parent shipping class:";s:9:"edit_item";s:19:"Edit shipping class";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:21:"Update shipping class";s:12:"add_new_item";s:22:"Add new shipping class";s:13:"new_item_name";s:23:"New shipping class Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:16:"Shipping classes";s:14:"name_admin_bar";s:14:"Shipping class";s:8:"archives";s:20:"All shipping classes";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:2:{i:0;s:7:"product";i:1;s:17:"product_variation";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:20:"manage_product_terms";s:10:"edit_terms";s:18:"edit_product_terms";s:12:"delete_terms";s:20:"delete_product_terms";s:12:"assign_terms";s:20:"assign_product_terms";}s:7:"rewrite";b:0;s:9:"query_var";s:22:"product_shipping_class";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;}s:11:"wp_log_type";O:8:"stdClass":23:{s:4:"name";s:11:"wp_log_type";s:5:"label";s:4:"Tags";s:6:"labels";O:8:"stdClass":23:{s:4:"name";s:4:"Tags";s:13:"singular_name";s:3:"Tag";s:12:"search_items";s:11:"Search Tags";s:13:"popular_items";s:12:"Popular Tags";s:9:"all_items";s:8:"All Tags";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:8:"Edit Tag";s:9:"view_item";s:8:"View Tag";s:11:"update_item";s:10:"Update Tag";s:12:"add_new_item";s:11:"Add New Tag";s:13:"new_item_name";s:12:"New Tag Name";s:26:"separate_items_with_commas";s:25:"Separate tags with commas";s:19:"add_or_remove_items";s:18:"Add or remove tags";s:21:"choose_from_most_used";s:30:"Choose from the most used tags";s:9:"not_found";s:14:"No tags found.";s:8:"no_terms";s:7:"No tags";s:21:"items_list_navigation";s:20:"Tags list navigation";s:10:"items_list";s:9:"Tags list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:19:"&larr; Back to Tags";s:9:"menu_name";s:4:"Tags";s:14:"name_admin_bar";s:11:"wp_log_type";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:6:"wp_log";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";O:8:"stdClass":5:{s:10:"with_front";b:1;s:12:"hierarchical";b:0;s:7:"ep_mask";i:0;s:1:"0";s:0:"";s:4:"slug";s:11:"wp_log_type";}s:9:"query_var";s:11:"wp_log_type";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;}s:5:"group";O:8:"stdClass":25:{s:4:"name";s:5:"group";s:5:"label";s:6:"Groups";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:6:"Groups";s:13:"singular_name";s:5:"Group";s:12:"search_items";s:13:"Search Groups";s:13:"popular_items";s:22:"Frequently used Groups";s:9:"all_items";s:10:"All Groups";s:11:"parent_item";s:12:"Parent Group";s:17:"parent_item_colon";s:13:"Parent Group:";s:9:"edit_item";s:10:"Edit Group";s:9:"view_item";s:10:"View Group";s:11:"update_item";s:12:"Update Group";s:12:"add_new_item";s:13:"Add New Group";s:13:"new_item_name";s:14:"New Group Name";s:26:"separate_items_with_commas";s:27:"Separate Groups with commas";s:19:"add_or_remove_items";s:20:"Add or Remove Groups";s:21:"choose_from_most_used";s:43:"Choose from the most frequently used Groups";s:9:"not_found";s:16:"No Groups found.";s:8:"no_terms";s:13:"No categories";s:21:"items_list_navigation";s:26:"Categories list navigation";s:10:"items_list";s:15:"Categories list";s:9:"most_used";s:9:"Most Used";s:13:"back_to_items";s:25:"&larr; Back to Categories";s:9:"menu_name";s:6:"Groups";s:14:"name_admin_bar";s:5:"Group";s:8:"archives";s:10:"All Groups";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:1;s:11:"meta_box_cb";s:24:"post_categories_meta_box";s:11:"object_type";a:6:{i:0;s:4:"user";i:1;s:13:"shop-products";i:2;s:16:"membership-tiers";i:3;s:14:"donation-tiers";i:4;s:6:"events";i:5;s:7:"classes";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";O:8:"stdClass":5:{s:10:"with_front";b:1;s:12:"hierarchical";b:0;s:7:"ep_mask";i:0;s:1:"0";s:0:"";s:4:"slug";s:5:"group";}s:9:"query_var";s:5:"group";s:21:"update_count_callback";N;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:0;s:14:"show_tag_cloud";b:0;s:4:"sort";b:1;}}}i:2;i:1;i:3;d:1515364356.3134041;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(840, 'jpsq_sync-1515364356.316782-154809-35', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"post_types";i:1;a:26:{s:4:"post";O:8:"stdClass":26:{s:4:"name";s:4:"post";s:5:"label";s:5:"Posts";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:5:"Posts";s:13:"singular_name";s:4:"Post";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:9:"All Posts";s:8:"archives";s:13:"Post Archives";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:5:"Posts";s:14:"name_admin_bar";s:4:"Post";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:5;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";s:5:"posts";s:8:"_builtin";b:1;s:10:"_edit_link";s:16:"post.php?post=%d";}s:4:"page";O:8:"stdClass":26:{s:4:"name";s:4:"page";s:5:"label";s:5:"Pages";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:5:"Pages";s:13:"singular_name";s:4:"Page";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Page";s:9:"edit_item";s:9:"Edit Page";s:8:"new_item";s:8:"New Page";s:9:"view_item";s:9:"View Page";s:10:"view_items";s:10:"View Pages";s:12:"search_items";s:12:"Search Pages";s:9:"not_found";s:15:"No pages found.";s:18:"not_found_in_trash";s:24:"No pages found in Trash.";s:17:"parent_item_colon";s:12:"Parent Page:";s:9:"all_items";s:9:"All Pages";s:8:"archives";s:13:"Page Archives";s:10:"attributes";s:15:"Page Attributes";s:16:"insert_into_item";s:16:"Insert into page";s:21:"uploaded_to_this_item";s:21:"Uploaded to this page";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter pages list";s:21:"items_list_navigation";s:21:"Pages list navigation";s:10:"items_list";s:10:"Pages list";s:9:"menu_name";s:5:"Pages";s:14:"name_admin_bar";s:4:"Page";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:1;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:20;s:15:"capability_type";s:4:"page";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_page";s:9:"read_post";s:9:"read_page";s:11:"delete_post";s:11:"delete_page";s:10:"edit_posts";s:10:"edit_pages";s:17:"edit_others_posts";s:17:"edit_others_pages";s:13:"publish_posts";s:13:"publish_pages";s:18:"read_private_posts";s:18:"read_private_pages";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_pages";s:20:"delete_private_posts";s:20:"delete_private_pages";s:22:"delete_published_posts";s:22:"delete_published_pages";s:19:"delete_others_posts";s:19:"delete_others_pages";s:18:"edit_private_posts";s:18:"edit_private_pages";s:20:"edit_published_posts";s:20:"edit_published_pages";s:12:"create_posts";s:10:"edit_pages";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";s:5:"pages";s:8:"_builtin";b:1;s:10:"_edit_link";s:16:"post.php?post=%d";}s:10:"attachment";O:8:"stdClass":25:{s:4:"name";s:10:"attachment";s:5:"label";s:5:"Media";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:5:"Media";s:13:"singular_name";s:5:"Media";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:10:"Edit Media";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:20:"View Attachment Page";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:5:"Media";s:8:"archives";s:5:"Media";s:10:"attributes";s:21:"Attachment Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:5:"Media";s:14:"name_admin_bar";s:5:"Media";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:1;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:12:"upload_files";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";s:5:"media";s:8:"_builtin";b:1;s:10:"_edit_link";s:16:"post.php?post=%d";}s:8:"revision";O:8:"stdClass":25:{s:4:"name";s:8:"revision";s:5:"label";s:9:"Revisions";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:9:"Revisions";s:13:"singular_name";s:8:"Revision";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:9:"Revisions";s:8:"archives";s:9:"Revisions";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:9:"Revisions";s:14:"name_admin_bar";s:8:"Revision";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:0;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:24:"revision.php?revision=%d";}s:13:"nav_menu_item";O:8:"stdClass":26:{s:4:"name";s:13:"nav_menu_item";s:5:"label";s:21:"Navigation Menu Items";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:21:"Navigation Menu Items";s:13:"singular_name";s:20:"Navigation Menu Item";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:21:"Navigation Menu Items";s:8:"archives";s:21:"Navigation Menu Items";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:21:"Navigation Menu Items";s:14:"name_admin_bar";s:20:"Navigation Menu Item";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";a:0:{}s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:10:"custom_css";O:8:"stdClass":25:{s:4:"name";s:10:"custom_css";s:5:"label";s:10:"Custom CSS";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:10:"Custom CSS";s:13:"singular_name";s:10:"Custom CSS";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:10:"Custom CSS";s:8:"archives";s:10:"Custom CSS";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:10:"Custom CSS";s:14:"name_admin_bar";s:10:"Custom CSS";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":13:{s:9:"edit_post";s:8:"edit_css";s:9:"read_post";s:4:"read";s:11:"delete_post";s:18:"edit_theme_options";s:10:"edit_posts";s:8:"edit_css";s:17:"edit_others_posts";s:8:"edit_css";s:13:"publish_posts";s:18:"edit_theme_options";s:18:"read_private_posts";s:4:"read";s:12:"delete_posts";s:18:"edit_theme_options";s:22:"delete_published_posts";s:18:"edit_theme_options";s:20:"delete_private_posts";s:18:"edit_theme_options";s:19:"delete_others_posts";s:18:"edit_theme_options";s:20:"edit_published_posts";s:8:"edit_css";s:12:"create_posts";s:8:"edit_css";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:19:"customize_changeset";O:8:"stdClass":25:{s:4:"name";s:19:"customize_changeset";s:5:"label";s:10:"Changesets";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:10:"Changesets";s:13:"singular_name";s:9:"Changeset";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:17:"Add New Changeset";s:9:"edit_item";s:14:"Edit Changeset";s:8:"new_item";s:13:"New Changeset";s:9:"view_item";s:14:"View Changeset";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:17:"Search Changesets";s:9:"not_found";s:20:"No changesets found.";s:18:"not_found_in_trash";s:29:"No changesets found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:14:"All Changesets";s:8:"archives";s:14:"All Changesets";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:10:"Changesets";s:14:"name_admin_bar";s:9:"Changeset";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:19:"customize_changeset";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"customize";s:9:"read_post";s:9:"customize";s:11:"delete_post";s:9:"customize";s:10:"edit_posts";s:9:"customize";s:17:"edit_others_posts";s:9:"customize";s:13:"publish_posts";s:9:"customize";s:18:"read_private_posts";s:9:"customize";s:4:"read";s:4:"read";s:12:"delete_posts";s:9:"customize";s:20:"delete_private_posts";s:9:"customize";s:22:"delete_published_posts";s:9:"customize";s:19:"delete_others_posts";s:9:"customize";s:18:"edit_private_posts";s:9:"customize";s:20:"edit_published_posts";s:12:"do_not_allow";s:12:"create_posts";s:9:"customize";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:0;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:12:"oembed_cache";O:8:"stdClass":26:{s:4:"name";s:12:"oembed_cache";s:5:"label";s:16:"oEmbed Responses";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:16:"oEmbed Responses";s:13:"singular_name";s:15:"oEmbed Response";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:16:"oEmbed Responses";s:8:"archives";s:16:"oEmbed Responses";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:16:"oEmbed Responses";s:14:"name_admin_bar";s:15:"oEmbed Response";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";a:0:{}s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:0;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:16:"scheduled-action";O:8:"stdClass":24:{s:4:"name";s:16:"scheduled-action";s:5:"label";s:17:"Scheduled Actions";s:6:"labels";O:8:"stdClass":28:{s:4:"name";s:17:"Scheduled Actions";s:13:"singular_name";s:16:"Scheduled Action";s:7:"add_new";s:3:"Add";s:12:"add_new_item";s:24:"Add New Scheduled Action";s:9:"edit_item";s:21:"Edit Scheduled Action";s:8:"new_item";s:20:"New Scheduled Action";s:9:"view_item";s:11:"View Action";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:24:"Search Scheduled Actions";s:9:"not_found";s:16:"No actions found";s:18:"not_found_in_trash";s:25:"No actions found in trash";s:17:"parent_item_colon";N;s:9:"all_items";s:17:"Scheduled Actions";s:8:"archives";s:17:"Scheduled Actions";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:17:"Scheduled Actions";s:4:"edit";s:4:"Edit";s:4:"view";s:11:"View Action";s:14:"name_admin_bar";s:16:"Scheduled Action";}s:11:"description";s:64:"Scheduled actions are hooks triggered on a cetain date and time.";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";s:9:"tools.php";s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:15:"acf-field-group";O:8:"stdClass":24:{s:4:"name";s:15:"acf-field-group";s:5:"label";s:12:"Field Groups";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:12:"Field Groups";s:13:"singular_name";s:11:"Field Group";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:19:"Add New Field Group";s:9:"edit_item";s:16:"Edit Field Group";s:8:"new_item";s:15:"New Field Group";s:9:"view_item";s:16:"View Field Group";s:10:"view_items";s:10:"View Pages";s:12:"search_items";s:19:"Search Field Groups";s:9:"not_found";s:21:"No Field Groups found";s:18:"not_found_in_trash";s:30:"No Field Groups found in Trash";s:17:"parent_item_colon";s:12:"Parent Page:";s:9:"all_items";s:12:"Field Groups";s:8:"archives";s:12:"Field Groups";s:10:"attributes";s:15:"Page Attributes";s:16:"insert_into_item";s:16:"Insert into page";s:21:"uploaded_to_this_item";s:21:"Uploaded to this page";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter pages list";s:21:"items_list_navigation";s:21:"Pages list navigation";s:10:"items_list";s:10:"Pages list";s:9:"menu_name";s:12:"Field Groups";s:14:"name_admin_bar";s:11:"Field Group";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:1;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":9:{s:9:"edit_post";s:14:"manage_options";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:14:"manage_options";s:10:"edit_posts";s:14:"manage_options";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:12:"delete_posts";s:14:"manage_options";s:12:"create_posts";s:14:"manage_options";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:9:"acf-field";O:8:"stdClass":24:{s:4:"name";s:9:"acf-field";s:5:"label";s:6:"Fields";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:6:"Fields";s:13:"singular_name";s:5:"Field";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:13:"Add New Field";s:9:"edit_item";s:10:"Edit Field";s:8:"new_item";s:9:"New Field";s:9:"view_item";s:10:"View Field";s:10:"view_items";s:10:"View Pages";s:12:"search_items";s:13:"Search Fields";s:9:"not_found";s:15:"No Fields found";s:18:"not_found_in_trash";s:24:"No Fields found in Trash";s:17:"parent_item_colon";s:12:"Parent Page:";s:9:"all_items";s:6:"Fields";s:8:"archives";s:6:"Fields";s:10:"attributes";s:15:"Page Attributes";s:16:"insert_into_item";s:16:"Insert into page";s:21:"uploaded_to_this_item";s:21:"Uploaded to this page";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter pages list";s:21:"items_list_navigation";s:21:"Pages list navigation";s:10:"items_list";s:10:"Pages list";s:9:"menu_name";s:6:"Fields";s:14:"name_admin_bar";s:5:"Field";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:1;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":9:{s:9:"edit_post";s:14:"manage_options";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:14:"manage_options";s:10:"edit_posts";s:14:"manage_options";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:12:"delete_posts";s:14:"manage_options";s:12:"create_posts";s:14:"manage_options";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:7:"product";O:8:"stdClass":24:{s:4:"name";s:7:"product";s:5:"label";s:8:"Products";s:6:"labels";O:8:"stdClass":29:{s:4:"name";s:8:"Products";s:13:"singular_name";s:7:"Product";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:15:"Add new product";s:9:"edit_item";s:12:"Edit product";s:8:"new_item";s:11:"New product";s:9:"view_item";s:12:"View product";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:15:"Search products";s:9:"not_found";s:17:"No products found";s:18:"not_found_in_trash";s:26:"No products found in trash";s:17:"parent_item_colon";N;s:9:"all_items";s:12:"All Products";s:8:"archives";s:12:"All Products";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:19:"Insert into product";s:21:"uploaded_to_this_item";s:24:"Uploaded to this product";s:14:"featured_image";s:13:"Product image";s:18:"set_featured_image";s:17:"Set product image";s:21:"remove_featured_image";s:20:"Remove product image";s:18:"use_featured_image";s:20:"Use as product image";s:17:"filter_items_list";s:15:"Filter products";s:21:"items_list_navigation";s:19:"Products navigation";s:10:"items_list";s:13:"Products list";s:9:"menu_name";s:8:"Products";s:4:"edit";s:4:"Edit";s:4:"view";s:12:"View product";s:6:"parent";s:14:"Parent product";s:14:"name_admin_bar";s:7:"Product";}s:11:"description";s:53:"This is where you can add new products to your store.";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:15:"capability_type";s:7:"product";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:12:"edit_product";s:9:"read_post";s:12:"read_product";s:11:"delete_post";s:14:"delete_product";s:10:"edit_posts";s:13:"edit_products";s:17:"edit_others_posts";s:20:"edit_others_products";s:13:"publish_posts";s:16:"publish_products";s:18:"read_private_posts";s:21:"read_private_products";s:4:"read";s:4:"read";s:12:"delete_posts";s:15:"delete_products";s:20:"delete_private_posts";s:23:"delete_private_products";s:22:"delete_published_posts";s:25:"delete_published_products";s:19:"delete_others_posts";s:22:"delete_others_products";s:18:"edit_private_posts";s:21:"edit_private_products";s:20:"edit_published_posts";s:23:"edit_published_products";s:12:"create_posts";s:13:"edit_products";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";s:4:"shop";s:7:"rewrite";a:5:{s:4:"slug";s:7:"product";s:10:"with_front";b:0;s:5:"feeds";b:1;s:5:"pages";b:1;s:7:"ep_mask";i:1;}s:9:"query_var";s:7:"product";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:17:"product_variation";O:8:"stdClass":25:{s:4:"name";s:17:"product_variation";s:5:"label";s:10:"Variations";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:10:"Variations";s:13:"singular_name";s:10:"Variations";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:10:"Variations";s:8:"archives";s:10:"Variations";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:10:"Variations";s:14:"name_admin_bar";s:10:"Variations";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";b:0;s:15:"capability_type";s:7:"product";s:3:"cap";O:8:"stdClass":8:{s:9:"edit_post";s:12:"edit_product";s:9:"read_post";s:12:"read_product";s:11:"delete_post";s:14:"delete_product";s:10:"edit_posts";s:13:"edit_products";s:17:"edit_others_posts";s:20:"edit_others_products";s:13:"publish_posts";s:16:"publish_products";s:18:"read_private_posts";s:21:"read_private_products";s:12:"create_posts";s:13:"edit_products";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";s:17:"product_variation";s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:10:"shop_order";O:8:"stdClass":24:{s:4:"name";s:10:"shop_order";s:5:"label";s:6:"Orders";s:6:"labels";O:8:"stdClass":29:{s:4:"name";s:6:"Orders";s:13:"singular_name";s:5:"Order";s:7:"add_new";s:9:"Add order";s:12:"add_new_item";s:13:"Add new order";s:9:"edit_item";s:10:"Edit order";s:8:"new_item";s:9:"New order";s:9:"view_item";s:10:"View order";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:13:"Search orders";s:9:"not_found";s:15:"No orders found";s:18:"not_found_in_trash";s:24:"No orders found in trash";s:17:"parent_item_colon";N;s:9:"all_items";s:6:"Orders";s:8:"archives";s:6:"Orders";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:13:"Filter orders";s:21:"items_list_navigation";s:17:"Orders navigation";s:10:"items_list";s:11:"Orders list";s:9:"menu_name";s:6:"Orders";s:4:"edit";s:4:"Edit";s:4:"view";s:10:"View order";s:6:"parent";s:13:"Parent orders";s:14:"name_admin_bar";s:5:"Order";}s:11:"description";s:38:"This is where store orders are stored.";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";s:11:"woocommerce";s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:1;s:15:"capability_type";s:10:"shop_order";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:15:"edit_shop_order";s:9:"read_post";s:15:"read_shop_order";s:11:"delete_post";s:17:"delete_shop_order";s:10:"edit_posts";s:16:"edit_shop_orders";s:17:"edit_others_posts";s:23:"edit_others_shop_orders";s:13:"publish_posts";s:19:"publish_shop_orders";s:18:"read_private_posts";s:24:"read_private_shop_orders";s:4:"read";s:4:"read";s:12:"delete_posts";s:18:"delete_shop_orders";s:20:"delete_private_posts";s:26:"delete_private_shop_orders";s:22:"delete_published_posts";s:28:"delete_published_shop_orders";s:19:"delete_others_posts";s:25:"delete_others_shop_orders";s:18:"edit_private_posts";s:24:"edit_private_shop_orders";s:20:"edit_published_posts";s:26:"edit_published_shop_orders";s:12:"create_posts";s:16:"edit_shop_orders";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:17:"shop_order_refund";O:8:"stdClass":25:{s:4:"name";s:17:"shop_order_refund";s:5:"label";s:7:"Refunds";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:7:"Refunds";s:13:"singular_name";s:7:"Refunds";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:7:"Refunds";s:8:"archives";s:7:"Refunds";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:7:"Refunds";s:14:"name_admin_bar";s:7:"Refunds";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";b:0;s:15:"capability_type";s:10:"shop_order";s:3:"cap";O:8:"stdClass":8:{s:9:"edit_post";s:15:"edit_shop_order";s:9:"read_post";s:15:"read_shop_order";s:11:"delete_post";s:17:"delete_shop_order";s:10:"edit_posts";s:16:"edit_shop_orders";s:17:"edit_others_posts";s:23:"edit_others_shop_orders";s:13:"publish_posts";s:19:"publish_shop_orders";s:18:"read_private_posts";s:24:"read_private_shop_orders";s:12:"create_posts";s:16:"edit_shop_orders";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";s:17:"shop_order_refund";s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:11:"shop_coupon";O:8:"stdClass":24:{s:4:"name";s:11:"shop_coupon";s:5:"label";s:7:"Coupons";s:6:"labels";O:8:"stdClass":29:{s:4:"name";s:7:"Coupons";s:13:"singular_name";s:6:"Coupon";s:7:"add_new";s:10:"Add coupon";s:12:"add_new_item";s:14:"Add new coupon";s:9:"edit_item";s:11:"Edit coupon";s:8:"new_item";s:10:"New coupon";s:9:"view_item";s:11:"View coupon";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:14:"Search coupons";s:9:"not_found";s:16:"No coupons found";s:18:"not_found_in_trash";s:25:"No coupons found in trash";s:17:"parent_item_colon";N;s:9:"all_items";s:7:"Coupons";s:8:"archives";s:7:"Coupons";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:14:"Filter coupons";s:21:"items_list_navigation";s:18:"Coupons navigation";s:10:"items_list";s:12:"Coupons list";s:9:"menu_name";s:7:"Coupons";s:4:"edit";s:4:"Edit";s:4:"view";s:12:"View coupons";s:6:"parent";s:13:"Parent coupon";s:14:"name_admin_bar";s:6:"Coupon";}s:11:"description";s:75:"This is where you can add new coupons that customers can use in your store.";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";s:11:"woocommerce";s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:1;s:15:"capability_type";s:11:"shop_coupon";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:16:"edit_shop_coupon";s:9:"read_post";s:16:"read_shop_coupon";s:11:"delete_post";s:18:"delete_shop_coupon";s:10:"edit_posts";s:17:"edit_shop_coupons";s:17:"edit_others_posts";s:24:"edit_others_shop_coupons";s:13:"publish_posts";s:20:"publish_shop_coupons";s:18:"read_private_posts";s:25:"read_private_shop_coupons";s:4:"read";s:4:"read";s:12:"delete_posts";s:19:"delete_shop_coupons";s:20:"delete_private_posts";s:27:"delete_private_shop_coupons";s:22:"delete_published_posts";s:29:"delete_published_shop_coupons";s:19:"delete_others_posts";s:26:"delete_others_shop_coupons";s:18:"edit_private_posts";s:25:"edit_private_shop_coupons";s:20:"edit_published_posts";s:27:"edit_published_shop_coupons";s:12:"create_posts";s:17:"edit_shop_coupons";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:12:"shop_webhook";O:8:"stdClass":25:{s:4:"name";s:12:"shop_webhook";s:5:"label";s:8:"Webhooks";s:6:"labels";O:8:"stdClass":29:{s:4:"name";s:8:"Webhooks";s:13:"singular_name";s:7:"Webhook";s:7:"add_new";s:11:"Add webhook";s:12:"add_new_item";s:15:"Add new webhook";s:9:"edit_item";s:12:"Edit webhook";s:8:"new_item";s:11:"New webhook";s:9:"view_item";s:12:"View webhook";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:15:"Search webhooks";s:9:"not_found";s:17:"No webhooks found";s:18:"not_found_in_trash";s:26:"No webhooks found in trash";s:17:"parent_item_colon";N;s:9:"all_items";s:8:"Webhooks";s:8:"archives";s:8:"Webhooks";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:8:"Webhooks";s:4:"edit";s:4:"Edit";s:4:"view";s:13:"View webhooks";s:6:"parent";s:14:"Parent webhook";s:14:"name_admin_bar";s:7:"Webhook";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";b:0;s:15:"capability_type";s:12:"shop_webhook";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:17:"edit_shop_webhook";s:9:"read_post";s:17:"read_shop_webhook";s:11:"delete_post";s:19:"delete_shop_webhook";s:10:"edit_posts";s:18:"edit_shop_webhooks";s:17:"edit_others_posts";s:25:"edit_others_shop_webhooks";s:13:"publish_posts";s:21:"publish_shop_webhooks";s:18:"read_private_posts";s:26:"read_private_shop_webhooks";s:4:"read";s:4:"read";s:12:"delete_posts";s:20:"delete_shop_webhooks";s:20:"delete_private_posts";s:28:"delete_private_shop_webhooks";s:22:"delete_published_posts";s:30:"delete_published_shop_webhooks";s:19:"delete_others_posts";s:27:"delete_others_shop_webhooks";s:18:"edit_private_posts";s:26:"edit_private_shop_webhooks";s:20:"edit_published_posts";s:28:"edit_published_shop_webhooks";s:12:"create_posts";s:18:"edit_shop_webhooks";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:17:"shop_subscription";O:8:"stdClass":24:{s:4:"name";s:17:"shop_subscription";s:5:"label";s:13:"Subscriptions";s:6:"labels";O:8:"stdClass":29:{s:4:"name";s:13:"Subscriptions";s:13:"singular_name";s:12:"Subscription";s:7:"add_new";s:16:"Add Subscription";s:12:"add_new_item";s:20:"Add New Subscription";s:9:"edit_item";s:17:"Edit Subscription";s:8:"new_item";s:16:"New Subscription";s:9:"view_item";s:17:"View Subscription";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:20:"Search Subscriptions";s:9:"not_found";s:460:"<p>Subscriptions will appear here for you to view and manage once purchased by a customer.</p><p><a href="http://docs.woocommerce.com/document/subscriptions/store-manager-guide/#section-3" target="_blank">Learn more about managing subscriptions &raquo;</a></p><p><a href="http://staging-newportartmuseum.kinsta.com/wp-admin/post-new.php?post_type=product&#038;select_subscription=true&#038;subscription_pointers=true">Add a subscription product &raquo;</a></p>";s:18:"not_found_in_trash";s:31:"No Subscriptions found in trash";s:17:"parent_item_colon";N;s:9:"all_items";s:13:"Subscriptions";s:8:"archives";s:13:"Subscriptions";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:13:"Subscriptions";s:4:"edit";s:4:"Edit";s:4:"view";s:17:"View Subscription";s:6:"parent";s:20:"Parent Subscriptions";s:14:"name_admin_bar";s:12:"Subscription";}s:11:"description";s:39:"This is where subscriptions are stored.";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";s:11:"woocommerce";s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:1;s:15:"capability_type";s:10:"shop_order";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:15:"edit_shop_order";s:9:"read_post";s:15:"read_shop_order";s:11:"delete_post";s:17:"delete_shop_order";s:10:"edit_posts";s:16:"edit_shop_orders";s:17:"edit_others_posts";s:23:"edit_others_shop_orders";s:13:"publish_posts";s:19:"publish_shop_orders";s:18:"read_private_posts";s:24:"read_private_shop_orders";s:4:"read";s:4:"read";s:12:"delete_posts";s:18:"delete_shop_orders";s:20:"delete_private_posts";s:26:"delete_private_shop_orders";s:22:"delete_published_posts";s:28:"delete_published_shop_orders";s:19:"delete_others_posts";s:25:"delete_others_shop_orders";s:18:"edit_private_posts";s:24:"edit_private_shop_orders";s:20:"edit_published_posts";s:26:"edit_published_shop_orders";s:12:"create_posts";s:16:"edit_shop_orders";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:6:"wp_log";O:8:"stdClass":24:{s:4:"name";s:6:"wp_log";s:5:"label";s:4:"Logs";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:4:"Logs";s:13:"singular_name";s:4:"Logs";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:4:"Logs";s:8:"archives";s:4:"Logs";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:4:"Logs";s:14:"name_admin_bar";s:4:"Logs";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:12:"jp_pay_order";O:8:"stdClass":24:{s:4:"name";s:12:"jp_pay_order";s:5:"label";s:5:"Order";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:5:"Order";s:13:"singular_name";s:5:"Order";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:5:"Order";s:8:"archives";s:5:"Order";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:5:"Order";s:14:"name_admin_bar";s:5:"Order";}s:11:"description";s:22:"Simple Payments orders";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":8:{s:9:"edit_post";s:10:"edit_posts";s:9:"read_post";s:18:"read_private_posts";s:11:"delete_post";s:12:"delete_posts";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";s:12:"jp_pay_order";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:14:"jp_pay_product";O:8:"stdClass":24:{s:4:"name";s:14:"jp_pay_product";s:5:"label";s:7:"Product";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:7:"Product";s:13:"singular_name";s:7:"Product";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:12:"Add New Post";s:9:"edit_item";s:9:"Edit Post";s:8:"new_item";s:8:"New Post";s:9:"view_item";s:9:"View Post";s:10:"view_items";s:10:"View Posts";s:12:"search_items";s:12:"Search Posts";s:9:"not_found";s:15:"No posts found.";s:18:"not_found_in_trash";s:24:"No posts found in Trash.";s:17:"parent_item_colon";N;s:9:"all_items";s:7:"Product";s:8:"archives";s:7:"Product";s:10:"attributes";s:15:"Post Attributes";s:16:"insert_into_item";s:16:"Insert into post";s:21:"uploaded_to_this_item";s:21:"Uploaded to this post";s:14:"featured_image";s:14:"Featured Image";s:18:"set_featured_image";s:18:"Set featured image";s:21:"remove_featured_image";s:21:"Remove featured image";s:18:"use_featured_image";s:21:"Use as featured image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:7:"Product";s:14:"name_admin_bar";s:7:"Product";}s:11:"description";s:24:"Simple Payments products";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":8:{s:9:"edit_post";s:10:"edit_posts";s:9:"read_post";s:18:"read_private_posts";s:11:"delete_post";s:12:"delete_posts";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";s:14:"jp_pay_product";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:13:"shop-products";O:8:"stdClass":26:{s:4:"name";s:13:"shop-products";s:5:"label";s:13:"Shop Products";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:13:"Shop Products";s:13:"singular_name";s:12:"Shop Product";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:20:"Add New Shop Product";s:9:"edit_item";s:17:"Edit Shop Product";s:8:"new_item";s:16:"New Shop Product";s:9:"view_item";s:17:"View Shop Product";s:10:"view_items";s:18:"View Shop Products";s:12:"search_items";s:20:"Search Shop Products";s:9:"not_found";s:22:"No Shop Products found";s:18:"not_found_in_trash";s:35:"No Shop Products found in the trash";s:17:"parent_item_colon";s:20:"Parent Shop Product:";s:9:"all_items";s:17:"All Shop Products";s:8:"archives";s:17:"Shop Product List";s:10:"attributes";s:23:"Shop Product Attributes";s:16:"insert_into_item";s:24:"Insert into Shop Product";s:21:"uploaded_to_this_item";s:29:"Uploaded to this Shop Product";s:14:"featured_image";s:13:"Product Image";s:18:"set_featured_image";s:17:"Set Product Image";s:21:"remove_featured_image";s:20:"Remove Product Image";s:18:"use_featured_image";s:20:"Use as Product Image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:13:"Shop Products";s:14:"name_admin_bar";s:12:"Shop Product";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:4;s:9:"menu_icon";s:18:"dashicons-products";s:15:"capability_type";s:7:"product";s:3:"cap";O:8:"stdClass":17:{s:9:"edit_post";s:12:"edit_product";s:9:"read_post";s:12:"read_product";s:11:"delete_post";s:14:"delete_product";s:10:"edit_posts";s:13:"edit_products";s:17:"edit_others_posts";s:20:"edit_others_products";s:13:"publish_posts";s:16:"publish_products";s:18:"read_private_posts";s:21:"read_private_products";s:4:"read";s:4:"read";s:12:"delete_posts";s:15:"delete_products";s:20:"delete_private_posts";s:23:"delete_private_products";s:22:"delete_published_posts";s:25:"delete_published_products";s:19:"delete_others_posts";s:22:"delete_others_products";s:18:"edit_private_posts";s:21:"edit_private_products";s:20:"edit_published_posts";s:23:"edit_published_products";s:1:"0";s:12:"shop_product";s:1:"1";s:13:"shop_products";s:12:"create_posts";s:13:"edit_products";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:1:{i:0;s:5:"group";}s:11:"has_archive";s:13:"shop-products";s:7:"rewrite";a:5:{s:4:"slug";s:4:"shop";s:10:"with_front";b:0;s:5:"feeds";b:1;s:5:"pages";b:1;s:7:"ep_mask";i:1;}s:9:"query_var";s:13:"shop-products";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:16:"membership-tiers";O:8:"stdClass":26:{s:4:"name";s:16:"membership-tiers";s:5:"label";s:16:"Membership Tiers";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:16:"Membership Tiers";s:13:"singular_name";s:15:"Membership Tier";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:23:"Add New Membership Tier";s:9:"edit_item";s:20:"Edit Membership Tier";s:8:"new_item";s:19:"New Membership Tier";s:9:"view_item";s:20:"View Membership Tier";s:10:"view_items";s:21:"View Membership Tiers";s:12:"search_items";s:23:"Search Membership Tiers";s:9:"not_found";s:25:"No Membership Tiers found";s:18:"not_found_in_trash";s:38:"No Membership Tiers found in the trash";s:17:"parent_item_colon";s:23:"Parent Membership Tier:";s:9:"all_items";s:20:"All Membership Tiers";s:8:"archives";s:20:"Membership Tier List";s:10:"attributes";s:26:"Membership Tier Attributes";s:16:"insert_into_item";s:27:"Insert into Membership Tier";s:21:"uploaded_to_this_item";s:32:"Uploaded to this Membership Tier";s:14:"featured_image";s:21:"Membership Tier Image";s:18:"set_featured_image";s:25:"Set Membership Tier Image";s:21:"remove_featured_image";s:28:"Remove Membership Tier Image";s:18:"use_featured_image";s:28:"Use as Membership Tier Image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:16:"Membership Tiers";s:14:"name_admin_bar";s:15:"Membership Tier";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:3;s:9:"menu_icon";s:19:"dashicons-clipboard";s:15:"capability_type";s:7:"product";s:3:"cap";O:8:"stdClass":17:{s:9:"edit_post";s:12:"edit_product";s:9:"read_post";s:12:"read_product";s:11:"delete_post";s:14:"delete_product";s:10:"edit_posts";s:13:"edit_products";s:17:"edit_others_posts";s:20:"edit_others_products";s:13:"publish_posts";s:16:"publish_products";s:18:"read_private_posts";s:21:"read_private_products";s:4:"read";s:4:"read";s:12:"delete_posts";s:15:"delete_products";s:20:"delete_private_posts";s:23:"delete_private_products";s:22:"delete_published_posts";s:25:"delete_published_products";s:19:"delete_others_posts";s:22:"delete_others_products";s:18:"edit_private_posts";s:21:"edit_private_products";s:20:"edit_published_posts";s:23:"edit_published_products";s:1:"0";s:15:"membership_tier";s:1:"1";s:16:"membership_tiers";s:12:"create_posts";s:13:"edit_products";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:1:{i:0;s:5:"group";}s:11:"has_archive";s:16:"membership-tiers";s:7:"rewrite";a:5:{s:4:"slug";s:16:"membership-tiers";s:10:"with_front";b:0;s:5:"feeds";b:1;s:5:"pages";b:1;s:7:"ep_mask";i:1;}s:9:"query_var";s:16:"membership-tiers";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:14:"donation-tiers";O:8:"stdClass":26:{s:4:"name";s:14:"donation-tiers";s:5:"label";s:14:"Donation Tiers";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:14:"Donation Tiers";s:13:"singular_name";s:13:"Donation Tier";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:21:"Add New Donation Tier";s:9:"edit_item";s:18:"Edit Donation Tier";s:8:"new_item";s:17:"New Donation Tier";s:9:"view_item";s:18:"View Donation Tier";s:10:"view_items";s:19:"View Donation Tiers";s:12:"search_items";s:21:"Search Donation Tiers";s:9:"not_found";s:23:"No Donation Tiers found";s:18:"not_found_in_trash";s:36:"No Donation Tiers found in the trash";s:17:"parent_item_colon";s:21:"Parent Donation Tier:";s:9:"all_items";s:18:"All Donation Tiers";s:8:"archives";s:18:"Donation Tier List";s:10:"attributes";s:24:"Donation Tier Attributes";s:16:"insert_into_item";s:25:"Insert into Donation Tier";s:21:"uploaded_to_this_item";s:30:"Uploaded to this Donation Tier";s:14:"featured_image";s:19:"Donation Tier Image";s:18:"set_featured_image";s:23:"Set Donation Tier Image";s:21:"remove_featured_image";s:26:"Remove Donation Tier Image";s:18:"use_featured_image";s:26:"Use as Donation Tier Image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:14:"Donation Tiers";s:14:"name_admin_bar";s:13:"Donation Tier";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:3;s:9:"menu_icon";s:18:"dashicons-book-alt";s:15:"capability_type";s:7:"product";s:3:"cap";O:8:"stdClass":17:{s:9:"edit_post";s:12:"edit_product";s:9:"read_post";s:12:"read_product";s:11:"delete_post";s:14:"delete_product";s:10:"edit_posts";s:13:"edit_products";s:17:"edit_others_posts";s:20:"edit_others_products";s:13:"publish_posts";s:16:"publish_products";s:18:"read_private_posts";s:21:"read_private_products";s:4:"read";s:4:"read";s:12:"delete_posts";s:15:"delete_products";s:20:"delete_private_posts";s:23:"delete_private_products";s:22:"delete_published_posts";s:25:"delete_published_products";s:19:"delete_others_posts";s:22:"delete_others_products";s:18:"edit_private_posts";s:21:"edit_private_products";s:20:"edit_published_posts";s:23:"edit_published_products";s:1:"0";s:13:"donation_tier";s:1:"1";s:14:"donation_tiers";s:12:"create_posts";s:13:"edit_products";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:1:{i:0;s:5:"group";}s:11:"has_archive";s:14:"donation-tiers";s:7:"rewrite";a:5:{s:4:"slug";s:14:"donation-tiers";s:10:"with_front";b:0;s:5:"feeds";b:1;s:5:"pages";b:1;s:7:"ep_mask";i:1;}s:9:"query_var";s:14:"donation-tiers";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:6:"events";O:8:"stdClass":26:{s:4:"name";s:6:"events";s:5:"label";s:6:"Events";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:6:"Events";s:13:"singular_name";s:5:"Event";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:13:"Add New Event";s:9:"edit_item";s:10:"Edit Event";s:8:"new_item";s:9:"New Event";s:9:"view_item";s:10:"View Event";s:10:"view_items";s:11:"View Events";s:12:"search_items";s:13:"Search Events";s:9:"not_found";s:15:"No Events found";s:18:"not_found_in_trash";s:28:"No Events found in the trash";s:17:"parent_item_colon";s:13:"Parent Event:";s:9:"all_items";s:10:"All Events";s:8:"archives";s:10:"Event List";s:10:"attributes";s:16:"Event Attributes";s:16:"insert_into_item";s:17:"Insert into Event";s:21:"uploaded_to_this_item";s:22:"Uploaded to this Event";s:14:"featured_image";s:11:"Event Image";s:18:"set_featured_image";s:15:"Set Event Image";s:21:"remove_featured_image";s:18:"Remove Event Image";s:18:"use_featured_image";s:18:"Use as Event Image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:6:"Events";s:14:"name_admin_bar";s:5:"Event";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:3;s:9:"menu_icon";s:22:"dashicons-calendar-alt";s:15:"capability_type";s:7:"product";s:3:"cap";O:8:"stdClass":17:{s:9:"edit_post";s:12:"edit_product";s:9:"read_post";s:12:"read_product";s:11:"delete_post";s:14:"delete_product";s:10:"edit_posts";s:13:"edit_products";s:17:"edit_others_posts";s:20:"edit_others_products";s:13:"publish_posts";s:16:"publish_products";s:18:"read_private_posts";s:21:"read_private_products";s:4:"read";s:4:"read";s:12:"delete_posts";s:15:"delete_products";s:20:"delete_private_posts";s:23:"delete_private_products";s:22:"delete_published_posts";s:25:"delete_published_products";s:19:"delete_others_posts";s:22:"delete_others_products";s:18:"edit_private_posts";s:21:"edit_private_products";s:20:"edit_published_posts";s:23:"edit_published_products";s:1:"0";s:5:"event";s:1:"1";s:6:"events";s:12:"create_posts";s:13:"edit_products";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:1:{i:0;s:5:"group";}s:11:"has_archive";s:6:"events";s:7:"rewrite";a:5:{s:4:"slug";s:6:"events";s:10:"with_front";b:0;s:5:"feeds";b:1;s:5:"pages";b:1;s:7:"ep_mask";i:1;}s:9:"query_var";s:6:"events";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}s:7:"classes";O:8:"stdClass":26:{s:4:"name";s:7:"classes";s:5:"label";s:7:"Classes";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:7:"Classes";s:13:"singular_name";s:7:"Classes";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:13:"Add New Class";s:9:"edit_item";s:10:"Edit Class";s:8:"new_item";s:9:"New Class";s:9:"view_item";s:10:"View Class";s:10:"view_items";s:12:"View Classes";s:12:"search_items";s:14:"Search Classes";s:9:"not_found";s:16:"No Classes found";s:18:"not_found_in_trash";s:29:"No Classes found in the trash";s:17:"parent_item_colon";s:13:"Parent Class:";s:9:"all_items";s:11:"All Classes";s:8:"archives";s:10:"Class List";s:10:"attributes";s:16:"Class Attributes";s:16:"insert_into_item";s:17:"Insert into Class";s:21:"uploaded_to_this_item";s:22:"Uploaded to this Class";s:14:"featured_image";s:11:"Class Image";s:18:"set_featured_image";s:15:"Set Class Image";s:21:"remove_featured_image";s:18:"Remove Class Image";s:18:"use_featured_image";s:18:"Use as Class Image";s:17:"filter_items_list";s:17:"Filter posts list";s:21:"items_list_navigation";s:21:"Posts list navigation";s:10:"items_list";s:10:"Posts list";s:9:"menu_name";s:7:"Classes";s:14:"name_admin_bar";s:7:"Classes";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:3;s:9:"menu_icon";s:28:"dashicons-welcome-learn-more";s:15:"capability_type";s:7:"product";s:3:"cap";O:8:"stdClass":17:{s:9:"edit_post";s:12:"edit_product";s:9:"read_post";s:12:"read_product";s:11:"delete_post";s:14:"delete_product";s:10:"edit_posts";s:13:"edit_products";s:17:"edit_others_posts";s:20:"edit_others_products";s:13:"publish_posts";s:16:"publish_products";s:18:"read_private_posts";s:21:"read_private_products";s:4:"read";s:4:"read";s:12:"delete_posts";s:15:"delete_products";s:20:"delete_private_posts";s:23:"delete_private_products";s:22:"delete_published_posts";s:25:"delete_published_products";s:19:"delete_others_posts";s:22:"delete_others_products";s:18:"edit_private_posts";s:21:"edit_private_products";s:20:"edit_published_posts";s:23:"edit_published_products";s:1:"0";s:5:"class";s:1:"1";s:7:"classes";s:12:"create_posts";s:13:"edit_products";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:1:{i:0;s:5:"group";}s:11:"has_archive";s:7:"classes";s:7:"rewrite";a:5:{s:4:"slug";s:7:"classes";s:10:"with_front";b:0;s:5:"feeds";b:1;s:5:"pages";b:1;s:7:"ep_mask";i:1;}s:9:"query_var";s:7:"classes";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:16:"post.php?post=%d";}}}i:2;i:1;i:3;d:1515364356.316627;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(841, 'jpsq_sync-1515364356.322320-154809-36', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:18:"post_type_features";i:1;a:25:{s:4:"post";a:10:{s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:1;s:9:"thumbnail";b:1;s:7:"excerpt";b:1;s:10:"trackbacks";b:1;s:13:"custom-fields";b:1;s:8:"comments";b:1;s:9:"revisions";b:1;s:12:"post-formats";b:1;}s:4:"page";a:8:{s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:1;s:9:"thumbnail";b:1;s:15:"page-attributes";b:1;s:13:"custom-fields";b:1;s:8:"comments";b:1;s:9:"revisions";b:1;}s:10:"attachment";a:3:{s:5:"title";b:1;s:6:"author";b:1;s:8:"comments";b:1;}s:16:"attachment:audio";a:1:{s:9:"thumbnail";b:1;}s:16:"attachment:video";a:1:{s:9:"thumbnail";b:1;}s:8:"revision";a:1:{s:6:"author";b:1;}s:13:"nav_menu_item";a:2:{s:5:"title";b:1;s:6:"editor";b:1;}s:10:"custom_css";a:2:{s:5:"title";b:1;s:9:"revisions";b:1;}s:19:"customize_changeset";a:2:{s:5:"title";b:1;s:6:"author";b:1;}s:12:"oembed_cache";a:2:{s:5:"title";b:1;s:6:"editor";b:1;}s:7:"product";a:8:{s:9:"thumbnail";b:1;s:5:"title";b:1;s:6:"editor";b:1;s:7:"excerpt";b:1;s:13:"custom-fields";b:1;s:9:"publicize";b:1;s:14:"wpcom-markdown";b:1;s:8:"comments";b:1;}s:16:"scheduled-action";a:3:{s:5:"title";b:1;s:6:"editor";b:1;s:8:"comments";b:1;}s:15:"acf-field-group";a:1:{s:5:"title";b:1;}s:9:"acf-field";a:1:{s:5:"title";b:1;}s:10:"shop_order";a:3:{s:5:"title";b:1;s:8:"comments";b:1;s:13:"custom-fields";b:1;}s:11:"shop_coupon";a:1:{s:5:"title";b:1;}s:17:"shop_subscription";a:3:{s:5:"title";b:1;s:8:"comments";b:1;s:13:"custom-fields";b:1;}s:6:"wp_log";a:2:{s:5:"title";b:1;s:6:"editor";b:1;}s:12:"jp_pay_order";a:2:{s:13:"custom-fields";b:1;s:7:"excerpt";b:1;}s:14:"jp_pay_product";a:5:{s:5:"title";b:1;s:6:"editor";b:1;s:9:"thumbnail";b:1;s:13:"custom-fields";b:1;s:6:"author";b:1;}s:13:"shop-products";a:4:{s:5:"title";b:1;s:9:"thumbnail";b:1;s:9:"revisions";b:1;s:15:"page-attributes";b:1;}s:16:"membership-tiers";a:2:{s:5:"title";b:1;s:9:"revisions";b:1;}s:14:"donation-tiers";a:2:{s:5:"title";b:1;s:9:"revisions";b:1;}s:6:"events";a:3:{s:5:"title";b:1;s:9:"thumbnail";b:1;s:9:"revisions";b:1;}s:7:"classes";a:3:{s:5:"title";b:1;s:9:"thumbnail";b:1;s:9:"revisions";b:1;}}}i:2;i:1;i:3;d:1515364356.322181;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(842, 'jpsq_sync-1515364356.323586-154809-37', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"shortcodes";i:1;a:32:{i:0;s:10:"wp_caption";i:1;s:7:"caption";i:2;s:7:"gallery";i:3;s:8:"playlist";i:4;s:5:"audio";i:5;s:5:"video";i:6;s:5:"embed";i:7;s:3:"acf";i:8;s:13:"subscriptions";i:9;s:11:"gravityform";i:10;s:12:"gravityforms";i:11;s:7:"product";i:12;s:12:"product_page";i:13;s:16:"product_category";i:14;s:18:"product_categories";i:15;s:11:"add_to_cart";i:16;s:15:"add_to_cart_url";i:17;s:8:"products";i:18;s:15:"recent_products";i:19;s:13:"sale_products";i:20;s:21:"best_selling_products";i:21;s:18:"top_rated_products";i:22;s:17:"featured_products";i:23;s:17:"product_attribute";i:24;s:16:"related_products";i:25;s:13:"shop_messages";i:26;s:26:"woocommerce_order_tracking";i:27;s:16:"woocommerce_cart";i:28;s:20:"woocommerce_checkout";i:29;s:22:"woocommerce_my_account";i:30;s:20:"woocommerce_messages";i:31;s:14:"simple-payment";}}i:2;i:1;i:3;d:1515364356.323494;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(843, 'jpsq_sync-1515364356.324611-154809-38', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:27:"rest_api_allowed_post_types";i:1;a:8:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:8:"revision";i:3;s:7:"product";i:4;s:13:"jetpack-comic";i:5;s:19:"jetpack-testimonial";i:6;s:12:"jp_pay_order";i:7;s:14:"jp_pay_product";}}i:2;i:1;i:3;d:1515364356.324523;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(844, 'jpsq_sync-1515364356.325534-154809-39', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:32:"rest_api_allowed_public_metadata";i:1;a:0:{}}i:2;i:1;i:3;d:1515364356.3254321;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(845, 'jpsq_sync-1515364356.326544-154809-40', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:24:"sso_is_two_step_required";i:1;b:0;}i:2;i:1;i:3;d:1515364356.3264401;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(846, 'jpsq_sync-1515364356.327433-154809-41', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:26:"sso_should_hide_login_form";i:1;b:0;}i:2;i:1;i:3;d:1515364356.327343;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(847, 'jpsq_sync-1515364356.328859-154809-42', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:18:"sso_match_by_email";i:1;b:1;}i:2;i:1;i:3;d:1515364356.3287649;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(848, 'jpsq_sync-1515364356.329810-154809-43', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:21:"sso_new_user_override";i:1;b:0;}i:2;i:1;i:3;d:1515364356.3297081;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(849, 'jpsq_sync-1515364356.330877-154809-44', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:29:"sso_bypass_default_login_form";i:1;b:0;}i:2;i:1;i:3;d:1515364356.330759;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(850, 'jpsq_sync-1515364356.331906-154809-45', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"wp_version";i:1;s:5:"4.9.1";}i:2;i:1;i:3;d:1515364356.331805;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(851, 'jpsq_sync-1515364356.332979-154809-46', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:11:"get_plugins";i:1;a:22:{s:41:"acf-to-rest-api/class-acf-to-rest-api.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:15:"ACF to REST API";s:9:"PluginURI";s:42:"http://github.com/airesvsg/acf-to-rest-api";s:7:"Version";s:5:"3.1.0";s:11:"Description";s:66:"Exposes Advanced Custom Fields Endpoints in the WordPress REST API";s:6:"Author";s:16:"Aires Gonçalves";s:9:"AuthorURI";s:26:"http://github.com/airesvsg";s:10:"TextDomain";s:15:"acf-to-rest-api";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:15:"ACF to REST API";s:10:"AuthorName";s:16:"Aires Gonçalves";}s:51:"acf-gravityforms-add-on/acf-gravityforms-add-on.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:43:"Advanced Custom Fields: Gravityforms Add-on";s:9:"PluginURI";s:57:"https://github.com/dannyvanholten/acf-gravityforms-add-on";s:7:"Version";s:5:"1.2.1";s:11:"Description";s:60:"Advanced Custom Field with which we can select Gravityforms.";s:6:"Author";s:16:"Danny van Holten";s:9:"AuthorURI";s:30:"http://www.dannyvanholten.com/";s:10:"TextDomain";s:23:"acf-gravityforms-add-on";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:43:"Advanced Custom Fields: Gravityforms Add-on";s:10:"AuthorName";s:16:"Danny van Holten";}s:34:"advanced-custom-fields-pro/acf.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:26:"Advanced Custom Fields PRO";s:9:"PluginURI";s:37:"https://www.advancedcustomfields.com/";s:7:"Version";s:5:"5.6.7";s:11:"Description";s:69:"Customise WordPress with powerful, professional and intuitive fields.";s:6:"Author";s:13:"Elliot Condon";s:9:"AuthorURI";s:28:"http://www.elliotcondon.com/";s:10:"TextDomain";s:3:"acf";s:10:"DomainPath";s:5:"/lang";s:7:"Network";b:0;s:5:"Title";s:26:"Advanced Custom Fields PRO";s:10:"AuthorName";s:13:"Elliot Condon";}s:49:"ajax-thumbnail-rebuild/ajax-thumbnail-rebuild.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:22:"AJAX Thumbnail Rebuild";s:9:"PluginURI";s:49:"http://breiti.cc/wordpress/ajax-thumbnail-rebuild";s:7:"Version";s:4:"1.12";s:11:"Description";s:22:"Rebuild all thumbnails";s:6:"Author";s:9:"junkcoder";s:9:"AuthorURI";s:16:"http://breiti.cc";s:10:"TextDomain";s:22:"ajax-thumbnail-rebuild";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:22:"AJAX Thumbnail Rebuild";s:10:"AuthorName";s:9:"junkcoder";}s:29:"gravityforms/gravityforms.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:13:"Gravity Forms";s:9:"PluginURI";s:27:"http://www.gravityforms.com";s:7:"Version";s:5:"2.2.5";s:11:"Description";s:75:"Easily create web forms and manage form entries within the WordPress admin.";s:6:"Author";s:12:"rocketgenius";s:9:"AuthorURI";s:27:"http://www.rocketgenius.com";s:10:"TextDomain";s:12:"gravityforms";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:13:"Gravity Forms";s:10:"AuthorName";s:12:"rocketgenius";}s:35:"gravityformsmailchimp/mailchimp.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:30:"Gravity Forms MailChimp Add-On";s:9:"PluginURI";s:27:"http://www.gravityforms.com";s:7:"Version";s:3:"4.2";s:11:"Description";s:117:"Integrates Gravity Forms with MailChimp, allowing form submissions to be automatically sent to your MailChimp account";s:6:"Author";s:12:"rocketgenius";s:9:"AuthorURI";s:27:"http://www.rocketgenius.com";s:10:"TextDomain";s:21:"gravityformsmailchimp";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:30:"Gravity Forms MailChimp Add-On";s:10:"AuthorName";s:12:"rocketgenius";}s:41:"better-wp-security/better-wp-security.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:16:"iThemes Security";s:9:"PluginURI";s:28:"https://ithemes.com/security";s:7:"Version";s:5:"6.7.0";s:11:"Description";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:6:"Author";s:7:"iThemes";s:9:"AuthorURI";s:19:"https://ithemes.com";s:10:"TextDomain";s:18:"better-wp-security";s:10:"DomainPath";s:0:"";s:7:"Network";b:1;s:5:"Title";s:16:"iThemes Security";s:10:"AuthorName";s:7:"iThemes";}s:19:"jetpack/jetpack.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:24:"Jetpack by WordPress.com";s:9:"PluginURI";s:19:"https://jetpack.com";s:7:"Version";s:3:"5.7";s:11:"Description";s:218:"Bring the power of the WordPress.com cloud to your self-hosted WordPress. Jetpack enables you to connect your blog to a WordPress.com account to use the powerful features normally only available to WordPress.com users.";s:6:"Author";s:10:"Automattic";s:9:"AuthorURI";s:19:"https://jetpack.com";s:10:"TextDomain";s:7:"jetpack";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:24:"Jetpack by WordPress.com";s:10:"AuthorName";s:10:"Automattic";}s:57:"object-sync-for-salesforce/object-sync-for-salesforce.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:26:"Object Sync for Salesforce";s:9:"PluginURI";s:0:"";s:7:"Version";s:5:"1.2.1";s:11:"Description";s:101:"WordPress plugin that implements mapping and syncing between Salesforce objects and WordPress objects";s:6:"Author";s:8:"MinnPost";s:9:"AuthorURI";s:24:"http://code.minnpost.com";s:10:"TextDomain";s:26:"object-sync-for-salesforce";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:26:"Object Sync for Salesforce";s:10:"AuthorName";s:8:"MinnPost";}s:38:"post-duplicator/m4c-postduplicator.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:15:"Post Duplicator";s:9:"PluginURI";s:0:"";s:7:"Version";s:4:"2.20";s:11:"Description";s:95:"Creates functionality to duplicate any and all post types, including taxonomies & custom fields";s:6:"Author";s:18:"Metaphor Creations";s:9:"AuthorURI";s:32:"http://www.metaphorcreations.com";s:10:"TextDomain";s:15:"post-duplicator";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:15:"Post Duplicator";s:10:"AuthorName";s:18:"Metaphor Creations";}s:37:"post-types-order/post-types-order.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:16:"Post Types Order";s:9:"PluginURI";s:23:"http://www.nsp-code.com";s:7:"Version";s:7:"1.9.3.5";s:11:"Description";s:93:"Posts Order and Post Types Objects Order using a Drag and Drop Sortable javascript capability";s:6:"Author";s:8:"Nsp Code";s:9:"AuthorURI";s:23:"http://www.nsp-code.com";s:10:"TextDomain";s:16:"post-types-order";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:16:"Post Types Order";s:10:"AuthorName";s:8:"Nsp Code";}s:27:"woocommerce/woocommerce.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:11:"WooCommerce";s:9:"PluginURI";s:24:"https://woocommerce.com/";s:7:"Version";s:5:"3.2.6";s:11:"Description";s:64:"An e-commerce toolkit that helps you sell anything. Beautifully.";s:6:"Author";s:10:"Automattic";s:9:"AuthorURI";s:23:"https://woocommerce.com";s:10:"TextDomain";s:11:"woocommerce";s:10:"DomainPath";s:16:"/i18n/languages/";s:7:"Network";b:0;s:5:"Title";s:11:"WooCommerce";s:10:"AuthorName";s:10:"Automattic";}s:49:"woocommerce-woorei-cpt/woocommerce-woorei-cpt.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:36:"WooCommerce Custom Post Type Manager";s:9:"PluginURI";s:55:"http://reigelgallarde.me/product/woocommerce-woorei-cpt";s:7:"Version";s:5:"3.0.1";s:11:"Description";s:92:"An extension to WooCommerce enabling site owners to add or use Custom Post Types as products";s:6:"Author";s:15:"Reigel Gallarde";s:9:"AuthorURI";s:24:"http://reigelgallarde.me";s:10:"TextDomain";s:22:"woocommerce-woorei-cpt";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:36:"WooCommerce Custom Post Type Manager";s:10:"AuthorName";s:15:"Reigel Gallarde";}s:59:"woocommerce-product-bundles/woocommerce-product-bundles.php";a:14:{s:20:"WC requires at least";s:3:"3.0";s:15:"WC tested up to";s:3:"3.2";s:3:"Woo";s:38:"18716:fbca839929aaddc78797a5b511c14da9";s:4:"Name";s:27:"WooCommerce Product Bundles";s:9:"PluginURI";s:48:"http://woocommerce.com/products/product-bundles/";s:7:"Version";s:5:"5.7.1";s:11:"Description";s:71:"Offer product bundles and assembled products in your WooCommerce store.";s:6:"Author";s:13:"SomewhereWarm";s:9:"AuthorURI";s:24:"http://somewherewarm.gr/";s:10:"TextDomain";s:27:"woocommerce-product-bundles";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:27:"WooCommerce Product Bundles";s:10:"AuthorName";s:13:"SomewhereWarm";}s:45:"woocommerce-services/woocommerce-services.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:20:"WooCommerce Services";s:9:"PluginURI";s:24:"https://woocommerce.com/";s:7:"Version";s:5:"1.9.1";s:11:"Description";s:133:"Hosted services for WooCommerce: automated tax calculation, live shipping rates, shipping label printing, and smoother payment setup.";s:6:"Author";s:10:"Automattic";s:9:"AuthorURI";s:24:"https://woocommerce.com/";s:10:"TextDomain";s:20:"woocommerce-services";s:10:"DomainPath";s:16:"/i18n/languages/";s:7:"Network";b:0;s:5:"Title";s:20:"WooCommerce Services";s:10:"AuthorName";s:10:"Automattic";}s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";a:14:{s:20:"WC requires at least";s:3:"2.5";s:15:"WC tested up to";s:3:"3.1";s:3:"Woo";s:0:"";s:4:"Name";s:26:"WooCommerce Stripe Gateway";s:9:"PluginURI";s:57:"https://wordpress.org/plugins/woocommerce-gateway-stripe/";s:7:"Version";s:5:"3.2.3";s:11:"Description";s:53:"Take credit card payments on your store using Stripe.";s:6:"Author";s:11:"WooCommerce";s:9:"AuthorURI";s:24:"https://woocommerce.com/";s:10:"TextDomain";s:26:"woocommerce-gateway-stripe";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:26:"WooCommerce Stripe Gateway";s:10:"AuthorName";s:11:"WooCommerce";}s:55:"woocommerce-subscriptions/woocommerce-subscriptions.php";a:14:{s:20:"WC requires at least";s:3:"2.5";s:15:"WC tested up to";s:3:"3.2";s:3:"Woo";s:38:"27147:6115e6d7e297b623a169fdcf5728b224";s:4:"Name";s:25:"WooCommerce Subscriptions";s:9:"PluginURI";s:62:"http://www.woocommerce.com/products/woocommerce-subscriptions/";s:7:"Version";s:6:"2.2.16";s:11:"Description";s:77:"Sell products and services with recurring payments in your WooCommerce Store.";s:6:"Author";s:14:"Prospress Inc.";s:9:"AuthorURI";s:21:"http://prospress.com/";s:10:"TextDomain";s:25:"woocommerce-subscriptions";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:25:"WooCommerce Subscriptions";s:10:"AuthorName";s:14:"Prospress Inc.";}s:35:"wpai-acf-add-on/wpai-acf-add-on.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:26:"WP All Import - ACF Add-On";s:9:"PluginURI";s:27:"http://www.wpallimport.com/";s:7:"Version";s:5:"3.1.5";s:11:"Description";s:82:"Import to Advanced Custom Fields. Requires WP All Import & Advanced Custom Fields.";s:6:"Author";s:6:"Soflyy";s:9:"AuthorURI";s:0:"";s:10:"TextDomain";s:15:"wpai-acf-add-on";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:26:"WP All Import - ACF Add-On";s:10:"AuthorName";s:6:"Soflyy";}s:37:"wpai-user-add-on/wpai-user-add-on.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:34:"WP All Import - User Import Add-On";s:9:"PluginURI";s:27:"http://www.wpallimport.com/";s:7:"Version";s:5:"1.0.9";s:11:"Description";s:68:"Import Users & User\'s metadata to WordPress. Requires WP All Import.";s:6:"Author";s:6:"Soflyy";s:9:"AuthorURI";s:0:"";s:10:"TextDomain";s:16:"wpai-user-add-on";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:34:"WP All Import - User Import Add-On";s:10:"AuthorName";s:6:"Soflyy";}s:39:"wp-all-import-pro/wp-all-import-pro.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:17:"WP All Import Pro";s:9:"PluginURI";s:27:"http://www.wpallimport.com/";s:7:"Version";s:5:"4.5.0";s:11:"Description";s:214:"The most powerful solution for importing XML and CSV files to WordPress. Import to Posts, Pages, and Custom Post Types. Support for imports that run on a schedule, ability to update existing imports, and much more.";s:6:"Author";s:6:"Soflyy";s:9:"AuthorURI";s:0:"";s:10:"TextDomain";s:17:"wp-all-import-pro";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:17:"WP All Import Pro";s:10:"AuthorName";s:6:"Soflyy";}s:38:"wp-async-task-master/wp-async-task.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:21:"WP Asynchronous Tasks";s:9:"PluginURI";s:0:"";s:7:"Version";s:3:"1.0";s:11:"Description";s:55:"Creates an abstract class to execute asynchronous tasks";s:6:"Author";s:43:"10up, Eric Mann, Luke Gedeon, John P. Bloch";s:9:"AuthorURI";s:0:"";s:10:"TextDomain";s:20:"wp-async-task-master";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:21:"WP Asynchronous Tasks";s:10:"AuthorName";s:43:"10up, Eric Mann, Luke Gedeon, John P. Bloch";}s:31:"wp-migrate-db/wp-migrate-db.php";a:14:{s:20:"WC requires at least";s:0:"";s:15:"WC tested up to";s:0:"";s:3:"Woo";s:0:"";s:4:"Name";s:13:"WP Migrate DB";s:9:"PluginURI";s:44:"https://wordpress.org/plugins/wp-migrate-db/";s:7:"Version";s:5:"1.0.2";s:11:"Description";s:159:"Exports your database as a MySQL data dump (much like phpMyAdmin), does a find and replace on URLs and file paths, then allows you to save it to your computer.";s:6:"Author";s:16:"Delicious Brains";s:9:"AuthorURI";s:27:"https://deliciousbrains.com";s:10:"TextDomain";s:13:"wp-migrate-db";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:1;s:5:"Title";s:13:"WP Migrate DB";s:10:"AuthorName";s:16:"Delicious Brains";}}}i:2;i:1;i:3;d:1515364356.33288;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(852, 'jpsq_sync-1515364356.336267-154809-47', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:24:"get_plugins_action_links";i:1;a:0:{}}i:2;i:1;i:3;d:1515364356.3361599;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(853, 'jpsq_sync-1515364356.337341-154809-48', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:14:"active_modules";i:1;a:0:{}}i:2;i:1;i:3;d:1515364356.337245;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(854, 'jpsq_sync-1515364356.339325-154809-49', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:16:"hosting_provider";i:1;s:7:"unknown";}i:2;i:1;i:3;d:1515364356.3392091;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(855, 'jpsq_sync-1515364356.340367-154809-50', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:6:"locale";i:1;s:5:"en_US";}i:2;i:1;i:3;d:1515364356.3402679;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(856, 'jpsq_sync-1515364356.341276-154809-51', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:13:"site_icon_url";i:1;b:0;}i:2;i:1;i:3;d:1515364356.341182;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(857, 'jpsq_sync-1515364356.342290-154809-52', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:5:"roles";i:1;a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:20:"configure_salesforce";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}}i:2;i:1;i:3;d:1515364356.342185;i:4;b:0;i:5;a:13:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:3:"dev";s:10:"user_email";s:15:"nic@workshop.co";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:2:"ip";s:10:"172.22.0.1";s:11:"is_wp_admin";b:1;}}', 'no'),
(858, 'jetpack_callables_sync_checksum', 'a:29:{s:18:"wp_max_upload_size";i:677931734;s:15:"is_main_network";i:734881840;s:13:"is_multi_site";i:734881840;s:17:"main_network_site";i:3167860578;s:8:"site_url";i:3167860578;s:8:"home_url";i:3167860578;s:16:"single_user_site";i:4261170317;s:7:"updates";i:3425443202;s:28:"has_file_system_write_access";i:4261170317;s:21:"is_version_controlled";i:734881840;s:10:"taxonomies";i:2170770825;s:10:"post_types";i:1788713572;s:18:"post_type_features";i:51648743;s:10:"shortcodes";i:583320383;s:27:"rest_api_allowed_post_types";i:4281438522;s:32:"rest_api_allowed_public_metadata";i:223132457;s:24:"sso_is_two_step_required";i:734881840;s:26:"sso_should_hide_login_form";i:734881840;s:18:"sso_match_by_email";i:4261170317;s:21:"sso_new_user_override";i:734881840;s:29:"sso_bypass_default_login_form";i:734881840;s:10:"wp_version";i:2291775874;s:11:"get_plugins";i:3349613678;s:24:"get_plugins_action_links";i:223132457;s:14:"active_modules";i:223132457;s:16:"hosting_provider";i:769900095;s:6:"locale";i:110763218;s:13:"site_icon_url";i:734881840;s:5:"roles";i:4074652089;}', 'no'),
(859, 'jpsq_sync_checkout', '0:0', 'no'),
(862, 'jetpack_next_sync_time_sync', '1515364416', 'yes'),
(863, 'jetpack_next_sync_time_full-sync-enqueue', '1515364366', 'yes'),
(908, 'WPLANG', '', 'yes'),
(909, 'new_admin_email', 'nic@workshop.co', 'yes'),
(910, 'cdn_url', 'https://d237fwl7ywcsli.cloudfront.net', 'yes'),
(931, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1516215493;}', 'no'),
(943, 'kinsta-cache-settings', 'a:2:{s:7:"version";s:3:"2.0";s:7:"options";a:1:{s:16:"additional_paths";a:2:{s:5:"group";a:0:{}s:6:"single";a:0:{}}}}', 'yes'),
(968, 'wcs_ignore_duplicate_siteurl_notice', 'http://staging-newpor_[wc_subscriptions_siteurl]_tartmuseum.kinsta.com', 'yes'),
(1036, 'acf_to_rest_api_request_version', '3', 'yes'),
(1037, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(1137, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:15:"nic@workshop.co";s:7:"version";s:5:"4.9.2";s:9:"timestamp";i:1516215148;}', 'no'),
(1143, 'active_plugins', 'a:15:{i:0;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:2;s:29:"gravityforms/gravityforms.php";i:3;s:51:"acf-gravityforms-add-on/acf-gravityforms-add-on.php";i:4;s:41:"acf-to-rest-api/class-acf-to-rest-api.php";i:5;s:34:"advanced-custom-fields-pro/acf.php";i:6;s:49:"ajax-thumbnail-rebuild/ajax-thumbnail-rebuild.php";i:7;s:35:"gravityformsmailchimp/mailchimp.php";i:8;s:57:"object-sync-for-salesforce/object-sync-for-salesforce.php";i:9;s:38:"post-duplicator/m4c-postduplicator.php";i:10;s:37:"post-types-order/post-types-order.php";i:11;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:12;s:55:"woocommerce-subscriptions/woocommerce-subscriptions.php";i:13;s:49:"woocommerce-woorei-cpt/woocommerce-woorei-cpt.php";i:14;s:27:"woocommerce/woocommerce.php";i:15;s:38:"wp-async-task-master/wp-async-task.php";}', 'yes'),
(1144, 'upload_path', '', 'yes'),
(1145, 'upload_url_path', '', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_files`
#

DROP TABLE IF EXISTS `wp_pmxi_files`;


#
# Table structure of table `wp_pmxi_files`
#

CREATE TABLE `wp_pmxi_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_pmxi_files`
#

#
# End of data contents of table `wp_pmxi_files`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_history`
#

DROP TABLE IF EXISTS `wp_pmxi_history`;


#
# Table structure of table `wp_pmxi_history`
#

CREATE TABLE `wp_pmxi_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `type` enum('manual','processing','trigger','continue','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_run` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_pmxi_history`
#

#
# End of data contents of table `wp_pmxi_history`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_imports`
#

DROP TABLE IF EXISTS `wp_pmxi_imports`;


#
# Table structure of table `wp_pmxi_imports`
#

CREATE TABLE `wp_pmxi_imports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_import_id` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feed_type` enum('xml','csv','zip','gz','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xpath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `root_element` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `processing` tinyint(1) NOT NULL DEFAULT 0,
  `executing` tinyint(1) NOT NULL DEFAULT 0,
  `triggered` tinyint(1) NOT NULL DEFAULT 0,
  `queue_chunk_number` bigint(20) NOT NULL DEFAULT 0,
  `first_import` timestamp NOT NULL DEFAULT current_timestamp(),
  `count` bigint(20) NOT NULL DEFAULT 0,
  `imported` bigint(20) NOT NULL DEFAULT 0,
  `created` bigint(20) NOT NULL DEFAULT 0,
  `updated` bigint(20) NOT NULL DEFAULT 0,
  `skipped` bigint(20) NOT NULL DEFAULT 0,
  `deleted` bigint(20) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed` tinyint(1) NOT NULL DEFAULT 0,
  `failed_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iteration` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_pmxi_imports`
#

#
# End of data contents of table `wp_pmxi_imports`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_posts`
#

DROP TABLE IF EXISTS `wp_pmxi_posts`;


#
# Table structure of table `wp_pmxi_posts`
#

CREATE TABLE `wp_pmxi_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `import_id` bigint(20) unsigned NOT NULL,
  `unique_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iteration` bigint(20) NOT NULL DEFAULT 0,
  `specified` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_pmxi_posts`
#

#
# End of data contents of table `wp_pmxi_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_pmxi_templates`
#

DROP TABLE IF EXISTS `wp_pmxi_templates`;


#
# Table structure of table `wp_pmxi_templates`
#

CREATE TABLE `wp_pmxi_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_keep_linebreaks` tinyint(1) NOT NULL DEFAULT 0,
  `is_leave_html` tinyint(1) NOT NULL DEFAULT 0,
  `fix_characters` tinyint(1) NOT NULL DEFAULT 0,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_pmxi_templates`
#

#
# End of data contents of table `wp_pmxi_templates`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(38, 21, '_wc_review_count', '0'),
(39, 21, '_wc_rating_count', 'a:0:{}'),
(40, 21, '_wc_average_rating', '0'),
(41, 2, '_wp_trash_meta_status', 'publish'),
(42, 2, '_wp_trash_meta_time', '1516041874'),
(43, 2, '_wp_desired_post_slug', 'sample-page'),
(44, 23, '_edit_last', '1'),
(45, 23, '_edit_lock', '1516041829:1'),
(46, 26, '_edit_lock', '1516041984:1'),
(47, 26, '_edit_last', '1'),
(48, 28, '_edit_lock', '1516041998:1'),
(49, 28, '_edit_last', '1'),
(50, 30, '_edit_lock', '1516042070:1'),
(51, 30, '_edit_last', '1'),
(52, 32, '_edit_lock', '1516042089:1'),
(53, 32, '_edit_last', '1'),
(54, 34, '_edit_lock', '1516042117:1'),
(55, 34, '_edit_last', '1'),
(56, 36, '_edit_lock', '1516042129:1'),
(57, 36, '_edit_last', '1'),
(58, 38, '_edit_lock', '1516042183:1'),
(59, 38, '_edit_last', '1'),
(60, 40, '_edit_last', '1'),
(61, 40, '_edit_lock', '1516042193:1'),
(62, 42, '_edit_last', '1'),
(63, 42, '_edit_lock', '1516042206:1'),
(64, 44, '_edit_lock', '1516042248:1'),
(65, 44, '_edit_last', '1'),
(66, 46, '_edit_lock', '1516042256:1'),
(67, 46, '_edit_last', '1'),
(68, 48, '_edit_lock', '1516042265:1'),
(69, 48, '_edit_last', '1'),
(70, 50, '_edit_lock', '1516042312:1'),
(71, 50, '_edit_last', '1'),
(72, 52, '_edit_lock', '1516042326:1'),
(73, 52, '_edit_last', '1'),
(74, 54, '_edit_lock', '1516042348:1'),
(75, 54, '_edit_last', '1'),
(76, 56, '_edit_lock', '1516042377:1'),
(77, 56, '_edit_last', '1'),
(78, 58, '_edit_lock', '1516042404:1'),
(79, 58, '_edit_last', '1'),
(80, 60, '_edit_lock', '1516042481:1'),
(81, 60, '_edit_last', '1'),
(82, 62, '_edit_lock', '1516042492:1'),
(83, 62, '_edit_last', '1'),
(84, 64, '_edit_last', '1'),
(85, 64, '_edit_lock', '1516042649:1'),
(86, 66, '_edit_last', '1'),
(87, 66, '_edit_lock', '1516042658:1'),
(88, 68, '_edit_lock', '1516042669:1'),
(89, 68, '_edit_last', '1'),
(90, 70, '_edit_last', '1'),
(91, 70, '_edit_lock', '1516045286:1'),
(92, 6, '_edit_lock', '1516042711:1'),
(93, 72, '_edit_last', '1'),
(94, 72, '_edit_lock', '1516042725:1'),
(95, 74, '_edit_last', '1'),
(96, 74, '_edit_lock', '1516042733:1'),
(97, 76, '_edit_last', '1'),
(98, 76, '_edit_lock', '1516042739:1'),
(99, 78, '_edit_lock', '1516042751:1'),
(100, 78, '_edit_last', '1'),
(101, 80, '_edit_lock', '1516042763:1'),
(102, 80, '_edit_last', '1'),
(103, 82, '_edit_lock', '1516042781:1'),
(104, 82, '_edit_last', '1'),
(105, 84, '_edit_lock', '1516042796:1'),
(106, 84, '_edit_last', '1'),
(107, 86, '_edit_lock', '1516042813:1'),
(108, 86, '_edit_last', '1'),
(109, 88, '_edit_lock', '1516045140:1'),
(110, 88, '_edit_last', '1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-06 20:48:39', '2018-01-06 20:48:39', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-01-06 20:48:39', '2018-01-06 20:48:39', '', 0, 'http://staging-newportartmuseum.kinsta.com/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-06 20:48:39', '2018-01-06 20:48:39', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://staging-newportartmuseum.kinsta.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-01-15 18:44:34', '2018-01-15 18:44:34', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-01-06 21:41:45', '2018-01-06 21:41:45', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-01-06 21:41:45', '2018-01-06 21:41:45', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-01-06 21:41:45', '2018-01-06 21:41:45', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-01-06 21:41:45', '2018-01-06 21:41:45', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-01-06 21:41:45', '2018-01-06 21:41:45', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-01-06 21:41:45', '2018-01-06 21:41:45', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-01-06 21:41:45', '2018-01-06 21:41:45', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-01-06 21:41:45', '2018-01-06 21:41:45', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=7', 0, 'page', '', 0),
(21, 1, '2018-01-15 18:41:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-15 18:41:48', '0000-00-00 00:00:00', '', 0, 'http://staging-newportartmuseum.kinsta.com/?post_type=events&p=21', 0, 'events', '', 0),
(22, 1, '2018-01-15 18:44:34', '2018-01-15 18:44:34', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://staging-newportartmuseum.kinsta.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-15 18:44:34', '2018-01-15 18:44:34', '', 2, 'http://staging-newportartmuseum.kinsta.com/?p=22', 0, 'revision', '', 0),
(23, 1, '2018-01-15 18:44:43', '2018-01-15 18:44:43', '', 'Visit', '', 'publish', 'closed', 'closed', '', 'visit', '', '', '2018-01-15 18:44:43', '2018-01-15 18:44:43', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-01-15 18:44:43', '2018-01-15 18:44:43', '', 'Visit', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-01-15 18:44:43', '2018-01-15 18:44:43', '', 23, 'http://staging-newportartmuseum.kinsta.com/?p=24', 0, 'revision', '', 0),
(25, 1, '2018-01-15 18:45:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-15 18:45:25', '0000-00-00 00:00:00', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-01-15 18:47:39', '2018-01-15 18:47:39', '', 'Hours & Information', '', 'publish', 'closed', 'closed', '', 'hours', '', '', '2018-01-15 18:48:04', '2018-01-15 18:48:04', '', 23, 'http://staging-newportartmuseum.kinsta.com/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-01-15 18:47:39', '2018-01-15 18:47:39', '', 'Hours & Information', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-15 18:47:39', '2018-01-15 18:47:39', '', 26, 'http://staging-newportartmuseum.kinsta.com/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-01-15 18:48:59', '2018-01-15 18:48:59', '', 'Getting Here', '', 'publish', 'closed', 'closed', '', 'getting-here', '', '', '2018-01-15 18:48:59', '2018-01-15 18:48:59', '', 23, 'http://staging-newportartmuseum.kinsta.com/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-01-15 18:48:59', '2018-01-15 18:48:59', '', 'Getting Here', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-01-15 18:48:59', '2018-01-15 18:48:59', '', 28, 'http://staging-newportartmuseum.kinsta.com/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-01-15 18:50:10', '2018-01-15 18:50:10', '', 'Tours', '', 'publish', 'closed', 'closed', '', 'tours', '', '', '2018-01-15 18:50:10', '2018-01-15 18:50:10', '', 23, 'http://staging-newportartmuseum.kinsta.com/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-01-15 18:50:10', '2018-01-15 18:50:10', '', 'Tours', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-01-15 18:50:10', '2018-01-15 18:50:10', '', 30, 'http://staging-newportartmuseum.kinsta.com/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-01-15 18:50:31', '2018-01-15 18:50:31', '', 'Nearby Attractions', '', 'publish', 'closed', 'closed', '', 'nearby-attractions', '', '', '2018-01-15 18:50:31', '2018-01-15 18:50:31', '', 23, 'http://staging-newportartmuseum.kinsta.com/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-01-15 18:50:31', '2018-01-15 18:50:31', '', 'Nearby Attractions', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-01-15 18:50:31', '2018-01-15 18:50:31', '', 32, 'http://staging-newportartmuseum.kinsta.com/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-01-15 18:50:54', '2018-01-15 18:50:54', '', 'Facility Rental', '', 'publish', 'closed', 'closed', '', 'facility-rental', '', '', '2018-01-15 18:50:54', '2018-01-15 18:50:54', '', 23, 'http://staging-newportartmuseum.kinsta.com/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-01-15 18:50:54', '2018-01-15 18:50:54', '', 'Facility Rental', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-01-15 18:50:54', '2018-01-15 18:50:54', '', 34, 'http://staging-newportartmuseum.kinsta.com/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-01-15 18:51:09', '2018-01-15 18:51:09', '', 'Campus Map', '', 'publish', 'closed', 'closed', '', 'campus-map', '', '', '2018-01-15 18:51:09', '2018-01-15 18:51:09', '', 23, 'http://staging-newportartmuseum.kinsta.com/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-01-15 18:51:09', '2018-01-15 18:51:09', '', 'Campus Map', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-01-15 18:51:09', '2018-01-15 18:51:09', '', 36, 'http://staging-newportartmuseum.kinsta.com/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-01-15 18:51:47', '2018-01-15 18:51:47', '', 'Language of Art Tour', '', 'publish', 'closed', 'closed', '', 'language-of-art', '', '', '2018-01-15 18:51:58', '2018-01-15 18:51:58', '', 30, 'http://staging-newportartmuseum.kinsta.com/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-01-15 18:51:47', '2018-01-15 18:51:47', '', 'Language of Art Tour', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-01-15 18:51:47', '2018-01-15 18:51:47', '', 38, 'http://staging-newportartmuseum.kinsta.com/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-01-15 18:52:15', '2018-01-15 18:52:15', '', 'Exhibitions', '', 'publish', 'closed', 'closed', '', 'exhibitions', '', '', '2018-01-15 18:52:15', '2018-01-15 18:52:15', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-01-15 18:52:15', '2018-01-15 18:52:15', '', 'Exhibitions', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-01-15 18:52:15', '2018-01-15 18:52:15', '', 40, 'http://staging-newportartmuseum.kinsta.com/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-01-15 18:52:27', '2018-01-15 18:52:27', '', 'Collection', '', 'publish', 'closed', 'closed', '', 'collection', '', '', '2018-01-15 18:52:27', '2018-01-15 18:52:27', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-01-15 18:52:27', '2018-01-15 18:52:27', '', 'Collection', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-01-15 18:52:27', '2018-01-15 18:52:27', '', 42, 'http://staging-newportartmuseum.kinsta.com/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-01-15 18:52:52', '2018-01-15 18:52:52', '', 'Permanent Collection', '', 'publish', 'closed', 'closed', '', 'permanent-collection', '', '', '2018-01-15 18:52:52', '2018-01-15 18:52:52', '', 42, 'http://staging-newportartmuseum.kinsta.com/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-01-15 18:52:52', '2018-01-15 18:52:52', '', 'Permanent Collection', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-01-15 18:52:52', '2018-01-15 18:52:52', '', 44, 'http://staging-newportartmuseum.kinsta.com/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-01-15 18:53:18', '2018-01-15 18:53:18', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-01-15 18:53:18', '2018-01-15 18:53:18', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-01-15 18:53:18', '2018-01-15 18:53:18', '', 'About', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-01-15 18:53:18', '2018-01-15 18:53:18', '', 46, 'http://staging-newportartmuseum.kinsta.com/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-01-15 18:53:27', '2018-01-15 18:53:27', '', 'Staff', '', 'publish', 'closed', 'closed', '', 'staff', '', '', '2018-01-15 18:53:27', '2018-01-15 18:53:27', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=48', 0, 'page', '', 0),
(49, 1, '2018-01-15 18:53:27', '2018-01-15 18:53:27', '', 'Staff', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-01-15 18:53:27', '2018-01-15 18:53:27', '', 48, 'http://staging-newportartmuseum.kinsta.com/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-01-15 18:53:39', '2018-01-15 18:53:39', '', 'Board', '', 'publish', 'closed', 'closed', '', 'board', '', '', '2018-01-15 18:53:39', '2018-01-15 18:53:39', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=50', 0, 'page', '', 0),
(51, 1, '2018-01-15 18:53:39', '2018-01-15 18:53:39', '', 'Board', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-01-15 18:53:39', '2018-01-15 18:53:39', '', 50, 'http://staging-newportartmuseum.kinsta.com/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-01-15 18:54:28', '2018-01-15 18:54:28', '', 'History', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2018-01-15 18:54:28', '2018-01-15 18:54:28', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=52', 0, 'page', '', 0),
(53, 1, '2018-01-15 18:54:28', '2018-01-15 18:54:28', '', 'History', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-01-15 18:54:28', '2018-01-15 18:54:28', '', 52, 'http://staging-newportartmuseum.kinsta.com/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-01-15 18:54:49', '2018-01-15 18:54:49', '', 'Campus', '', 'publish', 'closed', 'closed', '', 'campus', '', '', '2018-01-15 18:54:49', '2018-01-15 18:54:49', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-01-15 18:54:49', '2018-01-15 18:54:49', '', 'Campus', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-01-15 18:54:49', '2018-01-15 18:54:49', '', 54, 'http://staging-newportartmuseum.kinsta.com/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-01-15 18:55:10', '2018-01-15 18:55:10', '', 'Careers & Internships', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2018-01-15 18:55:19', '2018-01-15 18:55:19', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-01-15 18:55:10', '2018-01-15 18:55:10', '', 'Careers & Internships', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-01-15 18:55:10', '2018-01-15 18:55:10', '', 56, 'http://staging-newportartmuseum.kinsta.com/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-01-15 18:55:43', '2018-01-15 18:55:43', '', 'Volunteering', '', 'publish', 'closed', 'closed', '', 'volunteer', '', '', '2018-01-15 18:55:43', '2018-01-15 18:55:43', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-01-15 18:55:43', '2018-01-15 18:55:43', '', 'Volunteering', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-01-15 18:55:43', '2018-01-15 18:55:43', '', 58, 'http://staging-newportartmuseum.kinsta.com/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-01-15 18:56:58', '2018-01-15 18:56:58', '', 'Sponsorship and Partnership', '', 'publish', 'closed', 'closed', '', 'sponsorship-and-partnership', '', '', '2018-01-15 18:56:58', '2018-01-15 18:56:58', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-01-15 18:56:58', '2018-01-15 18:56:58', '', 'Sponsorship and Partnership', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-01-15 18:56:58', '2018-01-15 18:56:58', '', 60, 'http://staging-newportartmuseum.kinsta.com/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-01-15 18:57:11', '2018-01-15 18:57:11', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-01-15 18:57:11', '2018-01-15 18:57:11', '', 46, 'http://staging-newportartmuseum.kinsta.com/?page_id=62', 0, 'page', '', 0),
(63, 1, '2018-01-15 18:57:11', '2018-01-15 18:57:11', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-01-15 18:57:11', '2018-01-15 18:57:11', '', 62, 'http://staging-newportartmuseum.kinsta.com/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-01-15 18:57:28', '2018-01-15 18:57:28', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-01-15 18:57:28', '2018-01-15 18:57:28', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-01-15 18:57:28', '2018-01-15 18:57:28', '', 'News', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-01-15 18:57:28', '2018-01-15 18:57:28', '', 64, 'http://staging-newportartmuseum.kinsta.com/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-01-15 18:59:59', '2018-01-15 18:59:59', '', 'Support', '', 'publish', 'closed', 'closed', '', 'support', '', '', '2018-01-15 18:59:59', '2018-01-15 18:59:59', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-01-15 18:59:59', '2018-01-15 18:59:59', '', 'Support', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-01-15 18:59:59', '2018-01-15 18:59:59', '', 66, 'http://staging-newportartmuseum.kinsta.com/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-01-15 19:00:09', '2018-01-15 19:00:09', '', 'Donate', '', 'publish', 'closed', 'closed', '', 'donate', '', '', '2018-01-15 19:00:09', '2018-01-15 19:00:09', '', 66, 'http://staging-newportartmuseum.kinsta.com/?page_id=68', 0, 'page', '', 0),
(69, 1, '2018-01-15 19:00:09', '2018-01-15 19:00:09', '', 'Donate', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-01-15 19:00:09', '2018-01-15 19:00:09', '', 68, 'http://staging-newportartmuseum.kinsta.com/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-01-15 19:00:18', '2018-01-15 19:00:18', '', 'Join', '', 'publish', 'closed', 'closed', '', 'join', '', '', '2018-01-15 19:00:18', '2018-01-15 19:00:18', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=70', 0, 'page', '', 0),
(71, 1, '2018-01-15 19:00:18', '2018-01-15 19:00:18', '', 'Join', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-01-15 19:00:18', '2018-01-15 19:00:18', '', 70, 'http://staging-newportartmuseum.kinsta.com/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-01-15 19:01:05', '2018-01-15 19:01:05', '', 'Help', '', 'publish', 'closed', 'closed', '', 'help', '', '', '2018-01-15 19:01:05', '2018-01-15 19:01:05', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=72', 0, 'page', '', 0),
(73, 1, '2018-01-15 19:01:05', '2018-01-15 19:01:05', '', 'Help', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-01-15 19:01:05', '2018-01-15 19:01:05', '', 72, 'http://staging-newportartmuseum.kinsta.com/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-01-15 19:01:13', '2018-01-15 19:01:13', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-01-15 19:01:13', '2018-01-15 19:01:13', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-01-15 19:01:13', '2018-01-15 19:01:13', '', 'Events', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-01-15 19:01:13', '2018-01-15 19:01:13', '', 74, 'http://staging-newportartmuseum.kinsta.com/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-01-15 19:01:21', '2018-01-15 19:01:21', '', 'Education', '', 'publish', 'closed', 'closed', '', 'education', '', '', '2018-01-15 19:01:21', '2018-01-15 19:01:21', '', 0, 'http://staging-newportartmuseum.kinsta.com/?page_id=76', 0, 'page', '', 0),
(77, 1, '2018-01-15 19:01:21', '2018-01-15 19:01:21', '', 'Education', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-01-15 19:01:21', '2018-01-15 19:01:21', '', 76, 'http://staging-newportartmuseum.kinsta.com/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-01-15 19:01:30', '2018-01-15 19:01:30', '', 'Classes', '', 'publish', 'closed', 'closed', '', 'classes', '', '', '2018-01-15 19:01:30', '2018-01-15 19:01:30', '', 76, 'http://staging-newportartmuseum.kinsta.com/?page_id=78', 0, 'page', '', 0),
(79, 1, '2018-01-15 19:01:30', '2018-01-15 19:01:30', '', 'Classes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-01-15 19:01:30', '2018-01-15 19:01:30', '', 78, 'http://staging-newportartmuseum.kinsta.com/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-01-15 19:01:44', '2018-01-15 19:01:44', '', 'MuSE', '', 'publish', 'closed', 'closed', '', 'muse', '', '', '2018-01-15 19:01:44', '2018-01-15 19:01:44', '', 76, 'http://staging-newportartmuseum.kinsta.com/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-01-15 19:01:44', '2018-01-15 19:01:44', '', 'MuSE', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-01-15 19:01:44', '2018-01-15 19:01:44', '', 80, 'http://staging-newportartmuseum.kinsta.com/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-01-15 19:02:02', '2018-01-15 19:02:02', '', 'Education Information', '', 'publish', 'closed', 'closed', '', 'information', '', '', '2018-01-15 19:02:02', '2018-01-15 19:02:02', '', 76, 'http://staging-newportartmuseum.kinsta.com/?page_id=82', 0, 'page', '', 0),
(83, 1, '2018-01-15 19:02:02', '2018-01-15 19:02:02', '', 'Education Information', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-01-15 19:02:02', '2018-01-15 19:02:02', '', 82, 'http://staging-newportartmuseum.kinsta.com/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-01-15 19:02:18', '2018-01-15 19:02:18', '', 'Teacher Resources', '', 'publish', 'closed', 'closed', '', 'teacher-resources', '', '', '2018-01-15 19:02:18', '2018-01-15 19:02:18', '', 76, 'http://staging-newportartmuseum.kinsta.com/?page_id=84', 0, 'page', '', 0),
(85, 1, '2018-01-15 19:02:18', '2018-01-15 19:02:18', '', 'Teacher Resources', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-01-15 19:02:18', '2018-01-15 19:02:18', '', 84, 'http://staging-newportartmuseum.kinsta.com/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-01-15 19:02:33', '2018-01-15 19:02:33', '', 'Education Policies', '', 'publish', 'closed', 'closed', '', 'policies', '', '', '2018-01-15 19:02:33', '2018-01-15 19:02:33', '', 76, 'http://staging-newportartmuseum.kinsta.com/?page_id=86', 0, 'page', '', 0),
(87, 1, '2018-01-15 19:02:33', '2018-01-15 19:02:33', '', 'Education Policies', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-01-15 19:02:33', '2018-01-15 19:02:33', '', 86, 'http://staging-newportartmuseum.kinsta.com/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-01-15 19:02:46', '2018-01-15 19:02:46', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-01-15 19:02:46', '2018-01-15 19:02:46', '', 76, 'http://staging-newportartmuseum.kinsta.com/?page_id=88', 0, 'page', '', 0),
(89, 1, '2018-01-15 19:02:46', '2018-01-15 19:02:46', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-01-15 19:02:46', '2018-01-15 19:02:46', '', 88, 'http://staging-newportartmuseum.kinsta.com/88-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_trash` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form`
#

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form_meta`
#

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form_view`
#

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;


#
# Table structure of table `wp_rg_incomplete_submissions`
#

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead`
#

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail`
#

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_meta`
#

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'wp_log_type', '', 0, 0),
(16, 16, 'wp_log_type', '', 0, 0),
(17, 17, 'product_type', '', 0, 0),
(18, 18, 'product_type', '', 0, 0),
(19, 19, 'product_type', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'error', 'error', 0),
(16, 'event', 'event', 0),
(17, 'bundle', 'bundle', 0),
(18, 'subscription', 'subscription', 0),
(19, 'Variable Subscription', 'variable-subscription', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'dev'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:3:{s:64:"4bc336963b04a0f08b7829569b9a830563a14675037afb9c62cf1411d8224918";a:4:{s:10:"expiration";i:1516312735;s:2:"ip";s:12:"72.92.233.97";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1516139935;}s:64:"ab78595fcc8b032d49c97c8468513a2fd0a41f3b687f1779cc07c8dd4d95617b";a:4:{s:10:"expiration";i:1516387949;s:2:"ip";s:12:"72.92.233.97";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1516215149;}s:64:"302d3b05e5aeecff4672c982ef7dbcd84481be890f68d6c55e00ef24053cdd02";a:4:{s:10:"expiration";i:1516388274;s:2:"ip";s:10:"172.22.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1516215474;}}'),
(16, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&hidetb=1'),
(17, 1, 'wp_user-settings-time', '1515271722'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(19, 1, 'community-events-location', 'a:1:{s:2:"ip";s:11:"72.92.233.0";}'),
(20, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:18:"dashboard_activity";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 1, 'jetpack_tracks_anon_id', 'jetpack:ROyIN0nUDbi13PcaO9MpfXOM'),
(23, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(25, 1, 'tgmpa_dismissed_notice_woocommerce', '1'),
(26, 1, 'billing_first_name', ''),
(27, 1, 'billing_last_name', ''),
(28, 1, 'billing_company', ''),
(29, 1, 'billing_address_1', ''),
(30, 1, 'billing_address_2', ''),
(31, 1, 'billing_city', ''),
(32, 1, 'billing_postcode', ''),
(33, 1, 'billing_country', ''),
(34, 1, 'billing_state', ''),
(35, 1, 'billing_phone', ''),
(36, 1, 'billing_email', 'nic@workshop.co'),
(37, 1, 'shipping_first_name', ''),
(38, 1, 'shipping_last_name', ''),
(39, 1, 'shipping_company', ''),
(40, 1, 'shipping_address_1', ''),
(41, 1, 'shipping_address_2', ''),
(42, 1, 'shipping_city', ''),
(43, 1, 'shipping_postcode', ''),
(44, 1, 'shipping_country', ''),
(45, 1, 'shipping_state', ''),
(46, 1, 'syntax_highlighting', 'true'),
(47, 1, 'last_update', '1515361456'),
(48, 1, 'meta-box-order_shop-products', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:58:"submitdiv,groupdiv,postimagediv,woocommerce-product-images";s:6:"normal";s:44:"woocommerce-product-data,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(49, 1, 'screen_layout_shop-products', '2'),
(50, 1, 'closedpostboxes_events', 'a:0:{}'),
(51, 1, 'metaboxhidden_events', 'a:1:{i:0;s:7:"slugdiv";}'),
(52, 2, 'nickname', 'manager'),
(53, 2, 'first_name', 'Mrs.'),
(54, 2, 'last_name', 'Manager'),
(55, 2, 'description', ''),
(56, 2, 'rich_editing', 'true'),
(57, 2, 'syntax_highlighting', 'true'),
(58, 2, 'comment_shortcuts', 'false'),
(59, 2, 'admin_color', 'fresh'),
(60, 2, 'use_ssl', '0'),
(61, 2, 'show_admin_bar_front', 'true'),
(62, 2, 'locale', ''),
(63, 2, 'wp_capabilities', 'a:1:{s:12:"shop_manager";b:1;}'),
(64, 2, 'wp_user_level', '9'),
(65, 2, 'dismissed_wp_pointers', ''),
(67, 2, 'wp_dashboard_quick_press_last_post_id', '16'),
(68, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(69, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(70, 2, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.22.0.0";}'),
(71, 2, 'tgmpa_dismissed_notice_woocommerce', '1'),
(72, 2, 'billing_first_name', 'Mrs.'),
(73, 2, 'billing_last_name', 'Manager'),
(74, 2, 'billing_company', ''),
(75, 2, 'billing_address_1', ''),
(76, 2, 'billing_address_2', ''),
(77, 2, 'billing_city', ''),
(78, 2, 'billing_postcode', ''),
(79, 2, 'billing_country', ''),
(80, 2, 'billing_state', ''),
(81, 2, 'billing_phone', ''),
(82, 2, 'billing_email', 'info@workshop.co'),
(83, 2, 'shipping_first_name', ''),
(84, 2, 'shipping_last_name', ''),
(85, 2, 'shipping_company', ''),
(86, 2, 'shipping_address_1', ''),
(87, 2, 'shipping_address_2', ''),
(88, 2, 'shipping_city', ''),
(89, 2, 'shipping_postcode', ''),
(90, 2, 'shipping_country', ''),
(91, 2, 'shipping_state', ''),
(92, 2, 'last_update', '1515366882'),
(93, 2, 'session_tokens', 'a:1:{s:64:"9d9dd5beeaf8f70a4332a4caa3c2c3d8fa8bac654338cd1f69bdbe38432592b4";a:4:{s:10:"expiration";i:1515539699;s:2:"ip";s:10:"172.22.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1515366899;}}'),
(94, 1, 'meta-box-order_donation-tiers', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:45:"submitdiv,groupdiv,woocommerce-product-images";s:6:"normal";s:44:"slugdiv,woocommerce-product-data,postexcerpt";s:8:"advanced";s:0:"";}'),
(95, 1, 'screen_layout_donation-tiers', '2'),
(96, 1, 'meta-box-order_product', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:84:"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images";s:6:"normal";s:44:"woocommerce-product-data,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(97, 1, 'screen_layout_product', '2') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'dev', '$P$BxXW8Dk7rHYD89VIDyMgv.wIhbVA62.', 'dev', 'nic@workshop.co', '', '2018-01-06 20:48:39', '', 0, 'dev'),
(2, 'manager', '$P$BZyjyVcxjycRVtdEjf24qsH2vRMkLG.', 'manager', 'info@workshop.co', '', '2018-01-07 22:50:07', '', 0, 'Mrs. Manager') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;


#
# Table structure of table `wp_woocommerce_api_keys`
#

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_api_keys`
#

#
# End of data contents of table `wp_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wp_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `wp_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_bundled_itemmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_bundled_itemmeta`;


#
# Table structure of table `wp_woocommerce_bundled_itemmeta`
#

CREATE TABLE `wp_woocommerce_bundled_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bundled_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `bundled_item_id` (`bundled_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_bundled_itemmeta`
#

#
# End of data contents of table `wp_woocommerce_bundled_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_bundled_items`
#

DROP TABLE IF EXISTS `wp_woocommerce_bundled_items`;


#
# Table structure of table `wp_woocommerce_bundled_items`
#

CREATE TABLE `wp_woocommerce_bundled_items` (
  `bundled_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `bundle_id` bigint(20) unsigned NOT NULL,
  `menu_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`bundled_item_id`),
  KEY `product_id` (`product_id`),
  KEY `bundle_id` (`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_bundled_items`
#

#
# End of data contents of table `wp_woocommerce_bundled_items`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wp_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wp_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_log`
#

DROP TABLE IF EXISTS `wp_woocommerce_log`;


#
# Table structure of table `wp_woocommerce_log`
#

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_log`
#

#
# End of data contents of table `wp_woocommerce_log`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;


#
# Table structure of table `wp_woocommerce_order_itemmeta`
#

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_itemmeta`
#

#
# End of data contents of table `wp_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;


#
# Table structure of table `wp_woocommerce_order_items`
#

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#

#
# End of data contents of table `wp_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_payment_tokenmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;


#
# Table structure of table `wp_woocommerce_payment_tokenmeta`
#

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_payment_tokenmeta`
#

#
# End of data contents of table `wp_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_payment_tokens`
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;


#
# Table structure of table `wp_woocommerce_payment_tokens`
#

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_payment_tokens`
#

#
# End of data contents of table `wp_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_sessions`
#

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;


#
# Table structure of table `wp_woocommerce_sessions`
#

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_sessions`
#
INSERT INTO `wp_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(9, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:669:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"RI";s:7:"country";s:2:"US";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"RI";s:16:"shipping_country";s:2:"US";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:15:"nic@workshop.co";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1516387958) ;

#
# End of data contents of table `wp_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zone_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;


#
# Table structure of table `wp_woocommerce_shipping_zone_locations`
#

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_shipping_zone_locations`
#
INSERT INTO `wp_woocommerce_shipping_zone_locations` ( `location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'US', 'country') ;

#
# End of data contents of table `wp_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zone_methods`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;


#
# Table structure of table `wp_woocommerce_shipping_zone_methods`
#

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_shipping_zone_methods`
#

#
# End of data contents of table `wp_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zones`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;


#
# Table structure of table `wp_woocommerce_shipping_zones`
#

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_shipping_zones`
#
INSERT INTO `wp_woocommerce_shipping_zones` ( `zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'United States (US)', 0) ;

#
# End of data contents of table `wp_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;


#
# Table structure of table `wp_woocommerce_tax_rate_locations`
#

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wp_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;


#
# Table structure of table `wp_woocommerce_tax_rates`
#

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rates`
#

#
# End of data contents of table `wp_woocommerce_tax_rates`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

