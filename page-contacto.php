<?php /* Template Name: Contacto */ ?>
<?php get_header(); ?>


    <div class="site-blocks-cover overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/banner-especialidades-3.jpg);" >

      <div class="container">
        <div class="row align-items-center">

          <div class="col-md-12">
            
            <div class="row mb-4">
              <div class="col-md-9">

                <div class="wp-block-uagb-info-box">
                    <div class="wrapper-slider">
                        <div
                            class="title-banner mb-4">
                            <h1>Contactanos</h1>
                        </div>
                    </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>  

    <div  id="contacto"  class="site-section section-mapa pb-7 d-none">
      <div class="container">
        <div class="row mb-4">
          <div class="col-md-12 text-center">
            <h2 class="site-section-heading text-center font-secondary">Visitanos en Comas</h2>
            <p class="text-center mb-5">Nos ubicamos en la espalda de la pollería Gios, a media cuadra de la Universidad San Martín.</p>
          </div>
        </div>
        <div class="row">

          <div class="col-12 col-md-8 ">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3903.7156287004145!2d-77.06509762313993!3d-11.92486773964676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105d186e03e91c3%3A0xf7003b3439dd14a4!2sTherapy%20Flex!5e0!3m2!1ses-419!2spe!4v1753071847486!5m2!1ses-419!2spe" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
          <div class="col-12 col-md-4 mt-4">
            <h5 class="font-weight-bold">Contáctanos...</h5>
            <p><span class="icon icon-phone"></span> 920 830 776</p>
            <p><span class="icon icon-envelope"></span> contacto@therapyflex.pe</p>
            <p><span class="icon icon-map"></span> Av Trapiche, Mz E2 Lt 26, calle 24. Urb El Alamo</p>
            <p><span class="icon icon-clock-o"></span> Lunes – Viernes: 9:00 a.m. – 7:00 p.m.</p>
            <p><span class="icon icon-clock-o"></span> Sábado: 8:00 a.m. – 4:00 p.m.</p>
            <a class="btn btn-primary btn-pill mt-4" href="https://wa.me/51920830776" role="button">
                <span> <span class="icon-whatsapp"></span> AGENDA TU CITA</span>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7 mb-5">
            <form action="#" class="box-contacto p-3 p-md-5">

              <div class="row form-group">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Nombres</label>
                  <input type="text" id="fname" class="form-control">
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="lname">Apellidos</label>
                  <input type="text" id="lname" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="email">Email</label> 
                  <input type="email" id="email" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Seleccione el asunto</label> 
                  <select id="subject" name="subject" class="form-control" required>
                    <option value="">Seleccione un asunto</option>
                    <option value="consulta_general">Consulta general</option>
                    <option value="consulta_cita">Consulta cita para fisioterapia</option>
                    <option value="consulta_domicilio">Solicitar fisioterapia a domicilio</option>
                    <option value="otro">Otro</option>
                  </select>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Mensaje</label> 
                  <textarea name="message" id="message" cols="30" rows="7" class="form-control"></textarea>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Hacer una cita" class="btn btn-pill btn-primary btn-md text-white">
                </div>
              </div>

            </form>
          </div>
          
          <div class="col-12 col-md-5 mt-4">
            <h5 class="font-weight-bold">Contáctanos...</h5>
            <p><span class="icon icon-phone"></span> 920 830 776</p>
            <p><span class="icon icon-envelope"></span> contacto@therapyflex.pe</p>
            <p><span class="icon icon-map"></span> Av Trapiche, Mz E2 Lt 26, calle 24. Urb El Alamo</p>
            <p><span class="icon icon-clock-o"></span> Lunes – Viernes: 9:00 a.m. – 7:00 p.m.</p>
            <p><span class="icon icon-clock-o"></span> Sábado: 8:00 a.m. – 4:00 p.m.</p>
            <a class="btn btn-primary btn-pill mt-4" href="https://wa.me/51920830776" role="button">
                <span> <span class="icon-whatsapp"></span> AGENDA TU CITA</span>
            </a>
          </div>
        </div>
        <!-- <div class="row">
          <div class="col-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3903.7156287004145!2d-77.06509762313993!3d-11.92486773964676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105d186e03e91c3%3A0xf7003b3439dd14a4!2sTherapy%20Flex!5e0!3m2!1ses-419!2spe!4v1753071847486!5m2!1ses-419!2spe" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div> -->
      </div>
      <div class="container-fluid mt-5">
        <div class="row">
          <div class="col-12">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3903.7156287004145!2d-77.06509762313993!3d-11.92486773964676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105d186e03e91c3%3A0xf7003b3439dd14a4!2sTherapy%20Flex!5e0!3m2!1ses-419!2spe!4v1753071847486!5m2!1ses-419!2spe" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
      </div>
    </div>

    <div class="block-cta-1 primary-overlay" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/hero_bg_2.jpg);">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-lg-7 mb-4 mb-lg-0">
            <h2 class="mb-3 mt-0 text-white">Hasta un 20% de descuento en tu primera sesión por Inaguración.</h2>
            <p class="mb-0 text-white lead">Recibe atención personalizada desde tu primera visita.</p>
            <p class="mb-0 text-white lead"> Comienza tu camino hacia una vida sin dolor.</p>
          </div>
          <div class="col-lg-4">
            <p class="mb-0"><a href="#" class="btn btn-outline-white text-white btn-md btn-pill px-5 font-weight-bold btn-block">Contáctanos</a></p>
          </div>
        </div>
      </div>
    </div>
               
<?php get_footer(); ?>
