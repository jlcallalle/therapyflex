# Recomendaciones para produccion

## Dominio y HTTPS

- Usar dominio definitivo con HTTPS obligatorio.
- Redirigir HTTP a HTTPS.
- Definir canonical entre `www` y sin `www`.
- Revisar redirecciones desde URLs antiguas si existen.

## SEO tecnico

- Configurar plugin SEO antes de publicar schemas desde el tema.
- Enviar sitemap a Search Console.
- Validar `robots.txt`.
- Revisar titulos y metas de home, servicios, contacto y paginas hijas.
- Validar Open Graph con herramientas de Facebook/LinkedIn.

## SEO local

- Normalizar NAP en todo el sitio.
- Enlazar Google Business Profile oficial.
- Agregar pagina o bloque "Como llegar" con referencias reales.
- Mantener horarios actualizados.
- No publicar credenciales, resenas o calificaciones sin respaldo verificable.

## GEO

- Agregar FAQs visibles y utiles para consultas frecuentes:
  - Donde queda TherapyFlex.
  - Que servicios ofrece.
  - Como reservar por WhatsApp.
  - Que es descarga muscular.
  - Si se ofrece terapia a domicilio.
- Mantener lenguaje claro, local y sin promesas de curacion.
- Agregar fecha de actualizacion solo si habra mantenimiento editorial.

## Performance

- Optimizar imagenes grandes antes de deploy.
- Crear versiones WebP/AVIF.
- Revisar hero como posible LCP.
- Cargar scripts solo donde se necesitan.
- Deferir JS no critico despues de validar menu, mapas y formularios.
- Revisar si jQuery UI, Stellar, Countdown, Magnific y Owl siguen siendo necesarios.
- Ejecutar Lighthouse en staging.

## Seguridad

- No desplegar `db/`, `html/`, `node_modules`, demos ni backups.
- Usar SMTP autenticado para correos.
- Agregar proteccion anti-spam al formulario.
- Mantener WordPress/plugins actualizados.
- Configurar backups externos y restauracion probada.

## Monitoreo

- Activar Search Console.
- Activar GA4/GTM con consentimiento.
- Medir clics en WhatsApp, llamadas y formularios.
- Monitorear Core Web Vitals.
- Revisar logs de errores PHP y 404.

