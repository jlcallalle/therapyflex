<?php get_header(); ?>

<main id="contenido-principal" class="container mt-5">
  <h1><?php echo esc_html(get_the_title()); ?></h1>

  <?php if (has_post_thumbnail()) : ?>
    <div class="mb-4">
      <?php the_post_thumbnail('large', ['class' => 'img-fluid']); ?>
    </div>
  <?php endif; ?>

  <div class="contenido">
    <?php the_content(); ?>
  </div>
</main>

<?php get_footer(); ?>
