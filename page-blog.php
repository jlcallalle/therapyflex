<?php /* Template Name: Blog */ ?>
<?php get_header(); ?>

<main id="contenido-principal" class="page-interna page-blog">

  <div class="site-blocks-cover overlay" style="background-image: url(<?php echo esc_url(get_template_directory_uri() . '/assets/images/banner-servicios.jpg'); ?>);">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <div class="wp-block-uagb-info-box">
            <div class="wrapper-slider">
              <div class="title-banner mb-4">
                <h1>Blog</h1>
                <p class="intro-text">Consejos y contenidos sobre terapia fisica, rehabilitacion y cuidado del movimiento.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section class="site-section blog-listado">
    <div class="container">
      <div class="row mb-5">
        <div class="col-lg-8">
          <span class="section-kicker">Articulos</span>
          <h2 class="site-section-heading">Entradas recientes de Therapy Flex</h2>
          <p class="blog-listado__intro">Informacion util para pacientes, familias y personas que buscan recuperarse con acompanamiento profesional.</p>
        </div>
      </div>

      <?php
      $blog_posts = new WP_Query(array(
        'post_type' => 'post',
        'post_status' => 'publish',
        'posts_per_page' => 9,
        'paged' => max(1, get_query_var('paged')),
      ));
      ?>

      <?php if ($blog_posts->have_posts()) : ?>
        <div class="blog-listado__grid">
          <?php while ($blog_posts->have_posts()) : $blog_posts->the_post(); ?>
            <article class="blog-card">
              <a class="blog-card__media" href="<?php the_permalink(); ?>" aria-label="<?php echo esc_attr('Leer ' . get_the_title()); ?>">
                <?php if (has_post_thumbnail()) : ?>
                  <?php the_post_thumbnail('large', array(
                    'class' => 'img-fluid',
                    'alt' => esc_attr(get_the_title() . ' - Therapy Flex Comas'),
                  )); ?>
                <?php else : ?>
                  <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/servicio.png'); ?>" alt="<?php echo esc_attr(get_the_title() . ' - Therapy Flex Comas'); ?>" width="720" height="540" loading="lazy">
                <?php endif; ?>
              </a>

              <div class="blog-card__content">
                <time datetime="<?php echo esc_attr(get_the_date('c')); ?>"><?php echo esc_html(get_the_date('d/m/Y')); ?></time>
                <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                <p><?php echo esc_html(wp_trim_words(get_the_excerpt() ?: get_the_content(), 24, '...')); ?></p>
                <a class="blog-card__link" href="<?php the_permalink(); ?>">Leer articulo</a>
              </div>
            </article>
          <?php endwhile; ?>
        </div>

        <div class="blog-pagination">
          <?php
          echo paginate_links(array(
            'total' => $blog_posts->max_num_pages,
            'current' => max(1, get_query_var('paged')),
            'prev_text' => 'Anterior',
            'next_text' => 'Siguiente',
          ));
          ?>
        </div>
      <?php else : ?>
        <div class="blog-empty">
          <h2>Pronto publicaremos nuevos articulos</h2>
          <p>Estamos preparando contenido sobre terapia fisica, rehabilitacion y prevencion de lesiones.</p>
          <a class="btn btn-primary btn-pill px-4" href="<?php echo esc_url(home_url('/contacto')); ?>">Agendar una cita</a>
        </div>
      <?php endif; ?>

      <?php wp_reset_postdata(); ?>
    </div>
  </section>

</main>

<?php get_footer(); ?>
