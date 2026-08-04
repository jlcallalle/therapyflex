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

function therapyflex_disable_low_value_head_assets() {
    remove_action('wp_head', 'print_emoji_detection_script', 7);
    remove_action('wp_print_styles', 'print_emoji_styles');
    remove_action('wp_head', 'wp_generator');
}
add_action('init', 'therapyflex_disable_low_value_head_assets');


// ===============================
// TÍTULO DEL SITIO
// ===============================
function therapyflex_document_title($title) {
    if (is_front_page() || is_home()) {
        return 'Therapy Flex | Terapia Física y Rehabilitación en Comas';
    }

    if (is_page('servicios')) {
        return 'Servicios de Terapia Física en Comas | Therapy Flex';
    }

    if (is_page('nosotros')) {
        return 'Nosotros | Lic. Liz Mary Tananta Panduro - Therapy Flex Comas';
    }

    if (is_page('blog')) {
        return 'Blog de Terapia Fisica y Rehabilitacion | Therapy Flex Comas';
    }

    if (is_page('contacto')) {
        return 'Contacto y Citas de Terapia Física en Comas | Therapy Flex';
    }

    if (is_page_template('template-servicio.php') || is_singular('dolencia')) {
        return single_post_title('', false) . ' en Comas | Therapy Flex';
    }

    return $title;
}
add_filter('pre_get_document_title', 'therapyflex_document_title');

function therapyflex_get_default_description() {
    return 'Therapy Flex es un centro de terapia física y rehabilitación en El Alamo, Comas. Atención en fisioterapia, rehabilitación física, descarga muscular y terapia a domicilio.';
}

function therapyflex_clean_meta_text($text, $limit = 155) {
    $text = trim(preg_replace('/\s+/', ' ', wp_strip_all_tags((string) $text)));

    if (empty($text)) {
        return '';
    }

    if (function_exists('mb_strlen') && mb_strlen($text) > $limit) {
        $text = mb_substr($text, 0, $limit - 1);
        $text = preg_replace('/\s+\S*$/', '', $text) . '...';
    } elseif (strlen($text) > $limit) {
        $text = substr($text, 0, $limit - 1);
        $text = preg_replace('/\s+\S*$/', '', $text) . '...';
    }

    return $text;
}

function therapyflex_get_seo_description() {
    if (is_front_page() || is_home()) {
        return therapyflex_get_default_description();
    }

    if (is_page('servicios')) {
        return 'Conoce los servicios de fisioterapia, rehabilitación física, terapia pediátrica, geriátrica y deportiva de Therapy Flex en Comas.';
    }

    if (is_page('nosotros')) {
        return 'Conoce a la Lic. Liz Mary Tananta Panduro y el enfoque de Therapyflex en terapia fisica, rehabilitacion y tratamientos basados en evidencia.';
    }

    if (is_page('blog')) {
        return 'Lee consejos de Therapy Flex Comas sobre terapia fisica, rehabilitacion, prevencion de lesiones, movilidad y cuidado del dolor.';
    }

    if (is_page('contacto')) {
        return 'Agenda tu cita en Therapy Flex Comas. Escríbenos por WhatsApp, correo o formulario para recibir atención en terapia física y rehabilitación.';
    }

    if (is_page_template('template-servicio.php')) {
        $title = single_post_title('', false);
        $excerpt = get_the_excerpt();

        if (!empty($excerpt)) {
            return therapyflex_clean_meta_text($excerpt);
        }

        return therapyflex_clean_meta_text($title . ' en Therapy Flex Comas. Atención personalizada en terapia física y rehabilitación para recuperar movilidad, aliviar dolor y mejorar tu bienestar.');
    }

    if (is_singular('dolencia')) {
        $excerpt = get_the_excerpt();

        if (!empty($excerpt)) {
            return therapyflex_clean_meta_text($excerpt);
        }

        return therapyflex_clean_meta_text('Información sobre ' . single_post_title('', false) . ' y opciones de rehabilitación física en Therapy Flex, centro de terapia física en Comas.');
    }

    if (is_singular()) {
        $excerpt = get_the_excerpt();
        $content = get_the_content();
        $description = therapyflex_clean_meta_text($excerpt ?: $content);

        return $description ?: therapyflex_get_default_description();
    }

    return therapyflex_get_default_description();
}

function therapyflex_get_og_image_url() {
    if (is_singular() && has_post_thumbnail()) {
        $thumbnail = get_the_post_thumbnail_url(get_queried_object_id(), 'large');

        if ($thumbnail) {
            return $thumbnail;
        }
    }

    return get_template_directory_uri() . '/assets/images/hero_bg_3.jpg';
}

function therapyflex_output_meta_description() {
    if (therapyflex_has_seo_plugin()) {
        return;
    }

    echo '<meta name="description" content="' . esc_attr(therapyflex_get_seo_description()) . '">' . "\n";
}

function therapyflex_output_social_meta() {
    if (therapyflex_has_seo_plugin()) {
        return;
    }

    $title = wp_get_document_title();
    $description = therapyflex_get_seo_description();
    $url = therapyflex_get_canonical_url() ?: home_url('/');
    $image = therapyflex_get_og_image_url();

    echo '<meta property="og:locale" content="es_PE">' . "\n";
    echo '<meta property="og:type" content="' . ((is_singular('post') || is_singular('dolencia')) ? 'article' : 'website') . '">' . "\n";
    echo '<meta property="og:site_name" content="Therapy Flex">' . "\n";
    echo '<meta property="og:title" content="' . esc_attr($title) . '">' . "\n";
    echo '<meta property="og:description" content="' . esc_attr($description) . '">' . "\n";
    echo '<meta property="og:url" content="' . esc_url($url) . '">' . "\n";
    echo '<meta property="og:image" content="' . esc_url($image) . '">' . "\n";
    echo '<meta name="twitter:card" content="summary_large_image">' . "\n";
    echo '<meta name="twitter:title" content="' . esc_attr($title) . '">' . "\n";
    echo '<meta name="twitter:description" content="' . esc_attr($description) . '">' . "\n";
    echo '<meta name="twitter:image" content="' . esc_url($image) . '">' . "\n";
}
add_action('wp_head', 'therapyflex_output_social_meta', 6);

function therapyflex_get_business_schema() {
    return array(
        '@type' => array('LocalBusiness', 'MedicalBusiness'),
        '@id' => home_url('/#organization'),
        'name' => 'Therapy Flex',
        'url' => home_url('/'),
        'logo' => get_template_directory_uri() . '/assets/images/logo.png',
        'image' => therapyflex_get_og_image_url(),
        'description' => therapyflex_get_default_description(),
        'telephone' => '+51920830776',
        'email' => 'contacto@therapyflex.pe',
        'priceRange' => '$$',
        'address' => array(
            '@type' => 'PostalAddress',
            'streetAddress' => 'Av Trapiche, Mz E2 Lt 26, Calle 24, Urb El Alamo',
            'addressLocality' => 'Comas',
            'addressRegion' => 'Lima',
            'addressCountry' => 'PE',
        ),
        'areaServed' => array(
            '@type' => 'City',
            'name' => 'Comas',
        ),
        'openingHoursSpecification' => array(
            array(
                '@type' => 'OpeningHoursSpecification',
                'dayOfWeek' => array('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'),
                'opens' => '09:00',
                'closes' => '19:00',
            ),
            array(
                '@type' => 'OpeningHoursSpecification',
                'dayOfWeek' => 'Saturday',
                'opens' => '08:00',
                'closes' => '16:00',
            ),
        ),
        'sameAs' => array(
            'https://www.facebook.com/therapy.flex.pe',
            'https://www.instagram.com/therapy_flex/',
            'https://www.tiktok.com/@therapy_flex',
        ),
    );
}

function therapyflex_output_json_ld() {
    if (therapyflex_has_seo_plugin()) {
        return;
    }

    $canonical = therapyflex_get_canonical_url() ?: home_url('/');
    $graph = array(
        therapyflex_get_business_schema(),
        array(
            '@type' => 'WebSite',
            '@id' => home_url('/#website'),
            'url' => home_url('/'),
            'name' => 'Therapy Flex',
            'inLanguage' => 'es-PE',
            'publisher' => array('@id' => home_url('/#organization')),
        ),
        array(
            '@type' => 'WebPage',
            '@id' => trailingslashit($canonical) . '#webpage',
            'url' => $canonical,
            'name' => wp_get_document_title(),
            'description' => therapyflex_get_seo_description(),
            'inLanguage' => 'es-PE',
            'isPartOf' => array('@id' => home_url('/#website')),
            'about' => array('@id' => home_url('/#organization')),
        ),
    );

    if (is_page_template('template-servicio.php')) {
        $graph[] = array(
            '@type' => 'Service',
            '@id' => trailingslashit($canonical) . '#service',
            'name' => single_post_title('', false),
            'description' => therapyflex_get_seo_description(),
            'provider' => array('@id' => home_url('/#organization')),
            'areaServed' => array(
                '@type' => 'City',
                'name' => 'Comas',
            ),
            'serviceType' => 'Terapia física y rehabilitación',
        );
    }

    if (!is_front_page()) {
        $breadcrumbs = array(
            array(
                '@type' => 'ListItem',
                'position' => 1,
                'name' => 'Inicio',
                'item' => home_url('/'),
            ),
        );

        if (is_page_template('template-servicio.php')) {
            $servicios = get_page_by_path('servicios');

            if ($servicios) {
                $breadcrumbs[] = array(
                    '@type' => 'ListItem',
                    'position' => 2,
                    'name' => 'Servicios',
                    'item' => get_permalink($servicios),
                );
            }
        }

        $breadcrumbs[] = array(
            '@type' => 'ListItem',
            'position' => count($breadcrumbs) + 1,
            'name' => single_post_title('', false) ?: wp_get_document_title(),
            'item' => $canonical,
        );

        $graph[] = array(
            '@type' => 'BreadcrumbList',
            '@id' => trailingslashit($canonical) . '#breadcrumb',
            'itemListElement' => $breadcrumbs,
        );
    }

    echo '<script type="application/ld+json">' . wp_json_encode(array(
        '@context' => 'https://schema.org',
        '@graph' => $graph,
    ), JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE) . '</script>' . "\n";
}
add_action('wp_head', 'therapyflex_output_json_ld', 20);


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

function therapyflex_disable_users_sitemap($provider, $name) {
    if ('users' === $name) {
        return false;
    }

    return $provider;
}
add_filter('wp_sitemaps_add_provider', 'therapyflex_disable_users_sitemap', 10, 2);

function therapyflex_exclude_tipo_servicio_from_sitemaps($taxonomies) {
    unset($taxonomies['tipo_servicio']);

    return $taxonomies;
}
add_filter('wp_sitemaps_taxonomies', 'therapyflex_exclude_tipo_servicio_from_sitemaps');


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
      'publicly_queryable' => false,
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
  $celular   = sanitize_text_field($_POST['celular'] ?? '');
  $email     = sanitize_email($_POST['email'] ?? '');
  $subject   = sanitize_text_field($_POST['subject'] ?? '');
  $message   = sanitize_textarea_field($_POST['message'] ?? '');

  if (empty($nombres) || empty($apellidos) || empty($celular) || empty($email) || !is_email($email) || empty($subject) || empty($message)) {
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
    update_post_meta($post_id, 'celular', $celular);
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
    $body .= "Celular: $celular\n";
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
  $celular   = get_post_meta($post->ID, 'celular', true);
  $email     = get_post_meta($post->ID, 'email', true);
  $asunto    = get_post_meta($post->ID, 'asunto', true);
  $mensaje   = get_post_meta($post->ID, 'mensaje', true);

  echo '<div style="font-size:15px; line-height:1.7;">';
  echo '<p><strong>Nombres:</strong> ' . esc_html($nombres) . '</p>';
  echo '<p><strong>Apellidos:</strong> ' . esc_html($apellidos) . '</p>';
  echo '<p><strong>Celular:</strong> ' . esc_html($celular) . '</p>';
  echo '<p><strong>Email:</strong> ' . esc_html($email) . '</p>';
  echo '<p><strong>Asunto:</strong> ' . esc_html($asunto) . '</p>';
  echo '<p><strong>Mensaje:</strong><br>' . nl2br(esc_html($mensaje)) . '</p>';
  echo '</div>';
}

// =======================================
// CITAS (FORMULARIO DE SERVICIO)
// =======================================
function therapyflex_register_citas_cpt() {
  register_post_type('tf_cita', array(
    'labels' => array(
      'name' => 'Citas',
      'singular_name' => 'Cita',
    ),
    'public' => false,
    'show_ui' => true,
    'menu_icon' => 'dashicons-calendar-alt',
    'supports' => array('title'),
  ));
}
add_action('init', 'therapyflex_register_citas_cpt');

function therapyflex_redirect_cita($status) {
  $referer = wp_get_referer();
  $fallback = home_url('/');
  $redirect_to = $referer ? $referer : $fallback;

  wp_safe_redirect(add_query_arg('cita', $status, $redirect_to) . '#formulario-cita');
  exit;
}

function therapyflex_guardar_cita() {
  if (
    !isset($_POST['therapyflex_cita_nonce']) ||
    !wp_verify_nonce(sanitize_text_field(wp_unslash($_POST['therapyflex_cita_nonce'])), 'therapyflex_cita_action')
  ) {
    therapyflex_redirect_cita('error');
  }

  $servicio   = sanitize_text_field(wp_unslash($_POST['servicio'] ?? ''));
  $sede       = sanitize_text_field(wp_unslash($_POST['sede'] ?? ''));
  $nombre     = sanitize_text_field(wp_unslash($_POST['nombre'] ?? ''));
  $telefono   = sanitize_text_field(wp_unslash($_POST['telefono'] ?? ''));
  $correo     = sanitize_email(wp_unslash($_POST['correo'] ?? ''));
  $fecha      = sanitize_text_field(wp_unslash($_POST['fecha'] ?? ''));
  $hora       = sanitize_text_field(wp_unslash($_POST['hora'] ?? ''));
  $comentario = sanitize_textarea_field(wp_unslash($_POST['comentario'] ?? ''));
  $origen     = esc_url_raw(wp_unslash($_POST['origen'] ?? ''));

  if (empty($servicio) || empty($sede) || empty($nombre) || empty($telefono) || empty($correo) || !is_email($correo)) {
    therapyflex_redirect_cita('error');
  }

  if (!empty($fecha) && !preg_match('/^\d{4}-\d{2}-\d{2}$/', $fecha)) {
    therapyflex_redirect_cita('error');
  }

  if (!empty($hora) && !preg_match('/^\d{2}:\d{2}$/', $hora)) {
    therapyflex_redirect_cita('error');
  }

  $post_id = wp_insert_post(array(
    'post_type'   => 'tf_cita',
    'post_status' => 'publish',
    'post_title'  => $nombre . ' - ' . current_time('d/m/Y H:i'),
  ));

  if (!$post_id || is_wp_error($post_id)) {
    therapyflex_redirect_cita('error');
  }

  update_post_meta($post_id, 'servicio', $servicio);
  update_post_meta($post_id, 'sede', $sede);
  update_post_meta($post_id, 'nombre', $nombre);
  update_post_meta($post_id, 'telefono', $telefono);
  update_post_meta($post_id, 'correo', $correo);
  update_post_meta($post_id, 'fecha', $fecha);
  update_post_meta($post_id, 'hora', $hora);
  update_post_meta($post_id, 'comentario', $comentario);
  update_post_meta($post_id, 'origen', $origen);

  $to = array(
    'contacto@therapyflex.pe',
    'therapyflex30@gmail.com'
  );

  $subject_email = 'Nueva solicitud de cita desde Therapy Flex';

  $body = "Nueva solicitud de cita:\n\n";
  $body .= "Servicio: $servicio\n";
  $body .= "Sede: $sede\n";
  $body .= "Nombre del paciente: $nombre\n";
  $body .= "Telefono: $telefono\n";
  $body .= "Correo: $correo\n";
  $body .= "Fecha solicitada: " . ($fecha ? $fecha : 'No indicada') . "\n";
  $body .= "Hora solicitada: " . ($hora ? $hora : 'No indicada') . "\n";
  $body .= "Pagina de origen: " . ($origen ? $origen : 'No indicada') . "\n\n";
  $body .= "Comentario:\n" . ($comentario ? $comentario : 'Sin comentario');

  $headers = array(
    'Content-Type: text/plain; charset=UTF-8',
    'From: Therapy Flex <no-reply@therapyflex.pe>',
    'Reply-To: ' . $correo
  );

  wp_mail($to, $subject_email, $body, $headers);

  therapyflex_redirect_cita('ok');
}

add_action('admin_post_nopriv_guardar_cita_therapyflex', 'therapyflex_guardar_cita');
add_action('admin_post_guardar_cita_therapyflex', 'therapyflex_guardar_cita');

function therapyflex_cita_meta_box() {
  add_meta_box(
    'therapyflex_cita_detalle',
    'Detalle de la cita',
    'therapyflex_cita_meta_box_callback',
    'tf_cita',
    'normal',
    'high'
  );
}
add_action('add_meta_boxes', 'therapyflex_cita_meta_box');

function therapyflex_cita_meta_box_callback($post) {
  $fields = array(
    'Servicio' => get_post_meta($post->ID, 'servicio', true),
    'Sede' => get_post_meta($post->ID, 'sede', true),
    'Nombre del paciente' => get_post_meta($post->ID, 'nombre', true),
    'Telefono' => get_post_meta($post->ID, 'telefono', true),
    'Correo' => get_post_meta($post->ID, 'correo', true),
    'Fecha solicitada' => get_post_meta($post->ID, 'fecha', true),
    'Hora solicitada' => get_post_meta($post->ID, 'hora', true),
    'Pagina de origen' => get_post_meta($post->ID, 'origen', true),
  );

  echo '<div style="font-size:15px; line-height:1.7;">';
  foreach ($fields as $label => $value) {
    echo '<p><strong>' . esc_html($label) . ':</strong> ' . esc_html($value ? $value : 'No indicado') . '</p>';
  }
  echo '<p><strong>Comentario:</strong><br>' . nl2br(esc_html(get_post_meta($post->ID, 'comentario', true))) . '</p>';
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
