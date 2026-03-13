
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>Therapy Flex | Terapia Física y Rehabilitación en Comas</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/css/jquery-ui.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url') ?>/assets/css/style.css">
    <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.ico" type="image/x-icon">
    <script src="<?php bloginfo('template_url') ?>/assets/js/main-header.js"></script>
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
    
  </head>

<?php
  $extra_classes = is_front_page() ? '' : 'page-interna';

  if ( is_page() ) {
    $slug = get_post_field( 'post_name', get_post() );
    $extra_classes .= ' page-' . sanitize_html_class( $slug );
  }
?>
<body <?php body_class( $extra_classes ); ?>>

  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MJXZ5BB7"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <!-- <header class="site-navbar" role="banner"> -->
    <header class="site-navbar <?php echo is_front_page() ? '' : 'header-interna'; ?>" role="banner">

      <div class="container">
        <div class="row align-items-center">
          <div class="col-11 col-xl-4">
            <h1 class="mb-0 site-logo">
              <a href="<?php echo esc_url(home_url('/')); ?>" class="text-white mb-0">
                <img class="custom-logo" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.svg" alt="">
              </a>
            </h1>
          </div>
          <div class="col-12 col-md-8 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="<?php echo esc_url(home_url('/')); ?>"><span>Inicio</span></a></li>
                <!-- <li><a href="#servicios"><span>Servicios</span></a></li> -->
                <li><a href="<?php echo esc_url(home_url('/servicios')); ?>"><span>Servicios</span></a></li>
                <li><a href="#"><span>Sobre</span></a></li>
                <li><a href="#"><span>Blog</span></a></li>
                <!-- <li><a href="#contacto"><span>Contacto</span></a></li> -->
                <li><a href="<?php echo esc_url( home_url('/contacto') ); ?>"><span>Contacto</span></a></li>
              </ul>
            </nav>
          </div>
          <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
        </div>

      </div>
    </header>
  