<?php get_header(); ?>

<main id="contenido-principal" class="container mt-5">
  <h1><?php echo esc_html(get_the_title()); ?></h1>

  <div class="contenido contenido-dolencia">
    <?php if (has_post_thumbnail()) : ?>
      <figure class="dolencia-featured-image">
        <?php the_post_thumbnail('medium', array('class' => 'img-fluid')); ?>
      </figure>
    <?php endif; ?>

    <?php the_content(); ?>
  </div>
</main>

<?php get_footer(); ?>
