# Dime cuánto cobras y te diré dónde vivir

##### Proyecto para el V taller de periodismo de datos "La España vacía" del Medialab Prado

## Índice

* [Entradilla](#entradilla)
* [Introducción](#introducción)
* [Datos](#datos)
  * [Precio del alquiler](#precio-del-alquiler)
  * [Salario medio](#salario-medio)
* [Propuesta de producto final](#propuesta-de-producto-final)
  * [Mapa interactivo](#mapa-interactivo)
  * [Gráficos](#gráficos)
* [Pistas de conclusión](#pistas-de-conclusión)
* [Expertos](#expertos)
* [Referencias](#referencias)
* [Equipo](#equipo)

## Entradilla

¿Tienes amigos que comparten piso, no por gusto sino por necesidad? ¿Conocidos que viven en apartamentos enanos o decadentes? ¿Te parece justo el precio que pagas por tu apartamento? En las grandes ciudades españolas, es cada vez más complicado para un inquilino encontrar un alquiler a la altura de sus posibilidades. Por un lado, el precio de los pisos sube a toda velocidad y por otro, el salario medio se estanca. ¿Cual es la proporción del sueldo que uno gasta en alquiler hoy en día en grandes metrópolis como Madrid y Barcelona? Respondemos a través del análisis de los precios de alquiler en estas ciudades y del salario medio de los inquilinos.

## Introducción

Estos últimos tres años, el precio del alquiler ha subido de manera fulgurante en las grandes ciudades españolas. El año pasado, se observó en Madrid y Barcelona un aumento del precio alrededor de 10%, alcanzando una media histórica de 17,9€/m2 en la ciudad catalana y 14,2€/m2 en la capital española, según los datos de Idealista.

<a href="https://public.tableau.com/views/Lasubidadelalquilerenlasgrandesciudadesespaolas/SubidadelalquilerenEspaa?:embed=y&:display_count=yes" target="_blank"><img width="965" alt="evolucion precio alquiler" src="https://cloud.githubusercontent.com/assets/22743273/23960342/03c61cb6-09a8-11e7-95a8-dd7597ca1fac.png"></a>
Fuente de datos: [Informes de precios de Idealista](https://www.idealista.com/informes-precio-vivienda)

Se puede ver [el gráfico interactivo en Tableau Public](https://public.tableau.com/profile/flora.fosset#!/vizhome/Lasubidadelalquilerenlasgrandesciudadesespaolas/SubidadelalquilerenEspaa)

## Datos

### Precio del alquiler

Nuestra fuente de datos principal será Idealista. Tenemos datos trimestriales de los precios de alquiler en euros por metro cuadrado en toda España [aquí](datasets/evolucion-precios-alquiler-toda-espana.xlsx) y un detalle de los barrios centricos de Madrid [aquí](datasets/barrios_centro_madrid_alquiler.xlsx). Este último archivo muestra que precios medio de alquiler han subido hasta **45€/m²** en los barrios de Lavapiés, Malasaña y Chueca. Estos datos son extraños y habrá que verificarlos.

Tenemos que averiguar si Idealista es más presente que Fotocasa en las dos ciudades. Estaría interesante cruzar los datos de las dos empresas dependiendo de su presencia.

##### Gasto medio de alquiler por persona en Madrid y Barcelona

Los últimos datos del INE (2015) muestran que el gasto medio de un inquilino es de **535€** en la Comunidad de Madrid y **534€** en Cataluña.
<a href="http://www.ine.es/jaxiT3/Tabla.htm?t=9997&L=0" target="_blank"> <img width="965" alt="gasto medio por persona" src="https://cloud.githubusercontent.com/assets/22743273/24807776/da8a396c-1bb9-11e7-8a77-b1e4f89c9c62.png"> </a>

### Salario medio

La [encuesta de estructura salarial](http://www.ine.es/prensa/np977.pdf) del INE ofrece datos del salario medio, mediano y modal por comunidad autónoma, sexo, sector y ocupación. Lamentablemente, la última encuesta data de 2014 (se hace cada 4 años). Los datos se pueden buscar a través de [esta herramienta](http://www.ine.es/jaxi/Tabla.htm?path=/t22/p133/a2014/l0/&file=07001.px&L=0).

"El salario bruto anual medio no es una buena medida resumen del salario anual que plasme las diferencias entre distintos colectivos y actividades, ya que una característica de las funciones de distribución salarial es que figuran muchos más trabajadores en los valores bajos que en los salarios más elevados. Esto da lugar a que el salario medio sea superior tanto al salario mediano como al salario más frecuente (modal). **Hay pocos trabajadores con salarios muy altos pero influyen notablemente en el salario medio.** " *INE*

Efectivamente, el salario medio español en 2014 se sitúa en **22.858,17€** mientras que el salario más habitual es solamente de **16.490,8€** anuales. Se puede observar que el salario modal (más frecuente) no ha subido casi desde 2009.

<a href="https://public.tableau.com/views/SalariomodalEspaa/Dashboard1?:embed=y&:display_count=yes" target="_blank"><img width="965" alt="salario modal anual" src="https://cloud.githubusercontent.com/assets/22743273/24717166/d4afc7b6-1a31-11e7-9dd4-bb289bc41714.png"></a>

Fuente de datos: [Salario anual medio, mediano, modal, a tiempo completo y a tiempo parcial, por periodo (INE)](http://www.ine.es/jaxiT3/Tabla.htm?t=10882&L=0)

Hay que tomar en cuenta que las comunudades autónomas de Madrid y Barcelona presentan unas ganancias medias anuales superiores a la media nacional (Madrid en segunda posición después del País Vasco y Barcelona en cuarta posición después de Navarra).

<a href="http://www.ine.es/jaxi/Datos.htm?path=/t22/p133/a2014/l0/&file=07001.px" target="_blank"><img width="965" alt="mapa salario medio" src="https://cloud.githubusercontent.com/assets/22743273/24798394/0045b3bc-1b96-11e7-8443-2b17458fc4fc.png"></a>

## Propuesta de producto final

### Mapa interactivo

Muestra al usuario dónde puede vivir según el sueldo que tiene. Cuando introduzca su sueldo neto mensual, se pintarán en verde los lugares donde el precio medio de alquiler no supere el 30% de sus ingresos y en rojo el resto de los lugares. En los centros de Madrid y Barcelona, se dividirán los precios por barrio ya que la variación de precios puede ser muy grande entre uno y otro.

### Gráficos

* Porcentaje medio del salario dedicado al alquiler en Madrid y Barcelona y su evolución en el tiempo (area chart)
* Evolución de los precios de alquiler comparada con la evolución del salario medio (lines)
* Gasto “ideal” de un salario (entre alquiler, comida, ocio…), etc. (stacked bar)
* Rango de gente más tocado por el precio alto de alquiler (por edad) (treemap)
* Evolución del porcentaje de hogar por regimen de tenencia (propriedad, alquiler, alquiler bajo precio del mercado)
<a href="http://www.ine.es/jaxiT3/Datos.htm?t=10724" target="_blank"> <img width="965" alt="hogar por regimen de tenencia" src="https://cloud.githubusercontent.com/assets/22743273/24807828/08325a7a-1bba-11e7-9a9a-978251ea0838.png"> </a>

* Porcentaje de inquilinos que comparten piso y evolución del número de pisos compartidos así que evolución de la edad de los compis de pisos: [artículo del Confidencial con respeto a este tema](http://www.elconfidencial.com/vivienda/2016-08-18/habitaciones-pisos-compartidos-alquiler-vivienda-madrid-barcelona_1248223/)

## Pistas de conclusión

* Crecimiento de la demanda
  * Aumento de la población en grandes ciudades (donde se encuentra trabajo)
  * Reducción de compra de piso para primera vivienda (por razones económicas y por cambio de mentalidad)
* Precarizacion de las condiciones laborales de la población joven
* Proliferación de los pisos turísticos (Airbnb)
* Compra de viviendas para alquilar como negocio de inversión lucrativo

## Expertos

## Referencias

- [**"Unaffordable country"**](https://www.theguardian.com/society/ng-interactive/2015/sep/02/unaffordable-country-where-can-you-afford-to-buy-a-house) </br>
Mapa interactivo del Reino Unido por The Guardian: precios de venta por provincia dependiendo del sueldo anual.

- [**"Where can I affor to live?"**](http://www.bbc.com/news/business-23234033) </br>
Mapa interactivo del Reino Unido y los precios de alquiler por provincia.

- [**"Tube map of affordability"**](http://england.shelter.org.uk/support_us/campaigns/tube_map_affordability) </br>
Metro de Londres donde han borrado las estaciones en las zonas que ya no son accesibles al inquilino medio.

- [**"Radiofrafía de Airbnb"**](http://datos.elespanol.com/proyectos/airbnb/) </br>
Análisis de todos los anuncios de Airbnb que desvela el negocio de algunas agencias que aprovechan el vacío legal para arrendar. El 91% de los pisos en Madrid y el 64% en Barcelona están fuera de la ley.

- [**"El alquiler enloquece y supere las cotas precrisis"**](http://www.elconfidencial.com/vivienda/2017-02-06/alquiler-enloquece-maximos-historicos-precios-inflacion-vallecas_1326376/) </br>
Muy buen artículo que resuma nuestro tema en cuanto a precio de alquiler, hablando de la subida de precios con gráficos y explicando las razones de esta subida con entrevistas de expertos.

- [**"Precios medios de alquiler en los distritos de Madrid"**](http://public.tableau.com/views/Idealista-PreciosAlquilerenDistritosdeMadrid/Idealista-PreciosMediosdelAlquilerenlosDistritosdeMadrid?:embed=y&:showVizHome=no&:display_count=y&:display_static_image=y&:bootstrapWhenNotified=true) </br>
Gráficos interactivos hechos por Idealista con Tableau Public.

- [**"Salario mínimo para vivir dignamente"**](http://www.publico.es/public/salari-minim-per-viure-dignament.html) </br>
Artículo propuesto por uno de los mentores para cambiar el enfoque de la investigación en el caso de que no encontremos datos salariales.


## Equipo

- [Ana Torres](https://tresletras.wordpress.com/) - periodista
- [Flora Fosset](http://fosset.co) - visualización
- [Miguel Tinte](https://twitter.com/matinteg/) - programador
- Noelia - periodista
- [Graeme Herbert](https://twitter.com/red_baobab9) - geografo (a partir de mayo)
- María Luisa - periodista
