<?php 

// ===============================
// EXTRACTO EN PÁGINAS
// ===============================
function agregar_extracto_a_paginas() {
    add_post_type_support('page', 'excerpt');
}
add_action('init', 'agregar_extracto_a_paginas');


// ===============================
// CONFIGURACIÓN DEL TEMA
// ===============================
function init_template(){
    add_theme_support('post-thumbnails');
    add_theme_support('title-tag');

    register_nav_menus(
        array(
            'top_menu' => 'Menú Principal'
        )
    );
}
add_action('after_setup_theme','init_template');


// ===============================
// ASSETS (CSS / JS)
// ===============================
function assets(){
    // Los assets principales se cargan en header.php/footer.php.
    // Mantener este hook evita duplicar Bootstrap/jQuery al habilitar wp_head().
}
add_action('wp_enqueue_scripts','assets');


// ===============================
// TÍTULO DEL SITIO
// ===============================
function therapyflex_document_title($title) {
    if (is_front_page() || is_home()) {
        return 'Therapy Flex | Terapia Física y Rehabilitación en Comas';
    }

    return $title;
}
add_filter('pre_get_document_title', 'therapyflex_document_title');


// ===============================
// SEO TECNICO: CANONICAL / ROBOTS
// ===============================
function therapyflex_has_seo_plugin() {
    return defined('WPSEO_VERSION')
        || defined('RANK_MATH_VERSION')
        || defined('AIOSEO_VERSION')
        || defined('SEOPRESS_VERSION')
        || class_exists('WPSEO_Frontend')
        || class_exists('RankMath')
        || class_exists('AIOSEO\\Plugin\\AIOSEO')
        || class_exists('SEOPress');
}

function therapyflex_get_canonical_url() {
    if (is_front_page() || is_home()) {
        return home_url('/');
    }

    if (is_singular()) {
        return get_permalink();
    }

    if (is_category() || is_tag() || is_tax()) {
        $term = get_queried_object();
        return $term ? get_term_link($term) : '';
    }

    if (is_post_type_archive()) {
        $post_type = get_query_var('post_type');
        if (is_array($post_type)) {
            $post_type = reset($post_type);
        }

        return $post_type ? get_post_type_archive_link($post_type) : '';
    }

    return '';
}

function therapyflex_prepare_canonical() {
    if (therapyflex_has_seo_plugin()) {
        return;
    }

    remove_action('wp_head', 'rel_canonical');
}
add_action('wp_head', 'therapyflex_prepare_canonical', 0);

function therapyflex_output_canonical() {
    if (therapyflex_has_seo_plugin()) {
        return;
    }

    $canonical_url = therapyflex_get_canonical_url();

    if (empty($canonical_url) || is_wp_error($canonical_url)) {
        return;
    }

    echo '<link rel="canonical" href="' . esc_url($canonical_url) . '">' . "\n";
}
add_action('wp_head', 'therapyflex_output_canonical', 5);

function therapyflex_add_sitemap_to_robots($output, $public) {
    if ('0' === (string) $public || false !== stripos($output, 'Sitemap:')) {
        return $output;
    }

    return rtrim($output) . "\n\nSitemap: " . esc_url(home_url('/wp-sitemap.xml')) . "\n";
}
add_filter('robots_txt', 'therapyflex_add_sitemap_to_robots', 10, 2);


// ===============================
// SIDEBAR
// ===============================
function sidebar(){
    register_sidebar(array(
        'name' => 'Pie de página',
        'id'   => 'footer',
        'description' => 'Zona de Widgets para pie de página',
        'before_title' => '<p>',
        'after_title'  => '</p>',
        'before_widget' => '<div id="%1$s" class="%2$s">',
        'after_widget'  => '</div>',
    ));
}
add_action('widgets_init', 'sidebar');


// ===============================
// CUSTOM POST TYPE: PRODUCTOS
// ===============================
function productos_type(){
    $labels = array(
        'name' => 'Productos',
        'singular_name' => 'Producto',
        'manu_name' => 'Productos',
    );

    $args = array(
        'label'  => 'Productos', 
        'description' => 'Productos de Platzi',
        'labels'       => $labels,
        'supports'   => array('title','editor','thumbnail', 'revisions'),
        'public'    => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'menu_icon'     => 'dashicons-cart',
        'can_export' => true,
        'publicly_queryable' => true,
        'rewrite'       => true,
        'show_in_rest' => true
    );    
    register_post_type('producto', $args);
}
add_action('init', 'productos_type');


// ===============================
// CUSTOM POST TYPE: DOLENCIAS
// ===============================
function crear_post_type_dolencias() {
  register_post_type('dolencia',
    array(
      'labels' => array(
        'name' => __('Dolencias'),
        'singular_name' => __('Dolencia'),
      ),
      'public' => true,
      'has_archive' => true,
      'rewrite' => array('slug' => 'dolencias'),
      'supports' => array('title', 'editor', 'thumbnail'),
      'menu_icon' => 'dashicons-heart',
      'show_in_rest' => true,
    )
  );
}
add_action('init', 'crear_post_type_dolencias');


// ===============================
// TAXONOMÍA: TIPO SERVICIO
// ===============================
function crear_taxonomia_tipo_servicio() {
  register_taxonomy(
    'tipo_servicio',
    'dolencia',
    array(
      'label' => 'Tipo de Servicio',
      'rewrite' => array('slug' => 'tipo-servicio'),
      'hierarchical' => true,
      'show_in_rest' => true,
    )
  );
}
add_action('init', 'crear_taxonomia_tipo_servicio');


// =======================================
// CONTACTOS (FORMULARIO WEB)
// =======================================

// Crear CPT Contactos
function therapyflex_register_contactos_cpt() {
  register_post_type('tf_contacto', array(
    'labels' => array(
      'name' => 'Contactos',
      'singular_name' => 'Contacto',
    ),
    'public' => false,
    'show_ui' => true,
    'menu_icon' => 'dashicons-email-alt',
    'supports' => array('title'),
  ));
}
add_action('init', 'therapyflex_register_contactos_cpt');


// Procesar formulario
function therapyflex_guardar_contacto() {

  if (
    !isset($_POST['therapyflex_contact_nonce']) ||
    !wp_verify_nonce($_POST['therapyflex_contact_nonce'], 'therapyflex_contact_action')
  ) {
    wp_redirect(add_query_arg('contacto', 'error', wp_get_referer()));
    exit;
  }
  
  $nombres   = sanitize_text_field($_POST['nombres'] ?? '');
  $apellidos = sanitize_text_field($_POST['apellidos'] ?? '');
  $email     = sanitize_email($_POST['email'] ?? '');
  $subject   = sanitize_text_field($_POST['subject'] ?? '');
  $message   = sanitize_textarea_field($_POST['message'] ?? '');

  if (empty($nombres) || empty($apellidos) || empty($email) || !is_email($email) || empty($subject) || empty($message)) {
    wp_redirect(add_query_arg('contacto', 'error', wp_get_referer()));
    exit;
  }

  // guardar en WP
  $post_id = wp_insert_post(array(
    'post_type'   => 'tf_contacto',
    'post_status' => 'publish',
    'post_title'  => $nombres . ' ' . $apellidos . ' - ' . current_time('d/m/Y H:i'),
  ));

  if ($post_id) {
    update_post_meta($post_id, 'nombres', $nombres);
    update_post_meta($post_id, 'apellidos', $apellidos);
    update_post_meta($post_id, 'email', $email);
    update_post_meta($post_id, 'asunto', $subject);
    update_post_meta($post_id, 'mensaje', $message);

    // 🔥 ENVÍO DE CORREO
    $to = array(
      'contacto@therapyflex.pe',
      'therapyflex30@gmail.com'
    );

    $subject_email = 'Nuevo contacto desde Therapy Flex';

    $body = "Has recibido un nuevo contacto:\n\n";
    $body .= "Nombre: $nombres $apellidos\n";
    $body .= "Email: $email\n";
    $body .= "Asunto: $subject\n\n";
    $body .= "Mensaje:\n$message";

    $headers = array(
      'Content-Type: text/plain; charset=UTF-8',
      'From: Therapy Flex <no-reply@therapyflex.pe>',
      'Reply-To: ' . $email
    );

    wp_mail($to, $subject_email, $body, $headers);

    wp_redirect(add_query_arg('contacto', 'ok', wp_get_referer()));
    exit;
  }

  wp_redirect(add_query_arg('contacto', 'error', wp_get_referer()));
  exit;
}

// Hooks
add_action('admin_post_nopriv_guardar_contacto_therapyflex', 'therapyflex_guardar_contacto');
add_action('admin_post_guardar_contacto_therapyflex', 'therapyflex_guardar_contacto');

// =======================================
// MOSTRAR DETALLE DEL CONTACTO EN ADMIN
// =======================================
function therapyflex_contacto_meta_box() {
  add_meta_box(
    'therapyflex_contacto_detalle',
    'Detalle del contacto',
    'therapyflex_contacto_meta_box_callback',
    'tf_contacto',
    'normal',
    'high'
  );
}
add_action('add_meta_boxes', 'therapyflex_contacto_meta_box');

function therapyflex_contacto_meta_box_callback($post) {
  $nombres   = get_post_meta($post->ID, 'nombres', true);
  $apellidos = get_post_meta($post->ID, 'apellidos', true);
  $email     = get_post_meta($post->ID, 'email', true);
  $asunto    = get_post_meta($post->ID, 'asunto', true);
  $mensaje   = get_post_meta($post->ID, 'mensaje', true);

  echo '<div style="font-size:15px; line-height:1.7;">';
  echo '<p><strong>Nombres:</strong> ' . esc_html($nombres) . '</p>';
  echo '<p><strong>Apellidos:</strong> ' . esc_html($apellidos) . '</p>';
  echo '<p><strong>Email:</strong> ' . esc_html($email) . '</p>';
  echo '<p><strong>Asunto:</strong> ' . esc_html($asunto) . '</p>';
  echo '<p><strong>Mensaje:</strong><br>' . nl2br(esc_html($mensaje)) . '</p>';
  echo '</div>';
}

// =======================================
// SUSCRIPCIONES FOOTER
// =======================================

function therapyflex_register_suscripciones_cpt() {
  register_post_type('tf_suscripcion', array(
    'labels' => array(
      'name' => 'Suscripciones',
      'singular_name' => 'Suscripción',
    ),
    'public' => false,
    'show_ui' => true,
    'menu_icon' => 'dashicons-email',
    'supports' => array('title'),
  ));
}
add_action('init', 'therapyflex_register_suscripciones_cpt');


function therapyflex_guardar_suscripcion() {

  // 🔐 Seguridad
  if (
    !isset($_POST['therapyflex_suscripcion_nonce']) ||
    !wp_verify_nonce($_POST['therapyflex_suscripcion_nonce'], 'therapyflex_suscripcion_action')
  ) {
    wp_redirect(add_query_arg('suscripcion', 'error', wp_get_referer()) . '#suscripcion-footer');
    exit;
  }

  // 🧹 Sanitizar
  $email = sanitize_email($_POST['email_suscripcion'] ?? '');

  // ⚠ Validación
  if (empty($email) || !is_email($email)) {
    wp_redirect(add_query_arg('suscripcion', 'email_invalido', wp_get_referer()) . '#suscripcion-footer');
    exit;
  }

  // 💾 Guardar en WP
  $post_id = wp_insert_post(array(
    'post_type'   => 'tf_suscripcion',
    'post_status' => 'publish',
    'post_title'  => $email . ' - ' . current_time('d/m/Y H:i'),
  ));

  if ($post_id) {

    update_post_meta($post_id, 'email_suscripcion', $email);

    // 📧 Enviar correo
    $to = array(
      'contacto@therapyflex.pe',
      'therapyflex30@gmail.com'
    );

    $subject_email = 'Nueva suscripción desde Therapy Flex';

    $body = "Nueva suscripción:\n\n";
    $body .= "Email: $email\n";
    $body .= "Fecha: " . current_time('d/m/Y H:i');

    $headers = array(
      'Content-Type: text/plain; charset=UTF-8',
      'From: Therapy Flex <no-reply@therapyflex.pe>'
    );

    wp_mail($to, $subject_email, $body, $headers);

    // 🔥 REDIRECCIÓN CON SCROLL AL FOOTER
    wp_redirect(add_query_arg('suscripcion', 'ok', wp_get_referer()) . '#suscripcion-footer');
    exit;
  }

  // ❌ Error general
  wp_redirect(add_query_arg('suscripcion', 'error', wp_get_referer()) . '#suscripcion-footer');
  exit;
}


// Hooks
add_action('admin_post_nopriv_guardar_suscripcion_therapyflex', 'therapyflex_guardar_suscripcion');
add_action('admin_post_guardar_suscripcion_therapyflex', 'therapyflex_guardar_suscripcion');
