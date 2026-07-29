<?php /* Template Name: Plantilla Servicio */ ?>
<?php get_header(); ?>


    <div class="site-blocks-cover overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_3.jpg);" >

      <div class="container">
        <div class="row align-items-center">

          <div class="col-12">
            
            <div class="row mb-4 mt-4">
              <div class="col-md-9">

                <div class="wp-block-uagb-info-box">
                    <div class="wrapper-slider">
                        <div
                            class="title-banner mb-4">
                            <h1><?php the_title(); ?></h1>
                        </div>
                    </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  
    
    <main id="contenido-principal" class="container mt-4">
      <!-- Breadcrumb -->
      <nav class="breadcrumb mb-4">
        <a class="mr-2" href="<?php echo home_url(); ?>">Inicio &gt;</a>
        <a class="mr-2" href="<?php echo get_permalink(get_page_by_path('servicios')); ?>">Servicios &gt;</a>
        <span><?php the_title(); ?></span>
      </nav>

      <!-- Layout en dos columnas -->
      <div class="row align-items-center">
        <!-- Izquierda: texto -->
        <div class="col-md-6">
          <h2> <?php the_title(); ?></h2>
          <div class="contenido-servicio">
            <?php the_content(); ?>
          </div>
        </div>

        <!-- Derecha: imagen destacada -->
        <div class="col-md-6">
          <?php if (has_post_thumbnail()) : ?>
            <div class="imagen-destacada">
              <?php the_post_thumbnail('large', [
                'class' => 'img-fluid rounded',
                'alt' => esc_attr(get_the_title() . ' en Therapy Flex Comas'),
              ]); ?>
            </div>
          <?php endif; ?>
        </div>
      </div>

      <!-- Información adicional -->
      <section class="container mt-5">
        <div class="row">
          <!-- Lista de dolencias -->
          <div class="col-md-6 mb-4">
            <h3>Terapia Rehabilitación</h3>

            <div class="menu-tratamientos mt-4">
              <?php
                // Obtener el título de la página actual
                $tipo_servicio_actual = get_the_title();

                // Buscar el término correspondiente en la taxonomía tipo_servicio
                $term = get_term_by('name', $tipo_servicio_actual, 'tipo_servicio');

                if ($term) {
                  $args = array(
                    'post_type' => 'dolencia',
                    'posts_per_page' => -1,
                    'orderby' => 'date',
                    'order' => 'ASC', // Esto asegura que el más antiguo va primero =/ DESC
                    'tax_query' => array(
                      array(
                        'taxonomy' => 'tipo_servicio',
                        'field' => 'slug',
                        'terms' => $term->slug,
                      )
                    )
                  );

                  $query = new WP_Query($args);

                  if ($query->have_posts()) : ?>
                    <ul class="list-group">
                      <?php while ($query->have_posts()) : $query->the_post(); ?>
                        <li>
                         <!--  <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a> -->
                          <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                        </li>
                      <?php endwhile; ?>
                    </ul>
                    <?php wp_reset_postdata(); ?>
                  <?php else : ?>
                    <p>No se encontraron dolencias para este tipo de servicio.</p>
                  <?php endif;
                } else {
                  echo '<p>No se encontró el tipo de servicio correspondiente.</p>';
                }
              ?>
            </div>





          </div>

          <!-- Formulario de cita -->
          <div class="col-md-6">
            <!-- <h2>Haga una cita</h2> -->
            <h3 class="title-bar-primary">Haga una cita</h3>
            <?php if (isset($_GET['cita']) && 'ok' === $_GET['cita']) : ?>
              <div class="alert alert-success" role="status">
                Gracias. Recibimos tu solicitud de cita y nos comunicaremos contigo para confirmar la disponibilidad.
              </div>
            <?php elseif (isset($_GET['cita']) && 'error' === $_GET['cita']) : ?>
              <div class="alert alert-danger" role="alert">
                No pudimos enviar tu solicitud. Revisa los campos obligatorios e inténtalo nuevamente.
              </div>
            <?php endif; ?>

            <form id="formulario-cita" action="<?php echo esc_url(admin_url('admin-post.php')); ?>" method="post">
              <input type="hidden" name="action" value="guardar_cita_therapyflex">
              <input type="hidden" name="origen" value="<?php echo esc_url(get_permalink()); ?>">
              <?php wp_nonce_field('therapyflex_cita_action', 'therapyflex_cita_nonce'); ?>
              <div class="mb-3">
                <label class="screen-reader-text" for="servicio_cita">Servicio</label>
                <select class="form-control" id="servicio_cita" name="servicio" required>
                  <option value="">Seleccionar servicio</option>
                  <?php
                    $servicios_cita = new WP_Query(array(
                      'post_type' => 'page',
                      'post_status' => 'publish',
                      'posts_per_page' => -1,
                      'orderby' => array(
                        'menu_order' => 'ASC',
                        'title' => 'ASC',
                      ),
                      'meta_query' => array(
                        array(
                          'key' => '_wp_page_template',
                          'value' => 'template-servicio.php',
                        ),
                      ),
                    ));

                    if ($servicios_cita->have_posts()) :
                      while ($servicios_cita->have_posts()) :
                        $servicios_cita->the_post();
                  ?>
                        <option value="<?php echo esc_attr(get_the_title()); ?>" <?php selected(get_the_ID(), get_queried_object_id()); ?>>
                          <?php echo esc_html(get_the_title()); ?>
                        </option>
                  <?php
                      endwhile;
                      wp_reset_postdata();
                    else :
                  ?>
                      <option value="<?php echo esc_attr(get_the_title()); ?>"><?php echo esc_html(get_the_title()); ?></option>
                  <?php endif; ?>
                  <option value="Descarga Muscular">Descarga Muscular</option>
                  <option value="Masajes Terapéuticos">Masajes Terapéuticos</option>
                  <option value="Otros">Otros</option>
                </select>
              </div>

              <div class="mb-3">
                <label class="screen-reader-text" for="sede_cita">Sede</label>
                <select class="form-control" id="sede_cita" name="sede" required>
                  <option value="">Seleccionar sede</option>
                  <option value="Comas - El Alamo">Comas - El Alamo</option>
                  <!-- más opciones -->
                </select>
              </div>

              <div class="mb-3">
                <label class="screen-reader-text" for="nombre_cita">Nombre del paciente</label>
                <input class="form-control" id="nombre_cita" type="text" name="nombre" placeholder="Nombre del paciente *" required>
              </div>

              <div class="mb-3 row">
                <div class="col-md-6">
                  <label class="screen-reader-text" for="telefono_cita">Teléfono</label>
                  <input class="form-control" id="telefono_cita" type="tel" name="telefono" placeholder="Teléfono *" required>
                </div>
                <div class="col-md-6">
                  <label class="screen-reader-text" for="correo_cita">Correo electrónico</label>
                  <input class="form-control" id="correo_cita" type="email" name="correo" placeholder="Correo *" required>
                </div>
              </div>

              <div class="mb-3 row">
                <div class="col-md-6">
                  <label class="screen-reader-text" for="fecha_cita">Fecha solicitada</label>
                  <input class="form-control" id="fecha_cita" type="date" name="fecha">
                </div>
                <div class="col-md-6">
                  <label class="screen-reader-text" for="hora_cita">Hora solicitada</label>
                  <input class="form-control" id="hora_cita" type="time" name="hora">
                </div>
              </div>

              <div class="mb-3">
                <label class="screen-reader-text" for="comentario_cita">Comentario</label>
                <textarea class="form-control" id="comentario_cita" name="comentario" rows="3" placeholder="Escriba su comentario"></textarea>
              </div>

              <button class="btn btn-primary btn-block" type="submit">HACER UNA CITA</button>
            </form>
          </div>
        </div>
      </section>

    </main>



               
<?php get_footer(); ?>
