<?php get_header(); ?>

    <div class="site-blocks-cover overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_3.jpg);">

      <div class="container">
        <div class="row align-items-center">

          <div class="col-md-12">
            
            <div class="row mb-4">
              <div class="col-md-9">

                <div class="wp-block-uagb-info-box">
                    <div class="wrapper-slider">
                        <div
                            class="title-banner mb-4">
                            <h1>Terapia Física y Rehabilitación</h1>
                        </div>
                        <p class="texto-banner mt-3">
                          En Therapy Flex nos enfocamos en tu bienestar, contamos con profesionales capacitados que te acompañarán paso a paso en tu recuperación física.
                        </p>
                        <div class="box-btn-slider mt-4">
                            <a class="btn btn-primary btn-pill" href="https://wa.me/51920830776" role="button">
                                <span><span class="icon-whatsapp"></span> AGENDA TU CITA</span>
                            </a>
                        </div>
                    </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  


    <div class="block-quick-info-2">
      <div class="container">
        <div class="block-quick-info-2-inner">
          <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-home mr-3"></span>
                <div class="text">
                  <strong class="d-block heading">Sede Comas</strong>
                  <span class="excerpt"><a href="https://share.google/iNYeVxrLVBnaMBqv1"> Urb el Alamo, Mz E2 Lt 26, Calle 24</a></span>
                  <span>- Piso 02</span>
                  <!-- <span class="font-weight-bold">- Piso 02</span> -->
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-phone mr-3"></span>
                <div class="text">
                  <strong class="d-block heading">Contáctanos</strong>
                  <span class="excerpt"><a href="https://wa.me/51920830776">920 830 776</a></span>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-envelope mr-3"></span>
                <div class="text">
                  <strong class="d-block heading">Escríbenos</strong>
                  <span class="excerpt"><a href="#">contacto@therapyflex.pe</a></span>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3 mb-3 mb-lg-0">
              <div class="d-flex quick-info-2">
                <span class="icon icon-clock-o mr-3"></span>
                <div class="text">
                  <strong class="d-block heading">Horario</strong>
                  <span class="excerpt">Lun-Sab 9:AM - 7PM</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--Servicios  -->
    <?php
      $parent = get_page_by_path('servicios');
      $parent_id = $parent ? $parent->ID : 0;

      $child_pages = get_pages([
        'child_of' => $parent_id,
        'sort_column' => 'menu_order',
      ]);

      if (!empty($child_pages)) :
      ?>
      <div id="servicios" class="block-services-1 py-5">
        <div class="container">
          <div class="row">
            <?php foreach ($child_pages as $page) : ?>
              <div class="mb-4 mb-lg-0 col-sm-6 col-md-6 col-lg-4">
                <div class="block-service-1-card">
                  <div class="thumbnail-link d-block mb-4">
                    <?php
                    if (has_post_thumbnail($page->ID)) {
                      echo get_the_post_thumbnail($page->ID, 'medium', ['class' => 'img-fluid']);
                    } else {
                      echo '<img src="' . get_template_directory_uri() . '/assets/images/default.jpg" class="img-fluid" alt="' . esc_attr($page->post_title) . '">';
                    }
                    ?>
                  </div>
                  <div class="item-content-service">
                    <h3 class="block-service-1-heading mb-3">
                      <?php echo esc_html($page->post_title); ?>
                    </h3>
                    <div class="block-service-1-excerpt">
                      <p><?php echo esc_html(wp_trim_words($page->post_excerpt ?: $page->post_content, 20)); ?></p>
                    </div>
                    <!-- <p>
                      <a href="<?php // echo get_permalink($page->ID); ?>" class="btn btn-outline-primary btn-sm btn-pill">Ir al servicio</a>
                    </p> -->
                     <p><a href="<?php echo get_permalink($page->ID); ?>" class="d-inline-flex align-items-center block-service-1-more"><span>Ver más</span> <span class="icon-keyboard_arrow_right icon"></span></a></p>
                  </div>
                </div>
              </div>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
    <?php endif; ?>

    <div class="site-section section-clientes pb-7">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 text-center">
            <!-- <h2 class="site-section-heading text-center font-secondary">Clientes satisfechos</h2> -->
              <section class="ghead">
                <div class="ghead__stars" aria-hidden="true">
                  <svg viewBox="0 0 24 24" class="ghead__star"><path d="M12 .9l3.1 6.3 7 1-5 4.9 1.2 7-6.3-3.3-6.3 3.3 1.2-7-5-4.9 7-1z"/></svg>
                  <svg viewBox="0 0 24 24" class="ghead__star"><path d="M12 .9l3.1 6.3 7 1-5 4.9 1.2 7-6.3-3.3-6.3 3.3 1.2-7-5-4.9 7-1z"/></svg>
                  <svg viewBox="0 0 24 24" class="ghead__star"><path d="M12 .9l3.1 6.3 7 1-5 4.9 1.2 7-6.3-3.3-6.3 3.3 1.2-7-5-4.9 7-1z"/></svg>
                  <svg viewBox="0 0 24 24" class="ghead__star"><path d="M12 .9l3.1 6.3 7 1-5 4.9 1.2 7-6.3-3.3-6.3 3.3 1.2-7-5-4.9 7-1z"/></svg>
                  <svg viewBox="0 0 24 24" class="ghead__star"><path d="M12 .9l3.1 6.3 7 1-5 4.9 1.2 7-6.3-3.3-6.3 3.3 1.2-7-5-4.9 7-1z"/></svg>
                </div>

                <h2><a class="ghead__title" href="https://share.google/hK2d01ZjnUt1B4orj">Consulta nuestras Reseñas de Google</a></h2>
              </section>

          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel-2 owl-carousel">
              <div class="g-review-card">
                <div class="g-review-header">
                  <div class="g-avatar">
                    <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/person1.png'); ?>" alt="Ariadna Carpio" />
                  </div>
                  <div class="g-meta">
                    <div class="g-name">Ariadna Carpio</div>
                    <div class="g-date">2025-09-24</div>
                  </div>
                </div>

                <div class="g-stars" aria-label="5 estrellas">
                  <?php for($i=0;$i<5;$i++): ?>
                    <svg viewBox="0 0 20 20"><path d="M10 1.5l2.47 5.01 5.53.8-4 3.9.94 5.49L10 14.91 5.06 16.7 6 11.2l-4-3.9 5.53-.8L10 1.5z"/></svg>
                  <?php endfor; ?>
                </div>

                <p class="g-text">Muy buena atención y mucha paciencia, recomendado 😊🙌🏻</p>
              </div>
              <div class="g-review-card">
                <div class="g-review-header">
                  <div class="g-avatar g-avatar-initial">M</div>
                  <div class="g-meta">
                    <div class="g-name">Milagros Nunura</div>
                    <div class="g-date">2025-08-27</div>
                  </div>
                  <div class="g-google"><?php /* mismo SVG de arriba */ ?></div>
                </div>

                <div class="g-stars" aria-label="5 estrellas">
                  <?php for($i=0;$i<5;$i++): ?>
                    <svg viewBox="0 0 20 20"><path d="M10 1.5l2.47 5.01 5.53.8-4 3.9.94 5.49L10 14.91 5.06 16.7 6 11.2l-4-3.9 5.53-.8L10 1.5z"/></svg>
                  <?php endfor; ?>
                </div>

                <p class="g-text">
                  Una excelente atención y un profesionalismo A1 de la Lic Liz. Gracias a ella estoy mejorando cada vez mas con mi problema en la columna.
                </p>
              </div>
              <div class="g-review-card">
                <div class="g-review-header">
                  <div class="g-avatar g-avatar-initial">C</div>
                  <div class="g-meta">
                    <div class="g-name">Carolina Ortega</div>
                    <div class="g-date">2025-07-28</div>
                  </div>
                  <div class="g-google"><?php /* mismo SVG de arriba */ ?></div>
                </div>

                <div class="g-stars" aria-label="5 estrellas">
                  <?php for($i=0;$i<5;$i++): ?>
                    <svg viewBox="0 0 20 20"><path d="M10 1.5l2.47 5.01 5.53.8-4 3.9.94 5.49L10 14.91 5.06 16.7 6 11.2l-4-3.9 5.53-.8L10 1.5z"/></svg>
                  <?php endfor; ?>
                </div>

                <p class="g-text">
                  Mi tratamiento de mi hombro derecho mejoro bastante gracias a la ayuda de las terapias recibidas por el buen trato al paciente
                </p>
              </div>
              <div class="g-review-card">
                <div class="g-review-header">
                  <div class="g-avatar g-avatar-initial">Y</div>
                  <div class="g-meta">
                    <div class="g-name">Yesenia Chuquino</div>
                    <div class="g-date">2025-07-15</div>
                  </div>
                  <div class="g-google"><?php /* mismo SVG de arriba */ ?></div>
                </div>

                <div class="g-stars" aria-label="5 estrellas">
                  <?php for($i=0;$i<5;$i++): ?>
                    <svg viewBox="0 0 20 20"><path d="M10 1.5l2.47 5.01 5.53.8-4 3.9.94 5.49L10 14.91 5.06 16.7 6 11.2l-4-3.9 5.53-.8L10 1.5z"/></svg>
                  <?php endfor; ?>
                </div>

                <p class="g-text">
                  Me siento bien con el tratamiento que me realizaron para la cervical , el trabajo que realizó la terapista me recupero y puede aliviar del dolor y mareos.. 💯 por ciento recomendado.
                </p>
              </div>
              <div class="g-review-card">
                <div class="g-review-header">
                  <div class="g-avatar g-avatar-initial">C</div>
                  <div class="g-meta">
                    <div class="g-name">Camila Guevara</div>
                    <div class="g-date">2025-07-04</div>
                  </div>
                  <div class="g-google"><?php /* mismo SVG de arriba */ ?></div>
                </div>

                <div class="g-stars" aria-label="5 estrellas">
                  <?php for($i=0;$i<5;$i++): ?>
                    <svg viewBox="0 0 20 20"><path d="M10 1.5l2.47 5.01 5.53.8-4 3.9.94 5.49L10 14.91 5.06 16.7 6 11.2l-4-3.9 5.53-.8L10 1.5z"/></svg>
                  <?php endfor; ?>
                </div>

                <p class="g-text">
                  He recibido sesiones para tratar mi escoliosis y el dolor de espalda ha disminuido notablemente. Los ejercicios están ayudando a corregir mi columna y mejorar mi postura. ¡Totalmente recomendado!
                </p>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div  id="contacto"  class="site-section section-mapa pb-7">
      <div class="container">
        <div class="row mb-4">
          <div class="col-md-12 text-center">
            <h2 class="site-section-heading text-center font-secondary">Visitanos en Comas</h2>
            <p class="text-center mb-5">Nos ubicamos en la espalda de la pollería Gios, a media cuadra de la Universidad San Martín.</p>
          </div>
        </div>
        <div class="row">

          <div class="col-12 col-md-8 ">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3903.7156287004145!2d-77.06509762313993!3d-11.92486773964676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105d186e03e91c3%3A0xf7003b3439dd14a4!2sTherapy%20Flex!5e0!3m2!1ses-419!2spe!4v1753071847486!5m2!1ses-419!2spe" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
          <div class="col-12 col-md-4 mt-4">
            <h5 class="font-weight-bold">Contáctanos...</h5>
            <p><span class="icon icon-phone"></span> 920 830 776</p>
            <p><span class="icon icon-envelope"></span> contacto@therapyflex.pe</p>
            <p><span class="icon icon-map"></span> Av Trapiche, Mz E2 Lt 26, calle 24. Urb El Alamo</p>
            <p><span class="icon icon-map"></span> Atención en 2do Piso</p>
            <p><span class="icon icon-clock-o"></span> Lunes – Viernes: 9:00 a.m. – 7:00 p.m.</p>
            <p><span class="icon icon-clock-o"></span> Sábado: 8:00 a.m. – 4:00 p.m.</p>
            <a class="btn btn-primary btn-pill mt-4" href="https://wa.me/51920830776" role="button">
                <span> <span class="icon-whatsapp"></span> AGENDA TU CITA</span>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="block-cta-1 primary-overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_2.jpg);">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 mb-4 mb-lg-0">
            <h2 class="mb-3 mt-0 text-white">¡Agenda tu consulta gratuita hoy mismo!</h2>
            <p class="mb-0 text-white lead">Recibe atención personalizada desde tu primera visita.</p>
            <p class="mb-0 text-white lead"> Comienza tu camino hacia una vida sin dolor.</p>
          </div>
          <div class="col-lg-4">
            <p class="mb-0">
              <a href="<?php echo esc_url(home_url('/contacto')); ?>" class="btn btn-outline-white text-white btn-md btn-pill px-5 font-weight-bold btn-block">Contáctanos</a>
            </p>
          </div>
        </div>
      </div>
    </div>
               
<?php get_footer(); ?>
