# Cambios SEO realizados en Therapy Flex

Este documento resume los cambios SEO aplicados al tema activo de WordPress ubicado en:

`D:\xampp\htdocs\therapyflex\wp-content\themes\therapyflex`

No se hizo commit, push ni despliegue. Los cambios quedaron como diff local para revision y versionado manual.

## Resumen

Se implementaron mejoras SEO tecnicas y de contenido en el tema:

- Meta descriptions dinamicas y especificas por tipo de pagina.
- Titulos internos mas orientados a busquedas locales en Comas.
- Open Graph y Twitter Cards para mejorar vistas previas al compartir enlaces.
- JSON-LD para negocio local/salud, sitio web, paginas, servicios y breadcrumbs.
- Correccion de textos alternativos en imagenes de servicios y galeria.
- Mejoras menores de accesibilidad en controles del lightbox.
- Optimizacion de bajo riesgo del `<head>` eliminando emoji scripts/styles y generator de WordPress cuando no aportan valor SEO.

## Cambios globales

### Metadatos

El archivo `header.php` dejo de construir la meta description inline. Ahora llama a:

`therapyflex_output_meta_description()`

Esa funcion se define en `functions.php` y evita que paginas internas como Servicios y Contacto generen:

`<meta name="description" content="">`

### Open Graph y Twitter Cards

Se agrego salida automatica de:

- `og:locale`
- `og:type`
- `og:site_name`
- `og:title`
- `og:description`
- `og:url`
- `og:image`
- `twitter:card`
- `twitter:title`
- `twitter:description`
- `twitter:image`

Estas etiquetas se omiten si se detecta un plugin SEO compatible como Yoast, Rank Math, AIOSEO o SEOPress.

### JSON-LD

Se agrego schema JSON-LD con:

- `LocalBusiness`
- `MedicalBusiness`
- `WebSite`
- `WebPage`
- `Service` en paginas de servicio
- `BreadcrumbList` en paginas internas

El negocio se identifica como `Therapy Flex`, con telefono, correo, direccion en Comas, horario y redes sociales.

### Assets de bajo riesgo

Se desactivaron en frontend:

- Script de deteccion de emojis de WordPress.
- Estilos de emojis de WordPress.
- Meta generator de WordPress.

Esto reduce ruido en el `<head>` sin cambiar la funcionalidad visible del sitio.

## Cambios por pagina

| Pagina / tipo | Title SEO | Meta description | Schema / proposito |
| --- | --- | --- | --- |
| Inicio | `Therapy Flex | Terapia Física y Rehabilitación en Comas` | Describe Therapy Flex como centro de terapia fisica y rehabilitacion en El Alamo, Comas, con fisioterapia, descarga muscular y terapia a domicilio. | `LocalBusiness`, `MedicalBusiness`, `WebSite`, `WebPage`. Refuerza entidad local y servicios principales. |
| Servicios | `Servicios de Terapia Física en Comas | Therapy Flex` | Presenta servicios de fisioterapia, rehabilitacion fisica, terapia pediatrica, geriatrica y deportiva en Comas. | `WebPage` y `BreadcrumbList`. Refuerza la pagina como hub de servicios. |
| Contacto | `Contacto y Citas de Terapia Física en Comas | Therapy Flex` | Invita a agendar cita por WhatsApp, correo o formulario para terapia fisica y rehabilitacion. | `WebPage` y `BreadcrumbList`. Refuerza intencion de conversion local. |
| Pagina de servicio | `{Nombre del servicio} en Comas | Therapy Flex` | Usa extracto si existe. Si no existe, genera fallback con el nombre del servicio, atencion personalizada, recuperacion de movilidad, alivio de dolor y bienestar. | `WebPage`, `Service` y `BreadcrumbList`. Define cada servicio como oferta local de Therapy Flex. |
| Dolencias | `{Nombre de la dolencia} en Comas | Therapy Flex` | Usa extracto si existe. Si no existe, genera fallback sobre informacion de la dolencia y opciones de rehabilitacion fisica en Therapy Flex Comas. | `WebPage` y `BreadcrumbList`. Mejora relevancia para busquedas de condiciones/dolencias. |

## Imagenes y accesibilidad

### Inicio

En `front-page.php`:

- Las cards dinamicas de servicios ahora fuerzan `alt` con el patron:
  - `{Nombre del servicio} en Therapy Flex Comas`
- Se corrigieron `alt` repetidos de la galeria que antes decian "Ubicacion de Therapy Flex..." aunque la imagen mostraba otro tratamiento.
- Se agregaron `aria-label` a botones del lightbox:
  - Cerrar imagen ampliada
  - Ver imagen anterior
  - Ver imagen siguiente

### Servicios

En `page-servicios.php`:

- Las imagenes destacadas del listado de servicios ahora fuerzan `alt` descriptivo:
  - `{Nombre del servicio} en Therapy Flex Comas`

### Pagina de servicio

En `template-servicio.php`:

- La imagen destacada del servicio ahora fuerza `alt` descriptivo:
  - `{Nombre del servicio} en Therapy Flex Comas`

## Archivos afectados

Implementacion SEO:

- `functions.php`
- `header.php`
- `front-page.php`
- `page-servicios.php`
- `template-servicio.php`

Documentacion:

- `SEO-CAMBIOS.md`

## Como comprobar localmente

1. Abrir el sitio local con XAMPP usando la URL local del proyecto.
2. Ver codigo fuente de estas paginas:
   - Inicio
   - `/servicios/`
   - `/contacto/`
   - Una pagina individual de servicio
   - Una dolencia, si esta disponible
3. Buscar en el `<head>`:
   - `<meta name="description"...>`
   - `og:title`
   - `og:description`
   - `twitter:card`
   - `<script type="application/ld+json">`
4. Validar que Servicios y Contacto ya no tengan meta description vacia.
5. Revisar una imagen destacada o de galeria y confirmar que el atributo `alt` sea descriptivo.

## Comandos de verificacion usados

Desde la raiz del tema:

```powershell
D:\xampp\php\php.exe -l functions.php
D:\xampp\php\php.exe -l header.php
D:\xampp\php\php.exe -l front-page.php
D:\xampp\php\php.exe -l page-servicios.php
D:\xampp\php\php.exe -l template-servicio.php
git diff --check
git status --short
```

Resultado:

- No se detectaron errores de sintaxis PHP en los archivos modificados.
- `git diff --check` no reporto errores de whitespace.
- Git mostro los cambios como modificaciones locales, sin commit.

## Nota de versionado

Los cambios quedaron en el checkout local del tema activo. No se hizo commit, push ni despliegue. Revisar el diff local antes de versionar.
