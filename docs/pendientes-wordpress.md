# Pendientes fuera del tema WordPress

Estos puntos no deben resolverse editando directamente el tema sin revisar la configuracion de WordPress, plugins o servidor.

## SEO

- Confirmar plugin SEO activo: Yoast, Rank Math, All in One SEO u otro.
- Configurar titles y meta descriptions por pagina.
- Verificar canonical para home, servicios, contacto y CPTs.
- Verificar Open Graph y Twitter Cards.
- Verificar sitemap XML.
- Enviar `wp-sitemap.xml` en Google Search Console; en el informe enviado no aparece ningun sitemap registrado.
- Revisar `robots.txt`.
- Revisar estructura de enlaces permanentes.
- Validar indexacion de CPT `dolencia` y posible CPT `producto`.
- Revisar en Search Console la URL exacta afectada por "Duplicada: el usuario no ha indicado ninguna version canonica" y ejecutar "Validar correccion" luego de subir el tema.
- Revisar la URL marcada como "Pagina con redireccion"; si redirige a la URL canonica correcta, no requiere correccion.
- Revisar las 17 URLs "Rastreada: actualmente sin indexar" y priorizar contenido util, enlaces internos y solicitud de indexacion solo para URLs importantes.

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
- Enviar sitemap en Search Console: `wp-sitemap.xml`.
- Validar en Search Console las correcciones de canonical despues del despliegue.
- Conectar GA4.
- Monitorear errores 404.
- Configurar backups automaticos.
- Definir flujo de staging/produccion.
