<?php
/** Formulario GET reutilizable; WordPress escapa el término al imprimirlo. */
$search_field_id = wp_unique_id('therapyflex-search-');
?>
<form role="search" method="get" class="tf-search-form" action="<?php echo esc_url(home_url('/')); ?>">
  <label for="<?php echo esc_attr($search_field_id); ?>">Buscar en Therapy Flex</label>
  <div class="tf-search-form__controls">
    <input type="search" id="<?php echo esc_attr($search_field_id); ?>" name="s" value="<?php echo get_search_query(); ?>" placeholder="Servicio, dolencia o artículo" class="form-control">
    <button type="submit" class="btn btn-primary">Buscar</button>
  </div>
</form>
