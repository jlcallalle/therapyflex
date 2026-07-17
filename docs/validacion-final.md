# Validacion final

## Pruebas realizadas

| Prueba | Resultado | Detalle |
| --- | --- | --- |
| PHP lint | OK | `functions.php`, `header.php`, `footer.php`, `front-page.php`, `page-contacto.php`, `page-servicios.php`, `page.php`, `single.php`, `single-dolencia.php`, `template-servicio.php`, `404.php`, `header-interna.php`. |
| Render local home | OK | `http://localhost/therapyflex/` carga sin errores recientes de consola. |
| Render local servicios | OK | `http://localhost/therapyflex/servicios/` carga sin errores recientes de consola. |
| Render local contacto | OK | `http://localhost/therapyflex/contacto/` carga sin errores recientes de consola. |
| Render local 404 | OK | `http://localhost/therapyflex/no-existe-codex/` carga 404 personalizada sin errores recientes de consola. |
| H1 principal | OK | Home, servicios, contacto y 404 reportan 1 H1. |
| `main#contenido-principal` | OK | Detectado en home, servicios, contacto y 404. |
| Skip link | OK | Detectado en home, servicios, contacto y 404. |
| `language_attributes()` | OK | DOM reporta `lang="es-PE"`. |
| Enlaces `href="#"` | OK | No se detectan enlaces `href="#"` en paginas validadas. |
| Enlaces externos `_blank` | OK | No se detectan enlaces `_blank` sin `rel` en paginas validadas. |
| IDs duplicados | OK | No se detectan IDs duplicados en paginas validadas. |
| Consola navegador | OK | Sin errores/warnings recientes en paginas validadas. |
| Menu movil ARIA | OK parcial | Boton detectado con `aria-label`, `aria-controls` y `aria-expanded`. Interaccion movil visual queda pendiente. |

## Problemas encontrados y corregidos

- H1 duplicado por logo: corregido.
- Falta de `main`: corregido en plantillas principales.
- Falta de skip link: corregido.
- `header-interna.php` obsoleto usado por plantilla de servicio: corregido.
- 404 con recurso inexistente y CTA roto: corregido.
- Enlaces externos sin `rel`: corregido.
- Toggle movil como enlace vacio: corregido a boton.

## Problemas encontrados y no corregidos en esta fase

- Imagenes muy pesadas en `assets/images`.
- Carpetas `db/`, `html/` y `html/node_modules/` dentro del tema.
- Carga global de muchas librerias JS/CSS.
- Alt vacios en imagenes subidas a la media library de WordPress; deben corregirse en admin o con fallback por plantilla.
- Posible duplicacion de etiquetas/analytics por plugins externos: pendiente de validar fuera del tema.

## Pruebas no disponibles

- `node --check`: no disponible porque `node` no esta en PATH de PowerShell.
- Lighthouse/Core Web Vitals: no ejecutado con herramienta local disponible.
- PageSpeed Insights: no aplica a URL local.
- Search Console: requiere sitio publicado y propiedad verificada.
- Rich Results Test: requiere HTML final publico o pegar codigo manualmente.
- Validacion movil visual real: el viewport override del navegador integrado no reflejo el ancho movil esperado.

## Validaciones pendientes

- Ejecutar Lighthouse en Chrome sobre local o staging.
- Validar mobile real en Chrome DevTools.
- Validar formularios con envio controlado en entorno de pruebas.
- Revisar Google Business Profile, sitemap, robots y plugin SEO.
- Comprimir/convertir imagenes y comparar peso antes/despues.

