<?php /* Template Name: Servicios */ ?>
<?php  get_header('interna'); ?>


    <div class="site-blocks-cover overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_3.jpg);" >

      <div class="container">
        <div class="row align-items-center">

          <div class="col-md-12">
            
            <div class="row mb-4">
              <div class="col-md-9">

                <div class="wp-block-uagb-info-box">
                    <div class="wrapper-slider">
                        <div
                            class="title-banner mb-4">
                            <h1>Servicios</h1>
                        </div>
                    </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  

    <div  id="servivios"  class="site-section section-mapa pb-7">
      <div class="container">
        <div class="row mb-4">

            <div class="servicios-grid">
                <!-- <div class="row">
                    <div class="col-6 mb-4">
                        <div class="tarjeta-servicio">
                            <a href="/servicios/masajes">
                                <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/masajes.jpg'); ?>" alt="Masajes" class="img-fluid">
                                <h2 class="mt-3">Masajes</h2>
                                <p>Descargas musculares, relajantes, descontracturantes y más.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-6 mb-4">
                        <div class="tarjeta-servicio">
                            <a href="/servicios/terapia-fisica-y-rehabilitacion">
                                <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/fisioterapia-general.webp'); ?>" alt="Terapia Física" class="img-fluid">
                                <h2 class="mt-3">Terapia física y rehabilitación</h2>
                                <p>Fracturas, luxaciones, ligamentos y otras lesiones.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-6 mb-4">
                        <div class="tarjeta-servicio">
                            <a href="/servicios/acondicionamiento-fisico">
                                <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/fisico.png'); ?>" alt="Acondicionamiento físico" class="img-fluid">
                                <h2 class="mt-3">Acondicionamiento físico</h2>
                                <p>Resistencia, flexibilidad, potencia y preparación deportiva.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-6 mb-4">
                        <div class="tarjeta-servicio">
                            <a href="/servicios/lesiones-deportivas">
                                <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/desgarro.png'); ?>" alt="lesiones deportivas" class="img-fluid">
                                <h2 class="mt-3">Lesiones deportivas</h2>
                                <p>Desgarros, esguinces, luxaciones y más.</p>
                            </a>
                        </div>
                    </div>
                </div> -->
            </div>

            <div class="servicios-grid">
                <div class="row">

                    <?php
                    // Obtener ID de la página actual (Servicios)
                    $servicios_page_id = get_the_ID();

                    // Obtener páginas hijas
                    $args = array(
                        'post_type'      => 'page',
                        'posts_per_page' => -1,
                        'post_parent'    => $servicios_page_id,
                        'orderby'        => 'menu_order',
                        'order'          => 'ASC'
                    );
                    $servicios = new WP_Query($args);

                    if ($servicios->have_posts()) :
                        while ($servicios->have_posts()) : $servicios->the_post();
                    ?>

                    <div class="col-6 mb-4">
                        <div class="tarjeta-servicio">
                            <a href="<?php the_permalink(); ?>">
                                <?php if (has_post_thumbnail()) : ?>
                                <?php the_post_thumbnail('medium', ['class' => 'img-fluid']); ?>
                                <?php endif; ?>
                                <h2 class="mt-3"><?php the_title(); ?></h2>
                                <p><?php echo get_the_excerpt(); ?></p>
                            </a>
                        </div>
                    </div>

                    <?php
                        endwhile;
                        wp_reset_postdata();
                    else :
                        echo '<p>No hay servicios disponibles por el momento.</p>';
                    endif;
                    ?>

                </div>
            </div>
          
        </div>
       
      </div>
    </div>

    <div id="servivios" class="site-section section-mapa pb-7">
        
    </div>

    <div class="block-cta-1 primary-overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_2.jpg);">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 mb-4 mb-lg-0">
            <h2 class="mb-3 mt-0 text-white">Hasta un 20% de descuento en tu primera sesión por Inaguración.</h2>
            <p class="mb-0 text-white lead">Recibe atención personalizada desde tu primera visita.</p>
            <p class="mb-0 text-white lead"> Comienza tu camino hacia una vida sin dolor.</p>
          </div>
          <div class="col-lg-4">
            <p class="mb-0"><a href="#" class="btn btn-outline-white text-white btn-md btn-pill px-5 font-weight-bold btn-block">Contáctanos</a></p>
          </div>
        </div>
      </div>
    </div>
               
<?php get_footer(); ?>
