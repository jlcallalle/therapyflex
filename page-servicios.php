<?php /* Template Name: Servicios */ ?>
<?php get_header(); ?>

<main id="contenido-principal">

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
    

    <div id="servicios-listado" class="site-section servicios-listado pb-7">
      <div class="container">
        <div class="servicios-listado__items">
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

            <article class="servicio-resumen-card">
                <div class="servicio-resumen-card__content">
                    <h2>
                        <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                    </h2>
                    <div class="servicio-resumen-card__excerpt">
                        <?php
                        $excerpt = get_the_excerpt();

                        if (empty($excerpt)) {
                            $excerpt = wp_trim_words(wp_strip_all_tags(get_the_content()), 38, '...');
                        }

                        echo wp_kses_post(wpautop($excerpt));
                        ?>
                    </div>
                    <a class="servicio-resumen-card__link" href="<?php the_permalink(); ?>">
                        Ver servicio
                    </a>
                </div>

                <a class="servicio-resumen-card__media" href="<?php the_permalink(); ?>" aria-label="<?php echo esc_attr('Ver ' . get_the_title()); ?>">
                        <?php if (has_post_thumbnail()) : ?>
                            <?php the_post_thumbnail('large', array(
                                'class' => 'img-fluid',
                                'alt' => esc_attr(get_the_title() . ' en Therapy Flex Comas'),
                            )); ?>
                        <?php endif; ?>
                </a>
            </article>

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

    <div class="block-cta-1 primary-overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_2.jpg);">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 mb-4 mb-lg-0">
            <h2 class="mb-3 mt-0 text-white">Hasta un 20% de descuento en tu primera sesión por inauguración.</h2>
            <p class="mb-0 text-white lead">Recibe atención personalizada desde tu primera visita.</p>
            <p class="mb-0 text-white lead"> Comienza tu camino hacia una vida sin dolor.</p>
          </div>
          <div class="col-lg-4">
            <p class="mb-0"><a href="<?php echo esc_url(home_url('/contacto')); ?>" class="btn btn-outline-white text-white btn-md btn-pill px-5 font-weight-bold btn-block">Contáctanos</a></p>
          </div>
        </div>
      </div>
    </div>
               
</main>

<?php get_footer(); ?>
