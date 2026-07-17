# Cambios realizados

| Archivo | Cambio | Motivo | Impacto | Riesgo |
| ------- | ------ | ------ | ------- | ------ |
| `header.php` | Se cambio `<html lang>` por `language_attributes()` | Usar idioma configurado por WordPress | SEO/accesibilidad | Bajo |
| `header.php` | Se agrego skip link a `#contenido-principal` | Mejorar navegacion por teclado | Accesibilidad | Bajo |
| `header.php` | Se cambio el logo de `h1` a `div` | Evitar H1 vacio/duplicado | SEO/accesibilidad | Bajo |
| `header.php` | Toggle movil paso de enlace a boton con ARIA | Evitar `href="#"` y mejorar teclado | Accesibilidad/UX | Bajo |
| `footer.php` | Redes sociales y WhatsApp agregan `rel="noopener noreferrer"` | Seguridad para enlaces externos | Seguridad | Bajo |
| `footer.php` | WhatsApp se normalizo sin salto de linea y con tracking protegido | Evitar URL irregular y error si `fbq` no carga | UX/seguridad | Bajo |
| `footer.php` | Se agrego label accesible al formulario de suscripcion | Mejorar compatibilidad con lectores de pantalla | Accesibilidad | Bajo |
| `assets/css/style.css` | Se agregaron helpers de accesibilidad, focus visible y reduced motion | Mejorar navegacion por teclado y preferencias de usuario | Accesibilidad | Bajo |
| `assets/js/main.js` | Menu movil actualiza `aria-expanded` al abrir/cerrar | Mejorar estado accesible del menu | Accesibilidad | Bajo |
| `front-page.php` | Se agrego `<main id="contenido-principal">` | Mejorar semantica y soporte del skip link | SEO/accesibilidad | Bajo |
| `page-contacto.php` | Se agrego `<main id="contenido-principal">` | Mejorar semantica y soporte del skip link | SEO/accesibilidad | Bajo |
| `page-servicios.php` | Se agrego `<main id="contenido-principal">` | Mejorar semantica y soporte del skip link | SEO/accesibilidad | Bajo |
| `page.php` | Se agrego `main` con ID y escape en titulo | Mejorar semantica y salida segura | SEO/seguridad | Bajo |
| `single.php` | Se agrego `main` con ID y escape en titulo | Mejorar semantica y salida segura | SEO/seguridad | Bajo |
| `single-dolencia.php` | Se reemplazo contenedor por `main` y escape en titulo | Mejorar semantica y salida segura | SEO/seguridad | Bajo |
| `template-servicio.php` | Se reemplazo `get_header('interna')` por `get_header()` | Evitar header obsoleto sin `wp_head` y con links rotos | SEO/mantenibilidad | Bajo |
| `template-servicio.php` | Se agrego ID al `main` existente | Soporte para skip link | Accesibilidad | Bajo |
| `header-interna.php` | Se convirtio en wrapper legado que delega al header principal | Evitar duplicacion y mantener compatibilidad | Mantenibilidad | Bajo |
| `404.php` | Se agrego `main`, banner existente, H1 unico y CTA real | Corregir SEO/UX y recurso inexistente | SEO/UX | Bajo |
| `docs/auditoria-seo-geo-performance.md` | Nuevo documento de auditoria | Registrar diagnostico completo | Gestion | Ninguno |
| `docs/plan-optimizacion.md` | Nuevo plan priorizado | Guiar siguientes iteraciones | Gestion | Ninguno |

## Cambios previos considerados en esta auditoria

Durante correcciones previas del mismo hilo ya estaban aplicados:

- `wp_head()` y `wp_body_open()`.
- Titulo de home mediante filtro WordPress.
- Validacion nonce del formulario de contacto.
- Correccion de imagenes 404 (`banner-servicios.jpg`, `default.png`).
- Correccion de `alt` mal escrito.
- Correccion de IDs duplicados.
- Guard en `main-header.js` para evitar errores en paginas sin galeria.

