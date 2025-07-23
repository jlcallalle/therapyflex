<?php

// Activar soporte de título y miniaturas
function init_template() {
    add_theme_support('post-thumbnails');
    add_theme_support('title-tag');

    register_nav_menus([
        'top_menu' => 'Menú Principal'
    ]);
}
add_action('after_setup_theme', 'init_template');

// Cargar estilos y scripts del tema
function assets() {
    $theme_uri = get_template_directory_uri();

    // Google Fonts
    wp_enqueue_style('rubik-font', 'https://fonts.googleapis.com/css?family=Rubik:400,700', false, null);

    // CSS locales desde assets/
    wp_enqueue_style('icomoon', $theme_uri . '/assets/fonts/icomoon/style.css', [], '1.0', 'all');
    wp_enqueue_style('bootstrap', $theme_uri . '/assets/css/bootstrap.min.css', [], '4.4.1', 'all');
    wp_enqueue_style('magnific-popup', $theme_uri . '/assets/css/magnific-popup.css', [], '1.0', 'all');
    wp_enqueue_style('jquery-ui', $theme_uri . '/assets/css/jquery-ui.css', [], '1.0', 'all');
    wp_enqueue_style('owl-carousel', $theme_uri . '/assets/css/owl.carousel.min.css', [], '1.0', 'all');
    wp_enqueue_style('owl-theme-default', $theme_uri . '/assets/css/owl.theme.default.min.css', [], '1.0', 'all');
    wp_enqueue_style('aos', $theme_uri . '/assets/css/aos.css', [], '1.0', 'all');

    // Estilo principal del tema (style.css raíz del tema)
    wp_enqueue_style('main-style', get_stylesheet_uri(), [], '1.0', 'all');

    // Scripts JS
    wp_enqueue_script('jquery'); // Asegurar jQuery
    wp_register_script('popper', 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js', [], '1.16.0', true);
    wp_enqueue_script('bootstrap', $theme_uri . '/assets/js/bootstrap.min.js', ['jquery', 'popper'], '4.4.1', true);
    wp_enqueue_script('magnific-popup-js', $theme_uri . '/assets/js/jquery.magnific-popup.min.js', ['jquery'], '1.0', true);
    wp_enqueue_script('aos', $theme_uri . '/assets/js/aos.js', [], '1.0', true);
    wp_enqueue_script('owl-carousel', $theme_uri . '/assets/js/owl.carousel.min.js', ['jquery'], '1.0', true);
    wp_enqueue_script('custom', $theme_uri . '/assets/js/custom.js', [], '1.0', true);
}
add_action('wp_enqueue_scripts', 'assets');

// Registrar Sidebar para widgets (Pie de página)
function sidebar() {
    register_sidebar([
        'name' => 'Pie de página',
        'id' => 'footer',
        'description' => 'Zona de Widgets para pie de página',
        'before_title' => '<p>',
        'after_title' => '</p>',
        'before_widget' => '<div id="%1$s" class="%2$s">',
        'after_widget' => '</div>',
    ]);
}
add_action('widgets_init', 'sidebar');

// Custom Post Type: Productos
function productos_type() {
    $labels = [
        'name' => 'Productos',
        'singular_name' => 'Producto',
        'menu_name' => 'Productos',
    ];

    $args = [
        'label' => 'Productos',
        'description' => 'Productos de Therapy Flex',
        'labels' => $labels,
        'supports' => ['title', 'editor', 'thumbnail', 'revisions'],
        'public' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-cart',
        'can_export' => true,
        'publicly_queryable' => true,
        'rewrite' => true,
        'show_in_rest' => true
    ];

    register_post_type('producto', $args);
}
add_action('init', 'productos_type');
