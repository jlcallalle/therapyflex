# Pendientes fuera del tema WordPress

Estos puntos no deben resolverse editando directamente el tema sin revisar la configuracion de WordPress, plugins o servidor.

## SEO

- Confirmar plugin SEO activo: Yoast, Rank Math, All in One SEO u otro.
- Configurar titles y meta descriptions por pagina.
- Verificar canonical para home, servicios, contacto y CPTs.
- Verificar Open Graph y Twitter Cards.
- Verificar sitemap XML.
- Revisar `robots.txt`.
- Revisar estructura de enlaces permanentes.
- Validar indexacion de CPT `dolencia` y posible CPT `producto`.

## SEO local

- Confirmar NAP definitivo:
  - Nombre comercial exacto.
  - Direccion unica y normalizada.
  - Telefono/WhatsApp.
  - Horarios.
- Confirmar URL oficial de Google Business Profile.
- Confirmar enlace "Como llegar" a Google Maps.
- Confirmar zonas de cobertura para terapia a domicilio.
- Confirmar profesional responsable y credenciales solo si son publicables/verificables.

## Analytics, cookies y tracking

- Revisar si GTM, Google tag y Meta Pixel estan duplicados por plugin o tema.
- Implementar consentimiento de cookies si corresponde.
- Verificar eventos de WhatsApp y formularios en GTM/GA4.

## Rendimiento

- Activar cache de pagina.
- Activar compresion Gzip/Brotli.
- Revisar cache de navegador.
- Optimizar imagenes en Media Library.
- Convertir imagenes grandes a WebP/AVIF.
- Evaluar CDN para produccion.
- Revisar carga de Google Fonts.

## Seguridad

- Retirar `db/` del tema antes de produccion.
- Retirar `html/`, maquetas y `node_modules` del paquete de produccion.
- Verificar permisos de archivos.
- Configurar backups fuera del webroot.
- Revisar actualizaciones de WordPress, plugins y tema.
- Configurar proteccion anti-spam para formularios.
- Revisar SMTP autenticado para `wp_mail`.

## Operacion

- Conectar Google Search Console.
- Conectar GA4.
- Monitorear errores 404.
- Configurar backups automaticos.
- Definir flujo de staging/produccion.

