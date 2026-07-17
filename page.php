<?php get_header(); ?>

<main id="contenido-principal" class="container container-page">
    <?php if(have_posts()){
            while(have_posts()){
                the_post(); ?>
            <h1 class="my-3"><?php echo esc_html(get_the_title()); ?></h1>

            <?php the_content(); ?>

         <?php }
    }?>
</main>

<?php get_footer(); ?>
