<?php /* Template Name: Nosotros */ ?>
<?php get_header(); ?>

<main id="contenido-principal" class="page-interna page-nosotros">

  <div class="site-blocks-cover overlay" style="background-image: url(<?php echo esc_url(get_template_directory_uri() . '/assets/images/servicio.png'); ?>);">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <div class="wp-block-uagb-info-box">
            <div class="wrapper-slider">
              <div class="title-banner mb-4">
                <h1>Nosotros</h1>
                <p class="intro-text">Conoce Therapy Flex y el enfoque de atenci&oacute;n de la Lic. Liz Tananta.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section class="site-section nosotros-intro">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <span class="section-kicker">Therapy Flex Comas</span>
          <h2 class="site-section-heading">Terapia fisica con trato cercano y seguimiento personalizado</h2>
          <p>
            Therapy Flex es un centro de terapia fisica y rehabilitacion ubicado en Comas. Nuestro trabajo se enfoca en ayudar a cada paciente a aliviar el dolor, recuperar movilidad y retomar sus actividades con mayor seguridad.
          </p>
          <p>
            Atendemos casos de rehabilitacion fisica, fisioterapia deportiva, terapia pediatrica, terapia geriatrica, descarga muscular y acompa&ntilde;amiento terapeutico segun la evaluacion inicial de cada persona.
          </p>
          <div class="nosotros-actions">
            <a class="btn btn-primary btn-pill px-4" href="<?php echo esc_url(home_url('/contacto')); ?>">Agendar una cita</a>
            <a class="nosotros-link" href="<?php echo esc_url(home_url('/servicios')); ?>">Ver servicios</a>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="nosotros-media">
            <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/liz_tananta.png'); ?>" alt="Licenciada Liz Tananta de Therapy Flex Comas" width="720" height="540" loading="eager">
          </div>
        </div>
      </div>
    </div>
  </section>

 

  <section class="site-section nosotros-bio">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-5 mb-4 mb-lg-0">
          <div class="nosotros-bio-card">
            <span class="section-kicker">Direccion profesional</span>
            <h2>Lic. Liz Tananta</h2>
            <p class="nosotros-role">Licenciada en terapia fisica y rehabilitacion</p>
            <p>
              Liz Tananta acompa&ntilde;a a los pacientes de Therapy Flex con una atencion clara, humana y orientada a objetivos. Su enfoque combina evaluacion, terapia manual, ejercicio terapeutico y educacion del paciente para favorecer una recuperacion progresiva.
            </p>
          </div>
        </div>
        <div class="col-lg-7">
          <div class="nosotros-values">
            <div class="nosotros-value">
              <span class="icon-check" aria-hidden="true"></span>
              <div>
                <h3>Evaluacion antes del tratamiento</h3>
                <p>Cada plan inicia con una revision del dolor, movilidad, antecedentes y actividades que el paciente necesita recuperar.</p>
              </div>
            </div>
            <div class="nosotros-value">
              <span class="icon-check" aria-hidden="true"></span>
              <div>
                <h3>Tratamiento personalizado</h3>
                <p>Las sesiones se adaptan al diagnostico funcional, tolerancia y progreso de cada persona.</p>
              </div>
            </div>
            <div class="nosotros-value">
              <span class="icon-check" aria-hidden="true"></span>
              <div>
                <h3>Acompa&ntilde;amiento cercano</h3>
                <p>El objetivo es que el paciente entienda su proceso, se mueva con confianza y mantenga habitos que apoyen su bienestar.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

   <section class="site-section nosotros-tecnologia">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <h2>Tecnologia moderna y protocolos avanzados</h2>
          <p>
            En Therapy Flex utilizamos equipos actualizados y tecnicas fisioterapeuticas orientadas a acelerar la recuperacion, aliviar el dolor y mejorar los resultados del tratamiento.
          </p>

          <div class="nosotros-tech-list">
            <h3>Terapias con tecnologia avanzada</h3>
            <ul>
              <li>Magnetoterapia</li>
              <li>Terapia combinada: ultrasonido y corrientes analgesicas</li>
              <li>Electroacupuntura y neuromodulacion</li>
              <li>Puncion seca</li>
              <li>Ejercicios terapeuticos personalizados</li>
            </ul>
          </div>

          <div class="nosotros-tech-note">
            <h3>Espacios modernos y seguros</h3>
            <p>
              Contamos con un ambiente comodo, seguro y equipado para trabajar tu rehabilitacion fisica con confianza.
            </p>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="nosotros-tech-media">
            <img src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/terapia-combinada.jpg'); ?>" alt="Terapia combinada con equipo de electroterapia en Therapy Flex Comas" width="720" height="540" loading="lazy">
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="site-section nosotros-cta">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-8">
          <h2>Recibe una evaluacion en Therapy Flex</h2>
          <p>Agenda una cita en nuestra sede de Comas y cuentanos que molestia o lesion deseas tratar.</p>
        </div>
        <div class="col-lg-4 text-lg-right">
          <a class="btn btn-primary btn-pill px-5" href="<?php echo esc_url(home_url('/contacto')); ?>">Contactanos</a>
        </div>
      </div>
    </div>
  </section>

</main>

<?php get_footer(); ?>
