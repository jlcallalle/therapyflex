<?php /* Template Name: Plantilla Servicio */ ?>
<?php  get_header('interna'); ?>


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
    
    <main class="container mt-4">
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
          <h1> <?php the_title(); ?></h1>
          <div class="contenido-servicio">
            <?php the_content(); ?>
          </div>
        </div>

        <!-- Derecha: imagen destacada -->
        <div class="col-md-6">
          <?php if (has_post_thumbnail()) : ?>
            <div class="imagen-destacada">
              <?php the_post_thumbnail('large', ['class' => 'img-fluid rounded']); ?>
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
              <ul class="list-group">
                <li><a href="#">Contractura Muscular</a></li>
                <li><a href="#">Cervicalgia</a></li>
                <li><a href="#">Dorsalgia</a></li>
                <li><a href="#">Lumbalgia</a></li>
                <li><a href="#">Lumbociatalgia</a></li>
                <li><a href="#">Escoliosis</a></li>
                <li><a href="#">Mialgia muscular</a></li>
              </ul>
            </div>
          </div>

          <!-- Formulario de cita -->
          <div class="col-md-6">
            <!-- <h2>Haga una cita</h2> -->
            <h3 class="title-bar-primary">Haga una cita</h3>
            <form action="#" method="post">
              <div class="mb-3">
                <select class="form-control" name="servicio">
                  <option value="">Seleccionar servicio</option>
                  <option value="rehabilitacion">Rehabilitación</option>
                  <option value="pediatria">Pediatría</option>
                  <!-- más opciones -->
                </select>
              </div>

              <div class="mb-3">
                <select class="form-control" name="sede">
                  <option value="">Seleccionar sede</option>
                  <option value="comas">Comas</option>
                  <option value="sjl">SJL</option>
                  <!-- más opciones -->
                </select>
              </div>

              <div class="mb-3">
                <input class="form-control" type="text" name="nombre" placeholder="Nombre del paciente *">
              </div>

              <div class="mb-3 row">
                <div class="col-md-6">
                  <input class="form-control" type="tel" name="telefono" placeholder="Teléfono *">
                </div>
                <div class="col-md-6">
                  <input class="form-control" type="email" name="correo" placeholder="Correo *">
                </div>
              </div>

              <div class="mb-3 row">
                <div class="col-md-6">
                  <input class="form-control" type="date" name="fecha">
                </div>
                <div class="col-md-6">
                  <input class="form-control" type="time" name="hora">
                </div>
              </div>

              <div class="mb-3">
                <textarea class="form-control" name="comentario" rows="3" placeholder="Escriba su comentario"></textarea>
              </div>

              <button class="btn btn-primary btn-block" type="submit">HACER UNA CITA</button>
            </form>
          </div>
        </div>
      </section>

    </main>



               
<?php get_footer(); ?>
