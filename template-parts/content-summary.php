<?php
/** Tarjeta de resultado para el loop principal de archivos y búsquedas. */
$summary_type = get_post_type();
$summary_type_object = get_post_type_object($summary_type);
$summary_label = $summary_type_object ? $summary_type_object->labels->singular_name : 'Publicación';
$summary_title = trim(get_the_title());
$summary_title = '' !== $summary_title ? $summary_title : 'Publicación sin título';
$summary_excerpt = wp_trim_words(wp_strip_all_tags(strip_shortcodes(get_the_excerpt())), 28, '…');
?>
<article id="post-<?php the_ID(); ?>" <?php post_class('blog-card tf-listing-card'); ?>>
  <?php if (has_post_thumbnail()) : ?>
    <a class="blog-card__media" href="<?php the_permalink(); ?>" aria-label="<?php echo esc_attr('Ver ' . $summary_title); ?>">
      <?php the_post_thumbnail('medium_large', array('class' => 'img-fluid', 'loading' => 'lazy')); ?>
    </a>
  <?php endif; ?>

  <div class="blog-card__content">
    <span class="section-kicker"><?php echo esc_html($summary_label); ?></span>
    <?php if ('post' === $summary_type) : ?>
      <time datetime="<?php echo esc_attr(get_the_date('c')); ?>"><?php echo esc_html(get_the_date('d/m/Y')); ?></time>
    <?php endif; ?>
    <h3><a href="<?php the_permalink(); ?>"><?php echo esc_html($summary_title); ?></a></h3>
    <?php if ('' !== $summary_excerpt) : ?>
      <p><?php echo esc_html($summary_excerpt); ?></p>
    <?php else : ?>
      <p>Si necesitas información, consulta nuestros servicios o contáctanos para coordinar una evaluación.</p>
    <?php endif; ?>
    <a class="blog-card__link" href="<?php the_permalink(); ?>" aria-label="<?php echo esc_attr('Ver ' . $summary_title); ?>">Ver publicación <span aria-hidden="true">→</span></a>
  </div>
</article>
