<?php
/**
 * Presentación común para archivos, búsquedas y el índice de respaldo.
 * Usa el loop principal: conserva filtros, orden y paginación de WordPress.
 */
$listing_title = 'Publicaciones';
$listing_intro = 'Explora las publicaciones de Therapy Flex y encuentra información sobre nuestros servicios.';
$listing_kicker = 'Therapy Flex';

if (is_search()) {
    $listing_title = 'Resultados de búsqueda';
    $listing_intro = '' !== get_search_query(false)
        ? sprintf('Resultados para «%s». Puedes cambiar los términos de tu búsqueda.', get_search_query(false))
        : 'Escribe un servicio, una dolencia o un tema que quieras consultar.';
    $listing_kicker = 'Buscar';
} elseif (is_post_type_archive('dolencia')) {
    $listing_title = 'Dolencias';
    $listing_intro = 'Consulta el listado de dolencias del sitio. Para conocer nuestros servicios o coordinar una evaluación, visita Servicios o Contacto.';
    $listing_kicker = 'Información para pacientes';
} elseif (is_category()) {
    $listing_title = single_cat_title('', false);
    $listing_intro = 'Artículos del blog agrupados en esta categoría. Explora las publicaciones o busca otro tema.';
    $listing_kicker = 'Blog';
} elseif (is_home()) {
    $listing_title = 'Blog';
    $listing_intro = 'Publicaciones sobre fisioterapia, rehabilitación y cuidado del movimiento.';
    $listing_kicker = 'Artículos';
} elseif (is_archive()) {
    $listing_title = wp_strip_all_tags(get_the_archive_title());
    $listing_intro = 'Explora las publicaciones de este archivo o busca otro tema en el sitio.';
    $listing_kicker = 'Archivo';
}

get_header();
?>

<main id="contenido-principal" class="tf-listing page-blog">
  <div class="site-blocks-cover overlay" style="background-image: url(<?php echo esc_url(get_template_directory_uri() . '/assets/images/banner-servicios.jpg'); ?>);">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-10">
          <div class="title-banner mb-4">
            <h1><?php echo esc_html($listing_title); ?></h1>
            <p class="intro-text"><?php echo esc_html($listing_intro); ?></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section class="site-section blog-listado" aria-labelledby="tf-listing-heading">
    <div class="container">
      <nav class="tf-listing__navigation" aria-label="Navegación de contenidos">
        <a href="<?php echo esc_url(home_url('/')); ?>">Inicio</a>
        <a href="<?php echo esc_url(home_url('/servicios/')); ?>">Servicios</a>
        <a href="<?php echo esc_url(home_url('/blog/')); ?>">Blog</a>
        <a href="<?php echo esc_url(home_url('/contacto/')); ?>">Contacto</a>
      </nav>

      <div class="tf-listing__toolbar">
        <div>
          <span class="section-kicker"><?php echo esc_html($listing_kicker); ?></span>
          <h2 class="site-section-heading" id="tf-listing-heading"><?php echo is_search() ? 'Resultados' : 'Explora las publicaciones'; ?></h2>
        </div>
        <?php get_search_form(); ?>
      </div>

      <?php if (have_posts()) : ?>
        <div class="blog-listado__grid">
          <?php while (have_posts()) : the_post(); ?>
            <?php get_template_part('template-parts/content', 'summary'); ?>
          <?php endwhile; ?>
        </div>

        <?php if ($GLOBALS['wp_query']->max_num_pages > 1) : ?>
          <nav class="blog-pagination tf-listing__pagination" aria-label="Páginas de resultados">
            <?php
            echo paginate_links(array(
                'total' => $GLOBALS['wp_query']->max_num_pages,
                'current' => max(1, (int) get_query_var('paged')),
                'prev_text' => 'Anterior',
                'next_text' => 'Siguiente',
                'before_page_number' => '<span class="screen-reader-text">Página </span>',
            ));
            ?>
          </nav>
        <?php endif; ?>
      <?php else : ?>
        <div class="blog-empty tf-listing__empty">
          <h3><?php echo is_search() ? 'No encontramos resultados' : 'Todavía no hay publicaciones en este listado'; ?></h3>
          <p><?php echo is_search() ? 'Prueba con otra palabra o consulta los servicios disponibles. También puedes escribirnos para coordinar una evaluación.' : 'Puedes explorar el blog, conocer nuestros servicios o contactarnos para coordinar una evaluación.'; ?></p>
          <a class="btn btn-primary btn-pill" href="<?php echo esc_url(home_url('/servicios/')); ?>">Ver servicios</a>
          <a class="tf-listing__contact" href="<?php echo esc_url(home_url('/contacto/')); ?>">Contactar con Therapy Flex</a>
        </div>
      <?php endif; ?>
    </div>
  </section>
</main>

<?php get_footer(); ?>
