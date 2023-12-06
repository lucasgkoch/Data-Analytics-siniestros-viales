# Siniestros Viales Fatales en la Ciudad de Buenos Aires

Este proyecto tiene como objetivo analizar y visualizar datos sobre siniestros viales fatales en la Ciudad de Buenos Aires. La información proviene de las bases de datos oficiales de la ciudad y ha sido procesada y analizada utilizando Python. A continuación, se proporciona una descripción general de las principales etapas y componentes del proyecto.

## Estructura del Repositorio

El repositorio está organizado de la siguiente manera para facilitar la navegación y comprensión del proyecto:

- **assets:** Este directorio contiene recursos adicionales necesarios para el proyecto, como imágenes y logotipos.

- **raw_data:** En este directorio se encuentran los conjuntos de datos originales, antes de ser procesados por el ETL.

- **processed_data:** Aquí se almacenan los archivos de datos que han sido procesados y limpiados durante el ETL. Estos archivos son el resultado de la transformación de los datos crudos.

- **sql_scripts:** Contiene el script de creación de la base de datos SQL, así como cualquier otro script SQL relacionado con la gestión de datos.

- **etl:** En el directorio raíz se encuentra la implementación del ETL en Python.

- **eda:** En el directorio raíz se encuentra el Análisis Exploratorio de Datos (EDA) en Python.

- **powerBI:** Este directorio contiene el archivo `.pbix` de Power BI, donde se encuentra el dashboard interactivo, ademas de un archivo formato pdf con el mismo dashboard.

- **requirements.txt:** Este archivo especifica las dependencias necesarias para ejecutar el código Python. Asegúrese de instalar estas dependencias antes de ejecutar cualquier script.

## Accesibilidad

Este proyecto se ha desarrollado teniendo en cuenta aspectos de accesibilidad. Se realizaron esfuerzos para asegurar que los gráficos y visualizaciones sean comprensibles para personas con distintos tipos de daltonismo. Durante el proceso de diseño y desarrollo, se llevaron a cabo las siguientes consideraciones:

- **Elección de Paleta de Colores:**
  Se seleccionaron cuidadosamente colores que proporcionan un alto contraste y son distinguibles para personas con daltonismo. Se evitó el uso de combinaciones de colores que podrían causar confusión.

- **Etiquetado Descriptivo:**
  Se proporcionaron etiquetas descriptivas y alternativas a las visualizaciones para garantizar que la información sea accesible para usuarios con discapacidades visuales.

- **Pruebas de Accesibilidad:**
  Se realizaron pruebas exhaustivas para verificar la accesibilidad de las visualizaciones utilizando herramientas y estándares reconocidos. Se tomaron medidas correctivas según sea necesario.

- **La siguiente prueba fue realizada en Adobe Photoshop con la herramienta colorblind proof**

![prueba daltonismo](assets/README/accesibilidad%20daltonismo.png)

## Tecnologias utilizadas

![tecnologias](assets/README/tech_stack.png)

## ETL en Python

Se realizaron operaciones de Extracción, Transformación y Carga (ETL) de los datos provenientes de las bases de datos oficiales de la Ciudad de Buenos Aires. El código utilizado para este proceso se encuentra en los siguientes archivos jupyter notebook y está implementado en Python.
[ETL comunas](ETL_comunas.ipynb)
[ETL hechos](ETL_hechos.ipynb)
[ETL poblacion](ETL_poblacion.ipynb)
[ETL_radares](ETL_radares.ipynb)
[ETL victimas](ETL_victimas.ipynb)

## Análisis Exploratorio de Datos (EDA) en Python

El análisis exploratorio de datos se llevó a cabo utilizando pandas y matplotlib. Los resultados y visualizaciones se encuentran en el archivo [EDA](EDA.ipynb), donde se pueden explorar los notebooks y gráficos generados durante este proceso.
En el proceso de este EDA se encontró un importante insight que se utilizará en power BI para implementar un KPI.
## Base de Datos SQL

Los datos obtenidos durante el proceso de Extracción, Transformación y Carga (ETL) se han almacenado en una base de datos SQL para facilitar la gestión y consulta de la información. Se incluye un script SQL que puede ser utilizado para crear la estructura de la base de datos y cargar los datos procesados.

### Creación de la Base de Datos

El script [script_creacion_tablas.sql](sql_scripts/script_creacion_tablas.sql) en el directorio `sql_scripts` contiene las instrucciones necesarias para crear la estructura de la base de datos. Asegúrese de revisar y modificar este script según sea necesario antes de ejecutarlo.

### Carga de Datos

La carga de datos fue realizado mediante 'Data import wizard' de MySQL


## Dashboard en Power BI

Se creó un dashboard interactivo en Power BI para visualizar la información de manera efectiva. El diseño del dashboard se mejoró utilizando recursos diseñados en Figma. A continuación, se describen las secciones principales del dashboard:

### Mapa Geográfico

En esta sección, se presenta un mapa que permite ubicar geográficamente la Ciudad de Buenos Aires y sus comunas.

### Información General

El dashboard principal proporciona información general sobre los siniestros viales fatales en la ciudad. Se incluye un panel de filtros para personalizar la visualización según las necesidades del usuario.

### KPIs Solicitados

En un tablero separado, se presentan dos KPIs que fueron solicitados específicamente para este proyecto.

### KPI Adicional

En otro tablero, se incluye un KPI adicional que se consideró relevante para la problemática.

## Recursos Adicionales

- [Figma Resources](https://www.figma.com/file/QCDAWpIsRoKirdqrUqHax5/dashboards-Power-BI-siniestros-viales-CABA?type=design&node-id=0-1&mode=design): Recursos de diseño utilizados para mejorar la estética del dashboard en Power BI.
