# Plan de optimizacion - TherapyFlex

Estado Git antes de esta fase: se detectaron cambios previos en archivos del tema realizados durante correcciones anteriores del hilo. No se deben sobrescribir cambios ajenos; los cambios nuevos se aplicaran en archivos ya auditados y dentro del tema.

| ID | Tarea | Archivo | Problema | Solucion | Impacto | Esfuerzo | Riesgo | Prioridad | Validacion |
| -- | ----- | ------- | -------- | -------- | ------- | -------- | ------ | --------- | ---------- |
| TF-001 | Retirar SQL del deploy | `db/` | Backups SQL dentro del tema | No borrar ahora; documentar y excluir de produccion | Seguridad | Medio | Alto si se elimina local sin backup | Critica | Verificar que no se despliegue |
| TF-002 | Excluir maqueta/node_modules | `html/` | Maqueta y dependencias dentro del tema | Documentar exclusion de produccion | Seguridad/performance deploy | Medio | Medio | Critica | Revisar paquete final |
| TF-003 | Unificar header interno | `template-servicio.php` | Usa `header-interna.php` obsoleto | Cambiar a `get_header()` | SEO/compatibilidad | Bajo | Bajo | Alta | Abrir pagina de servicio |
| TF-004 | Corregir H1 duplicado | `header.php` | Logo en `h1` crea H1 vacio | Cambiar logo a `div` | SEO/accesibilidad | Bajo | Bajo | Alta | Contar H1 |
| TF-005 | Agregar semantica base | `header.php`, plantillas | Falta skip link y `main` | Agregar skip link e IDs principales | Accesibilidad/SEO | Medio | Bajo | Alta | DOM y teclado |
| TF-006 | Corregir 404 | `404.php` | Imagen inexistente, H1 multiple, CTA roto | Usar banner existente, H1 unico, enlaces reales | SEO/UX | Bajo | Bajo | Alta | Abrir URL inexistente |
| TF-007 | WhatsApp seguro | `footer.php`, plantillas | `_blank` sin rel y mensaje con salto | Agregar `rel`, normalizar URL | Seguridad/UX | Bajo | Bajo | Alta | DOM links |
| TF-008 | Mejorar `html` lang | `header.php` | `lang` hardcodeado | Usar `language_attributes()` | SEO/accesibilidad | Bajo | Bajo | Alta | Ver DOM |
| TF-009 | Encolar assets correctamente | `functions.php`, `header.php`, `footer.php` | Assets manuales y globales | Migrar progresivo a `wp_enqueue_*` | Performance/mantenibilidad | Alto | Medio | Media | Consola y render |
| TF-010 | Reducir JS global | `footer.php`, `main.js` | Librerias no usadas en todas las paginas | Carga condicional o defer | Performance | Medio | Medio | Media | Consola, menu, galeria |
| TF-011 | Optimizar imagenes | `assets/images/` | Imagenes multi-MB | Crear WebP/AVIF y tamanos responsive | LCP/peso | Alto | Medio | Alta | Comparar peso/render |
| TF-012 | Mejorar alt de thumbnails | WP media / plantillas | Imagenes de servicios sin alt desde media library | Fallback `alt` con titulo del servicio | Accesibilidad/SEO | Bajo | Bajo | Media | DOM images |
| TF-013 | FAQ visible para GEO | `front-page.php` | Falta Q&A directo | Agregar FAQ visible sin promesas medicas | GEO/conversion | Medio | Bajo | Media | Revisar contenido |
| TF-014 | Schema LocalBusiness | `functions.php` o template part | No hay JSON-LD del tema | Implementar solo si no duplica plugin SEO | SEO local/GEO | Medio | Medio | Media | Rich Results Test |
| TF-015 | NAP consistente | `front-page.php`, `page-contacto.php`, footer | Variantes de direccion/horario | Unificar textos visibles | SEO local | Medio | Bajo | Alta | Revision manual |
| TF-016 | Form suscripcion accesible | `footer.php` | Sin label visible | Agregar label screen-reader y `id` | Accesibilidad | Bajo | Bajo | Media | DOM/form |
| TF-017 | Menu movil ARIA | `header.php`, `main.js` | Toggle sin `aria-expanded` | Agregar atributos y actualizar estado | Accesibilidad | Medio | Medio | Media | Teclado/movil |
| TF-018 | Limpiar `custom.js` | `assets/js/custom.js` | Solo console log | No cargar/eliminar cuando assets migren | Mantenibilidad | Bajo | Bajo | Baja | Consola |
| TF-019 | Revisar CPT producto | `functions.php` | Texto "Platzi" y rubro no alineado | Confirmar uso antes de retirar | Mantenibilidad | Bajo | Medio | Baja | Admin/WP |
| TF-020 | 404 y fallback index | `index.php` | Fallback vacio | Crear loop minimo | Robustez | Bajo | Bajo | Media | Abrir archivos/fallback |

## Archivos a modificar en implementacion segura

- `header.php`: `language_attributes`, logo sin H1, skip link.
- `footer.php`: `rel` de WhatsApp, label accesible de suscripcion.
- `404.php`: imagen existente, H1 unico, CTA real.
- `template-servicio.php`: cambiar `get_header('interna')` por `get_header()`.
- `assets/css/style.css`: estilos de skip link/focus/reduced motion.
- `page.php`, `single.php`, `single-dolencia.php`, `page-contacto.php`, `page-servicios.php`, `front-page.php`: agregar `main` cuando sea de bajo riesgo.

## Cambios no automaticos en esta fase

- Borrar `db/`, `html/` o `node_modules`.
- Implementar schema si no se valida antes la presencia de plugin SEO.
- Rehacer toda la carga de assets.
- Comprimir o reemplazar imagenes originales sin revisar calidad visual.
