<?php get_header(); ?>

<div class="container mt-5">
  <h1><?php the_title(); ?></h1>

  <?php if (has_post_thumbnail()) : ?>
    <div class="mb-4">
      <?php the_post_thumbnail('large', ['class' => 'img-fluid']); ?>
    </div>
  <?php endif; ?>

  <div class="contenido">
    <?php the_content(); ?>
  </div>
</div>

<?php get_footer(); ?>
