# NorthwindDW - Data Warehouse

Este proyecto representa la implementaci�n de un Data Warehouse (DW) basado en el modelo de datos de la base transaccional Northwind. El objetivo principal es estructurar los datos de forma anal�tica para facilitar la generaci�n de reportes, an�lisis de negocio y toma de decisiones.

## Objetivo de la Estructura

El esquema `NorthwindDW` sigue un modelo estrella (star schema), en el cual se organizan los datos mediante:

- **Tablas de dimensiones**: Proporcionan contexto descriptivo a los datos (qui�n, qu�, cu�ndo, d�nde).
- **Tabla de hechos**: Contiene los datos cuantificables o m�tricas del negocio (ventas, cantidades, ingresos, etc.).

---

## ?? Tablas de Dimensi�n (Dim)

Las tablas de dimensi�n son utilizadas para describir las entidades del negocio y permiten el filtrado y agrupamiento de datos en los an�lisis.

### ?? `DimCustomer`
Contiene informaci�n descriptiva de los clientes, como nombre, direcci�n, ciudad, pa�s y otros atributos relevantes.

**Prop�sito:** Analizar ventas por cliente, regi�n, pa�s, etc.

---

### ?? `DimDate`
Incluye fechas con granularidad por d�a, mes, trimestre y a�o, con atributos como nombre del mes, n�mero de semana, etc.

**Prop�sito:** Permite realizar an�lisis temporales (por ejemplo: ventas mensuales, estacionales, anuales).

---

### ?? `DimEmployee`
Representa a los empleados (vendedores), incluyendo nombre, cargo, jefe, y ubicaci�n.

**Prop�sito:** Analizar el desempe�o por empleado o equipo de ventas.

---

### ?? `DimProduct`
Incluye detalles de productos como nombre, categor�a, proveedor, y unidad de medida.

**Prop�sito:** Analizar ventas por producto, categor�a o proveedor.

---

### ?? `DimShipInfo`
Almacena informaci�n sobre los m�todos de env�o, tiempos de entrega, costos y otros atributos log�sticos.

**Prop�sito:** Analizar m�tricas log�sticas asociadas al despacho de productos.

---

### ?? `DimShipper`
Describe las compa��as transportistas o de env�o utilizadas.

**Prop�sito:** Evaluar el desempe�o de las empresas de log�stica.

---

### ?? `DimSupplier`
Contiene detalles de los proveedores: nombre, direcci�n, ciudad, pa�s, etc.

**Prop�sito:** Analizar los productos por proveedor y su impacto en las ventas o inventarios.

---

## ?? Tabla de Hechos (Fact)

### ?? `FactSales`
Contiene los hechos de ventas, con claves for�neas hacia las dimensiones. Incluye m�tricas como cantidad, precio unitario, descuentos e ingresos totales.

**Prop�sito:** Es la tabla principal para el an�lisis de ventas a trav�s de m�ltiples dimensiones (producto, cliente, empleado, fecha, etc.).

---

## ?? Carpetas del Proyecto


- **Schemas/dbo**: Carpeta con los scripts de las dimensiones y hechos.
- **Schemas/Staging**: (Previsto para futuras ETLs) donde se almacenar�an datos temporales provenientes de la base OLTP antes de ser transformados y cargados al DW.

---

## ?? Proyecto

El proyecto incluye dos m�dulos:

- `grupo4_m4_dmbi`: Probablemente destinado al desarrollo de procesos de integraci�n de datos (ETL).
- `NorthwindDW`: M�dulo que contiene el esquema del DW y los scripts SQL correspondientes.

---

## ? Uso Sugerido

1. Ejecutar los scripts de las dimensiones y hechos en orden (Dimensiones primero, luego Hechos).
2. Cargar datos desde el sistema OLTP (por ejemplo: Northwind original).
3. Utilizar herramientas de BI para analizar el cubo de datos generado.

---

