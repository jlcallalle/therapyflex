<?php /* Template Name: Plantilla Servicio */ ?>
<?php  get_header('interna'); ?>


    <div class="site-blocks-cover overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_3.jpg);" >

      <div class="container">
        <div class="row align-items-center">

          <div class="col-12">
            
            <div class="row mb-4">
              <div class="col-md-9">

                <div class="wp-block-uagb-info-box">
                    <div class="wrapper-slider">
                        <div
                            class="title-banner mb-4">
                            <h1>Detalle Servivios</h1>
                        </div>
                    </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  

    <main class="container">
      <div class="row">
        <div class="col-12">
          <h1>title <?php the_title(); ?></h1>
          <p>resumen: <?php echo get_the_excerpt(); ?></p>
          
          <div class="contenido-servicio">
              <?php the_content(); ?>
          </div>
        </div>
      </div>
    </main>

               
<?php get_footer(); ?>
