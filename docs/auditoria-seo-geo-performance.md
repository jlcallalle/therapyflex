# Auditoria SEO, GEO, performance y accesibilidad - TherapyFlex

Fecha: 2026-07-16  
Entorno auditado: WordPress local en `http://localhost/therapyflex/`  
Alcance: tema personalizado `therapyflex`; no se audito nucleo, plugins ni configuracion de servidor salvo lo observable desde el frontend local.

## 1. Resumen ejecutivo

El tema comunica de forma clara el servicio principal de TherapyFlex y contiene senales locales utiles para Comas, Retablo, telefono, WhatsApp, direccion, horario y mapa. Sin embargo, la estructura tecnica todavia arrastra patrones de maqueta HTML: carga manual de muchos assets en todas las paginas, encabezados duplicados por el logo, falta de `main` y skip link, plantillas antiguas sin actualizar, una pagina 404 con imagen inexistente y CTA roto, y archivos de desarrollo/base de datos dentro del tema.

Los problemas mas importantes para produccion son:

- Carpetas y archivos no propios de un tema distribuible: `db/`, `html/node_modules/`, maquetas HTML y respaldos SQL.
- Carga global de JavaScript/CSS no usado en todas las paginas.
- Imagenes muy pesadas en `assets/images`, varias entre 1.7 MB y 7.6 MB.
- Semantica incompleta: no hay `main`, skip link, ni jerarquia limpia de H1.
- Dependencia de informacion externa no validada: SEO plugin, schema existente, sitemap, robots y Google Business Profile.

## 2. Puntuacion del estado actual

| Area | Puntaje inicial | Puntaje tras fixes previos | Observacion |
| --- | ---: | ---: | --- |
| SEO tecnico | 58/100 | 70/100 | Ya existen `wp_head`, `wp_footer`, `wp_body_open`, `title-tag`; falta semantica y revisar duplicacion con plugins. |
| SEO local | 65/100 | 72/100 | NAP visible, mapa, telefono y WhatsApp; faltan GBP oficial, schema validado y consistencia en todas las plantillas. |
| GEO | 45/100 | 52/100 | Hay entidades locales, pero faltan respuestas directas, FAQs visibles, autor/actualizacion y datos estructurados verificados. |
| Performance | 35/100 | 42/100 | Imagenes pesadas y JS/CSS global. No se pudo ejecutar Lighthouse local desde herramienta disponible. |
| Accesibilidad | 42/100 | 50/100 | Formularios principales tienen labels, pero faltan skip link, focus visible, un solo H1, rel seguro y menu movil con ARIA. |
| Seguridad | 50/100 | 62/100 | Se agrego nonce al contacto; persisten SQL/maquetas/node_modules dentro del tema y formularios dependen de `wp_mail`. |
| Mantenibilidad | 40/100 | 48/100 | Plantillas monoliticas, assets manuales, codigo comentado y duplicacion de maqueta. |

## 3. Inventario tecnico

| Archivo | Funcion | Estado | Problemas | Riesgo | Recomendacion |
| --- | --- | --- | --- | --- | --- |
| `style.css` | Metadatos del tema y CSS de prueba | Activo como metadata | Contiene reglas de borde/debug; no debe cargarse visualmente | Medio | Limpiar reglas de prueba o mover a CSS real si se decide encolar. |
| `functions.php` | Soportes WP, CPTs, taxonomias, formularios | Funcional | Funcion `assets()` vacia por carga manual; CPT `producto` no parece alineado al negocio; textos de ejemplo | Medio | Consolidar assets con enqueue; revisar si `producto` se usa. |
| `header.php` | Cabecera principal | Mejorado | Carga assets manualmente; GTM/Pixel hardcoded; logo dentro de H1 crea H1 vacio | Alto | Usar `language_attributes`, cambiar logo a `div`, skip link y enqueues. |
| `footer.php` | Footer, suscripcion, WhatsApp, scripts | Funcional | Scripts globales, enlace WhatsApp sin `rel`, form sin label visible, mucho JS no usado | Alto | Versionar/defer scripts, rel seguro, label accesible. |
| `front-page.php` | Home | Funcional | Monolitica, sin `<main>`, imagenes grandes, FAQ inexistente, Trustindex via shortcode | Alto | Agregar `main`, estructura GEO, optimizar imagenes, controlar shortcode. |
| `page-contacto.php` | Contacto | Funcional | Sin `<main>`, mapa iframe pesado, CTA correcto pero WhatsApp sin medicion uniforme | Medio | Lazy iframe ya esta; agregar main y conversion microcopy. |
| `page-servicios.php` | Listado servicios | Funcional | Sin `<main>`, H1 extra por logo, imagenes sin alt en media library | Medio | Mejorar semantica y fallback alt en thumbnails. |
| `template-servicio.php` | Pagina individual de servicio | Riesgo | Usa `get_header('interna')`, que esta desactualizado; formulario sin procesamiento | Alto | Cambiar a header principal y convertir formulario a CTA real o documentar. |
| `header-interna.php` | Header alternativo | Obsoleto/riesgo | `lang="en"`, sin `wp_head`, assets duplicados, links `#`, titulo hardcodeado | Alto | Dejar de usar o unificar con `header.php`. |
| `header2.php` | Header antiguo | Obsoleto | Sin uso confirmado | Bajo | Mover fuera del tema o documentar como legado. |
| `page.php` | Pagina generica | Basica | Sin escape en titulo, `the_content` correcto; clase debug `container-page` | Medio | Agregar `main id`, `esc_html`, revisar clase. |
| `single.php` | Entradas/productos | Basica | Imagen sin alt explicito, layout fijo `col-6`, sin `article` | Medio | Mejorar semantica y responsive. |
| `single-dolencia.php` | Detalle dolencia | Basica | Sin `main/article`, H1 correcto, imagen sin alt controlado | Medio | Mejorar semantica. |
| `404.php` | Pagina 404 | Problematica | Imagen 404 previa inexistente, multiples H1, CTA `#` | Alto | Corregir hero, H1 unico, CTA a contacto/servicios. |
| `index.php` | Fallback WP | Vacio | Puede mostrar pagina vacia si se usa fallback | Alto | Agregar fallback minimo o redirigir a `page.php`/loop. |
| `assets/css/style.css` | CSS principal | Funcional | Grande, contiene reglas especificas, sin estrategia critica/no critica | Medio | Auditar CSS no usado y agregar accesibilidad/focus. |
| `assets/js/main.js` | Interacciones generales | Funcional con deuda | Inicializa plugins aunque no existan; usa jQuery y librerias pesadas | Alto | Dividir por plantilla y proteger inicializadores. |
| `assets/js/main-header.js` | Lightbox galeria | Mejorado | Antes fallaba sin galeria; ahora tiene guard | Bajo | Mantener versionado. |
| `assets/js/custom.js` | JS custom | Innecesario | Solo `console.log` | Bajo | No cargar o eliminar si no se usa. |
| `assets/images/` | Imagenes del tema | Muy pesado | Varias imagenes 1.7-7.6 MB | Alto | Generar WebP/AVIF y tamanos responsive. |
| `assets/fonts/` | Icon fonts | Pesado | `selection.json` y demos dentro de tema | Medio | Mantener solo fuentes necesarias para produccion. |
| `html/` | Maqueta original | No deberia estar en tema final | Incluye `node_modules`, HTML duplicado y assets | Alto | Excluir del deploy/tema final. |
| `db/` | Backups SQL | No deberia estar en tema | Puede exponer datos si se despliega | Critico | Retirar del tema antes de produccion. |

## 4. Problemas criticos

| Severidad | Hallazgo | Evidencia | Recomendacion |
| --- | --- | --- | --- |
| Critico | Backups SQL dentro del tema | `db/*.sql`, `db/03-05-26/*.sql` | No desplegar en produccion. Mover fuera del webroot/tema. |
| Alto | `html/node_modules` y maqueta dentro del tema | `html/node_modules/*`, `html/*.html` | Excluir de deploy, limpiar repositorio o ignorar. |
| Alto | `header-interna.php` obsoleto aun usado por `template-servicio.php` | `get_header('interna')` | Usar `get_header()` unificado. |
| Alto | H1 duplicado por logo | Render local muestra H1 vacio + H1 de contenido | Cambiar logo de `h1` a `div`. |
| Alto | JS/CSS global excesivo | Footer carga jQuery, UI, Stellar, Magnific, Countdown, Waypoints en todas las paginas | Cargar condicionalmente o deferir donde sea seguro. |

## 5. SEO tecnico

Puntos correctos:

- `add_theme_support('title-tag')` activo.
- `wp_head()`, `wp_footer()` y `wp_body_open()` presentes en header/footer principal.
- `body_class()` presente.
- Titulo de home personalizado mediante filtro WP.
- `meta viewport` presente.

Problemas:

- `html` usa `lang="es"` hardcodeado en lugar de `language_attributes()`.
- H1 duplicado por logo en cabecera.
- Falta `main` en home, servicios, contacto y 404.
- Muchos enlaces internos eran `#`; se corrigieron varios, pero el menu movil conserva uno tecnico para toggle.
- No hay breadcrumbs consistentes salvo `template-servicio.php`.
- No hay schema JSON-LD propio del tema.
- Canonical, meta robots, Open Graph y Twitter Cards dependen de plugins/configuracion externa: pendiente de validacion externa.

## 6. SEO local

Datos visibles encontrados:

- Nombre: Therapy Flex / TherapyFlex.
- Zona: Comas, Retablo, Urb. El Alamo.
- Direccion visible: `Urb el Alamo, Mz E2 Lt 26, Calle 24 - Piso 02` y variantes con `Av Trapiche, Mz E2 Lt 26, calle 24. Urb El Alamo`.
- Telefono/WhatsApp: `920 830 776`, enlace `wa.me/51920830776`.
- Email: `contacto@therapyflex.pe`.
- Horarios: lunes a viernes 9:00 a.m. - 7:00 p.m.; sabado 8:00 a.m. - 4:00 p.m.; en home aparece `Lun-Sab 9:AM - 7PM`, inconsistente.
- Mapa embebido de Google Maps.
- Enlaces sociales: Facebook, Instagram, TikTok.

Pendiente:

- URL oficial de Google Business Profile.
- Confirmar NAP unico y definitivo.
- Confirmar nombre de profesional responsable y credenciales verificables antes de publicarlas o estructurarlas.

## 7. GEO

Fortalezas:

- H1 de home responde al servicio principal: terapia fisica y rehabilitacion en Comas.
- Secciones de servicios y galeria aportan contexto local.
- Hay senales de ubicacion, horario y contacto.

Oportunidades:

- Agregar respuestas visibles y breves tipo FAQ para consultas frecuentes.
- Definir `Therapy Flex` como centro de terapia fisica en Retablo, Comas sin prometer curacion.
- Explicar servicios como descarga muscular, fisioterapia deportiva y terapia a domicilio con lenguaje claro.
- Agregar fechas de actualizacion solo si se gestionan editorialmente.
- Agregar datos estructurados solo con informacion visible y validada.

## 8. Propuesta de datos estructurados

No se implementa schema automaticamente en esta fase por riesgo de duplicacion con plugins SEO no auditados.

| Tipo | Pagina | Propiedades | Fuente visible | Riesgo de duplicacion |
| --- | --- | --- | --- | --- |
| `LocalBusiness` o subtipo medico apropiado | Home/contacto | name, url, telephone, email, address, openingHours, sameAs | Header/footer/contacto/mapa/sociales | Medio si Yoast/RankMath/Site Kit ya lo generan |
| `Service` | Servicios/servicio | name, areaServed, provider | Paginas hijas de servicios | Bajo-medio |
| `BreadcrumbList` | Servicios internos | Home > Servicios > Servicio | Breadcrumb en `template-servicio.php` | Medio si plugin SEO activo |
| `FAQPage` | Home o servicios | Preguntas y respuestas visibles | Requiere agregar FAQs visibles | Bajo si no hay plugin que duplique FAQs |

Validar antes en produccion: Rich Results Test y Search Console.

## 9. Performance y Core Web Vitals

Hallazgos verificables:

- Imagenes de galeria y contenido muy pesadas: `fractura.jpg` 7.6 MB, `domicilio.jpg` 5.5 MB, `ejericios.jpg` 4.5 MB, varias >2 MB.
- CSS bloqueante: Google Fonts, Bootstrap, jQuery UI, Owl CSS, style.css y CSS de bloques WP.
- JS bloqueante/no diferido: jQuery local, jQuery UI, Bootstrap, Owl, Stellar, Countdown, Magnific, AnimateNumber, Waypoints y `main.js`.
- Google Maps iframe impacta contacto/home; usa `loading="lazy"`, correcto.
- GTM, gtag y Meta Pixel agregan coste externo; pendiente validar necesidad/duplicacion.
- LCP probable: hero background `hero_bg_3.jpg` o banner; al ser background CSS no tiene `fetchpriority`/dimensiones.

No disponible:

- Lighthouse, LCP, INP, CLS medidos. Pendiente ejecutar con Chrome/Lighthouse o PageSpeed cuando exista URL publica.

## 10. Accesibilidad

Problemas:

- Falta skip link.
- Falta `main`.
- H1 duplicado/vacio por logo.
- Menu movil usa enlace `href="#"` sin ARIA `expanded/controls`.
- WhatsApp externo abre nueva pestana sin `rel="noopener noreferrer"`.
- Formulario de suscripcion usa placeholder y aria-label pero no label visible.
- Focus visible depende de CSS base; no hay mejora explicita.
- Lightbox requiere revisar foco/teclado/trap si se perfecciona.

## 11. UX y conversion

Fortalezas:

- CTA principal a WhatsApp en hero.
- Boton flotante de WhatsApp.
- Datos de contacto, direccion, mapa y horarios visibles.
- Formulario de contacto y suscripcion guardan en WP.

Oportunidades:

- Unificar mensajes de WhatsApp y `rel`.
- CTA de servicios: `Reservar evaluacion` / `Consultar por WhatsApp` / `Como llegar`.
- Mejorar mensajes de error de formularios.
- Mantener NAP consistente entre home/contacto/footer.
- Agregar FAQs visibles y orientadas a decision.

## 12. Pendientes de validacion externa

- Plugin SEO activo y configuracion de titles/metas/canonical/OG.
- Sitemap XML.
- Robots.txt.
- Search Console.
- Google Business Profile y URL de Maps/GBP definitiva.
- Consentimiento de cookies para GTM/Pixel.
- Cache/compresion servidor.
- Optimizacion de imagenes en media library.
- Backups y hardening del servidor.
