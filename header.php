
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php if (!function_exists('therapyflex_has_seo_plugin') || !therapyflex_has_seo_plugin()) : ?>
      <meta name="description" content="<?php echo esc_attr(is_front_page() ? 'Therapy Flex es un centro de terapia física y rehabilitación en El Alamo, Comas. Atención en fisioterapia, rehabilitación física, descarga muscular y terapia a domicilio.' : wp_trim_words(wp_strip_all_tags(get_the_excerpt() ?: get_the_content()), 28, '')); ?>">
    <?php endif; ?>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/css/bootstrap.min.css">
    <link rel="preload" href="<?php echo esc_url(get_template_directory_uri() . '/assets/css/jquery-ui.css'); ?>" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="preload" href="<?php echo esc_url(get_template_directory_uri() . '/assets/css/owl.carousel.min.css'); ?>" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="preload" href="<?php echo esc_url(get_template_directory_uri() . '/assets/css/owl.theme.default.min.css'); ?>" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <noscript>
      <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri() . '/assets/css/jquery-ui.css'); ?>">
      <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri() . '/assets/css/owl.carousel.min.css'); ?>">
      <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri() . '/assets/css/owl.theme.default.min.css'); ?>">
    </noscript>
    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri() . '/assets/css/style.css?ver=' . filemtime(get_template_directory() . '/assets/css/style.css')); ?>">
    <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.ico" type="image/x-icon">
    <?php if (is_front_page()) : ?>
      <link rel="preload" as="image" href="<?php echo esc_url(get_template_directory_uri() . '/assets/images/hero_bg_3-mobile.jpg'); ?>" media="(max-width: 767.98px)" fetchpriority="high">
      <link rel="preload" as="image" href="<?php echo esc_url(get_template_directory_uri() . '/assets/images/hero_bg_3.jpg'); ?>" media="(min-width: 768px)" fetchpriority="high">
    <?php endif; ?>
    <script defer src="<?php echo esc_url(get_template_directory_uri() . '/assets/js/main-header.js?ver=' . filemtime(get_template_directory() . '/assets/js/main-header.js')); ?>"></script>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MJXZ5BB7');
    </script>
    <!-- End Google Tag Manager -->

    <!-- Meta Pixel Code -->
    <script>
    !function(f,b,e,v,n,t,s)
    {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments)};
    if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
    n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0];
    s.parentNode.insertBefore(t,s)}(window, document,'script',
    'https://connect.facebook.net/en_US/fbevents.js');

    fbq('init', '1660178265392836');
    fbq('track', 'PageView');
    </script>

    <noscript>
    <img height="1" width="1" style="display:none"
    src="https://www.facebook.com/tr?id=1660178265392836&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Meta Pixel Code -->

    <?php wp_head(); ?>
    
  </head>

<?php
  $extra_classes = is_front_page() ? '' : 'page-interna';

  if ( is_page() ) {
    $slug = get_post_field( 'post_name', get_post() );
    $extra_classes .= ' page-' . sanitize_html_class( $slug );
  }
?>
<body <?php body_class( $extra_classes ); ?>>
  <?php wp_body_open(); ?>

  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MJXZ5BB7" title="Google Tag Manager"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
  
  <a class="skip-link screen-reader-text" href="#contenido-principal">Saltar al contenido principal</a>
  <div class="therapyflex-loader" id="therapyflexLoader" aria-hidden="true">
    <div class="therapyflex-loader__mark">
      <span></span>
      <span></span>
      <span></span>
    </div>
    <span class="screen-reader-text">Cargando Therapy Flex</span>
  </div>

  <div class="site-wrap">

    <div class="site-mobile-menu" id="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <button type="button" class="icon-close2 js-menu-toggle" aria-label="Cerrar menú" aria-controls="site-mobile-menu" aria-expanded="true"></button>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <!-- <header class="site-navbar" role="banner"> -->
    <header class="site-navbar <?php echo is_front_page() ? '' : 'header-interna'; ?>" role="banner">

      <div class="container">
        <div class="row align-items-center">
          <div class="col-9 col-xl-4">
            <div class="mb-0 site-logo">
              <a href="<?php echo esc_url(home_url('/')); ?>" class="text-white mb-0">
                <img class="custom-logo" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.svg" alt="Therapy Flex" width="160" height="68">
              </a>
            </div>
          </div>
          <div class="col-xl-8 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="<?php echo esc_url(home_url('/')); ?>"><span>Inicio</span></a></li>
                <!-- <li><a href="#servicios"><span>Servicios</span></a></li> -->
                <li><a href="<?php echo esc_url(home_url('/servicios')); ?>"><span>Servicios</span></a></li>
                <li><a href="<?php echo esc_url(home_url('/#opiniones')); ?>"><span>Sobre</span></a></li>
                <li><a href="<?php echo esc_url(home_url('/#galeria')); ?>"><span>Blog</span></a></li>
                <!-- <li><a href="#contacto"><span>Contacto</span></a></li> -->
                <li><a href="<?php echo esc_url( home_url('/contacto') ); ?>"><span>Contacto</span></a></li>
              </ul>
            </nav>
          </div>
          <div class="col-3 d-xl-none text-right py-3">
            <button type="button" class="site-menu-toggle js-menu-toggle text-white" aria-label="Abrir menú" aria-controls="site-mobile-menu" aria-expanded="false">
              <span class="icon-menu h3" aria-hidden="true"></span>
            </button>
          </div>
        </div>

      </div>
    </header>
  
