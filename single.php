<?php get_header(); ?>

<main id="contenido-principal" class="container contenido-post my-3">
    <?php if(have_posts()){
            while(have_posts()){
                the_post();
            ?>
                <h1 class="contenido-post__title"><?php echo esc_html(get_the_title()); ?></h1>
                <div class="row contenido-post__layout">
                    <?php if (has_post_thumbnail()) : ?>
                        <div class="col-lg-4 mb-4 mb-lg-0">
                            <figure class="contenido-post__image">
                                <?php the_post_thumbnail('medium_large', array(
                                    'alt' => esc_attr(get_the_title() . ' - Therapy Flex Comas'),
                                    'loading' => 'eager',
                                )); ?>
                            </figure>
                        </div>
                    <?php endif; ?>
                    <div class="<?php echo has_post_thumbnail() ? 'col-lg-8' : 'col-lg-9 mx-auto'; ?>">
                        <div class="contenido-post__body">
                            <?php the_content(); ?>
                        </div>
                    </div>
                </div>
            <?php
            }
    } ?>

</main>
<?php get_footer(); ?>
