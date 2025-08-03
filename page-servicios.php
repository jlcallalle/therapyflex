<?php /* Template Name: Servicios */ ?>
<?php get_header(); ?>


    <div class="site-blocks-cover overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/banner-servicios.jpg);" >

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

            <div class="col-12 col-md-6 col-lg-4 mb-4">
                <div class="tarjeta-servicio">
                    <a href="<?php the_permalink(); ?>">
                        <?php if (has_post_thumbnail()) : ?>
                        <?php the_post_thumbnail('medium', ['class' => 'img-fluid']); ?>
                        <?php endif; ?>
                        <h3 class="mt-3"><?php the_title(); ?></h3>
                        <!-- <p><?php // echo get_the_excerpt(); ?></p> -->
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
