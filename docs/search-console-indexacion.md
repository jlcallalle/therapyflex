# Correccion de indexacion en Google Search Console

Fecha de revision: 17/07/2026

## Motivos reportados

| Motivo en Search Console | Paginas | Interpretacion | Accion |
| --- | ---: | --- | --- |
| Duplicada: el usuario no ha indicado ninguna version canonica | 1 | Google encontro una URL duplicada sin canonical claro. | Corregido desde el tema con canonical fallback cuando no hay plugin SEO activo. Validar en GSC. |
| Pagina con redireccion | 1 | Puede ser normal si la URL antigua redirige a la version final. | Revisar la URL exacta. Si la redireccion es intencional, no requiere correccion. |
| Rastreada: actualmente sin indexar | 17 | Google rastreo URLs, pero aun no las eligio para indexar. Puede deberse a contenido bajo, duplicado, reciente, sin enlaces internos o sin sitemap enviado. | Enviar sitemap, mejorar enlaces internos/contenido y solicitar indexacion en URLs importantes. |
| No se ha encontrado (404) | 0 | No hay paginas 404 afectadas actualmente. | Sin accion inmediata. |

## Cambios aplicados en el tema

| Archivo | Cambio | Motivo |
| --- | --- | --- |
| `functions.php` | Canonical fallback en `wp_head` para portada, paginas, entradas, taxonomias y archivos cuando no se detecta Yoast, Rank Math, AIOSEO o SEOPress. | Evitar el aviso de duplicada sin canonical seleccionado por el usuario. |
| `functions.php` | Inclusion de `Sitemap: https://therapyflex.pe/wp-sitemap.xml` mediante el filtro `robots_txt`. | Facilitar descubrimiento del sitemap nativo de WordPress. |

## Validacion recomendada en produccion

1. Subir el tema actualizado a produccion.
2. Abrir `https://therapyflex.pe/` y confirmar en el codigo fuente una etiqueta similar a:

```html
<link rel="canonical" href="https://therapyflex.pe/">
```

3. Abrir `https://therapyflex.pe/robots.txt` y confirmar que aparece:

```txt
Sitemap: https://therapyflex.pe/wp-sitemap.xml
```

4. Abrir `https://therapyflex.pe/wp-sitemap.xml` y confirmar que carga correctamente.
5. En Google Search Console > Sitemaps, enviar:

```txt
wp-sitemap.xml
```

6. En Google Search Console > Paginas, abrir el motivo "Duplicada: el usuario no ha indicado ninguna version canonica", inspeccionar la URL afectada y usar "Validar correccion".
7. Para "Rastreada: actualmente sin indexar", priorizar solo URLs importantes: servicios, contacto, portada y paginas informativas reales.

## Pendiente de validacion externa

- URL exacta afectada por el motivo "Duplicada".
- URL exacta marcada como "Pagina con redireccion".
- Lista de las 17 URLs "Rastreada: actualmente sin indexar".
- Estado del plugin SEO, si existe alguno activo en WordPress.
- Estado de Ajustes > Lectura > "Disuadir a los motores de busqueda".
- Configuracion de enlaces permanentes.
- Envio y lectura correcta del sitemap en Search Console.

