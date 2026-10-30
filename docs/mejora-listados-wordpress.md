# Reparación de listados de WordPress

Fecha: 29 de octubre de 2026. Implementación local, sin despliegue.

## Problema y cambio

El tema tenía `index.php` vacío y carecía de plantillas para el archivo de dolencias, las búsquedas y las categorías del blog. En la auditoría pública esas rutas respondían 200 con cuerpo vacío.

Ahora los cuatro puntos de entrada usan `template-parts/listing.php`, que presenta el loop principal de WordPress con el encabezado y pie existentes, tarjetas, búsqueda, navegación y paginación. No crea otra consulta ni sustituye el filtrado, orden, permisos o conteo de la consulta principal.

- `archive-dolencia.php`: listado de dolencias.
- `category.php`: entradas de la categoría consultada.
- `search.php`: resultados del término buscado.
- `index.php`: respaldo para los demás listados.
- `template-parts/content-summary.php`: tarjetas de resultados con tipo de contenido, título y extracto; conserva el alt de la imagen y muestra fecha solo en entradas.
- `searchform.php`: formulario GET con campo `s`, término escapado e identificador único para su etiqueta.
- `assets/css/style.css`: estilos de listados, formulario y estados vacíos; rejilla de tres, dos o una columna según ancho.

Los listados sin resultados muestran un mensaje y enlaces a Servicios/Contacto. En las tarjetas sin extracto se ofrece una indicación de contacto; no se inventa contenido clínico ni se ocultan registros existentes.

## Verificación realizada

- Sintaxis PHP: siete archivos nuevos/modificados sin errores.
- Once escenarios de renderizado aislado con dobles de funciones WordPress: cuatro puntos de entrada con/sin resultados, texto de búsqueda y títulos con caracteres HTML, fallback de archivo/contenido sin título y formularios con IDs únicos.
- Los escenarios comprueban un H1, un main, uso de los resultados de la consulta principal, argumentos de paginación, ausencia de paginación cuando no corresponde, fechas solo para entradas y escape de salidas.
- Revisión del diff y whitespace.

Estas pruebas no son una prueba de integración contra una base de datos WordPress. El WordPress local no respondió a las solicitudes HTTP y no había procesos Apache/MySQL visibles en la consulta realizada. Una vista temporal aislada tampoco pudo abrirse en el navegador por timeout; no se certifica revisión visual de estas nuevas pantallas. El servidor temporal se detuvo.

## Comprobaciones pendientes en WordPress local o staging

1. `/dolencias/`: comprobar títulos, tarjetas y enlaces a detalles; avanzar/retroceder entre páginas con datos reales.
2. `/?s=terapia`: comprobar que solo aparecen resultados públicos y que el formulario conserva el término.
3. `/?s=sin-coincidencias-therapyflex-20261029`: comprobar mensaje sin resultados y enlaces útiles.
4. `/category/uncategorized/` o el slug de categoría existente: verificar que muestra sus entradas y no todas las del blog.
5. Un archivo/categoría sin entradas: comprobar estado vacío sin tarjetas ni paginación.
6. `/`, `/blog/`, un servicio, una dolencia y una URL inexistente: comprobar que siguen resolviendo sus plantillas previas.
7. Móvil y teclado: comprobar rejilla, formulario, foco, etiquetas y enlaces de paginación.

No es necesario cambiar enlaces permanentes, ejecutar un flush de reglas ni modificar la base de datos para añadir estas plantillas.

## Alcance y entrega

Para publicar esta reparación deben desplegarse los siete PHP y el CSS indicados, incluyendo los dos archivos de `template-parts/`; no basta subir `index.php`. Después debe comprobarse la caché del sitio y repetir las rutas anteriores. No se realizó despliegue ni purga de caché en esta ejecución.

Quedan para las fases siguientes el cuerpo editorial de las 23 dolencias, sus decisiones de indexación/consolidación, el logo/schema, los metadatos y canonical de archivos paginados, la paginación de `page-blog.php` y el menú móvil. Las búsquedas siguen sujetas a la política de robots que WordPress ya aplica; no se añadió otro generador SEO ni se alteró el sitemap.
