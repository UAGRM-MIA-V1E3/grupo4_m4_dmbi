# NorthwindDW - Data Warehouse

Este proyecto representa la implementación de un Data Warehouse (DW) basado en el modelo de datos de la base transaccional Northwind. El objetivo principal es estructurar los datos de forma analítica para facilitar la generación de reportes, análisis de negocio y toma de decisiones.

## Objetivo de la Estructura

El esquema `NorthwindDW` sigue un modelo estrella (star schema), en el cual se organizan los datos mediante:

- **Tablas de dimensiones**: Proporcionan contexto descriptivo a los datos (quién, qué, cuándo, dónde).
- **Tabla de hechos**: Contiene los datos cuantificables o métricas del negocio (ventas, cantidades, ingresos, etc.).

---

## ?? Tablas de Dimensión (Dim)

Las tablas de dimensión son utilizadas para describir las entidades del negocio y permiten el filtrado y agrupamiento de datos en los análisis.

### ?? `DimCustomer`
Contiene información descriptiva de los clientes, como nombre, dirección, ciudad, país y otros atributos relevantes.

**Propósito:** Analizar ventas por cliente, región, país, etc.

---

### ?? `DimDate`
Incluye fechas con granularidad por día, mes, trimestre y año, con atributos como nombre del mes, número de semana, etc.

**Propósito:** Permite realizar análisis temporales (por ejemplo: ventas mensuales, estacionales, anuales).

---

### ?? `DimEmployee`
Representa a los empleados (vendedores), incluyendo nombre, cargo, jefe, y ubicación.

**Propósito:** Analizar el desempeño por empleado o equipo de ventas.

---

### ?? `DimProduct`
Incluye detalles de productos como nombre, categoría, proveedor, y unidad de medida.

**Propósito:** Analizar ventas por producto, categoría o proveedor.

---

### ?? `DimShipInfo`
Almacena información sobre los métodos de envío, tiempos de entrega, costos y otros atributos logísticos.

**Propósito:** Analizar métricas logísticas asociadas al despacho de productos.

---

### ?? `DimShipper`
Describe las compañías transportistas o de envío utilizadas.

**Propósito:** Evaluar el desempeño de las empresas de logística.

---

### ?? `DimSupplier`
Contiene detalles de los proveedores: nombre, dirección, ciudad, país, etc.

**Propósito:** Analizar los productos por proveedor y su impacto en las ventas o inventarios.

---

## ?? Tabla de Hechos (Fact)

### ?? `FactSales`
Contiene los hechos de ventas, con claves foráneas hacia las dimensiones. Incluye métricas como cantidad, precio unitario, descuentos e ingresos totales.

**Propósito:** Es la tabla principal para el análisis de ventas a través de múltiples dimensiones (producto, cliente, empleado, fecha, etc.).

---

## ?? Carpetas del Proyecto


- **Schemas/dbo**: Carpeta con los scripts de las dimensiones y hechos.
- **Schemas/Staging**: (Previsto para futuras ETLs) donde se almacenarían datos temporales provenientes de la base OLTP antes de ser transformados y cargados al DW.

---

## ?? Proyecto

El proyecto incluye dos módulos:

- `grupo4_m4_dmbi`: Probablemente destinado al desarrollo de procesos de integración de datos (ETL).
- `NorthwindDW`: Módulo que contiene el esquema del DW y los scripts SQL correspondientes.

---

## ? Uso Sugerido

1. Ejecutar los scripts de las dimensiones y hechos en orden (Dimensiones primero, luego Hechos).
2. Cargar datos desde el sistema OLTP (por ejemplo: Northwind original).
3. Utilizar herramientas de BI para analizar el cubo de datos generado.

---

