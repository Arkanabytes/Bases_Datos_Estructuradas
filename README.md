# 🗄️ Bases de Datos Estructuradas

<div align="center">

![Database Banner](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=12,20,2,25,30&height=200&section=header&text=Bases%20de%20Datos&fontSize=50&fontColor=white&animation=fadeIn&fontAlignY=35&desc=Estructuradas%20y%20Relacionales&descAlignY=55&descSize=20)

[![SQL](https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0+-orange?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQLite](https://img.shields.io/badge/SQLite-3.0+-003B57?style=for-the-badge&logo=sqlite&logoColor=white)](https://www.sqlite.org/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge&logo=opensourceinitiative&logoColor=white)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge&logo=github&logoColor=white)]()

</div>

## 📋 Descripción

Este repositorio contiene recursos completos sobre **Bases de Datos Estructuradas**, incluyendo teoría, práctica, ejercicios y proyectos reales. Desde conceptos fundamentales hasta técnicas avanzadas de optimización y administración de bases de datos relacionales.

<div align="center">

```mermaid
graph TB
    A[🗄️ Bases de Datos Estructuradas] --> B[📚 Fundamentos]
    A --> C[🎯 SQL]
    A --> D[🏗️ Diseño]
    A --> E[⚡ Optimización]
    
    B --> B1[Modelo Relacional]
    B --> B2[Normalización]
    B --> B3[Integridad Referencial]
    
    C --> C1[📝 DDL - Data Definition]
    C --> C2[🔍 DML - Data Manipulation]
    C --> C3[🎛️ DCL - Data Control]
    C --> C4[📊 TCL - Transaction Control]
    
    D --> D1[Diagrama ER]
    D --> D2[Modelado Conceptual]
    D --> D3[Implementación Física]
    
    E --> E1[Índices]
    E --> E2[Consultas Eficientes]
    E --> E3[Tuning]
    
    style A fill:#2c3e50,stroke:#34495e,stroke-width:3px,color:#fff
    style C1 fill:#3498db,stroke:#2980b9,stroke-width:2px,color:#fff
    style C2 fill:#e74c3c,stroke:#c0392b,stroke-width:2px,color:#fff
    style C3 fill:#f39c12,stroke:#e67e22,stroke-width:2px,color:#fff
    style C4 fill:#27ae60,stroke:#229954,stroke-width:2px,color:#fff
```

</div>

## 🎯 Objetivos de Aprendizaje

<table>
<tr>
<td width="50%">

### 🏗️ Fundamentos
- ✅ Modelo Relacional
- ✅ Normalización de datos
- ✅ Integridad referencial
- ✅ Álgebra relacional

</td>
<td width="50%">

### 🚀 Avanzado
- 🔥 Optimización de consultas
- 🔥 Administración de BD
- 🔥 Transacciones ACID
- 🔥 Procedimientos almacenados

</td>
</tr>
</table>

## 📊 Tecnologías y SGBD

<div align="center">

```mermaid
graph LR
    A[🗄️ SGBD] --> B[🐘 PostgreSQL]
    A --> C[🐬 MySQL]
    A --> D[📱 SQLite]
    A --> E[🏢 SQL Server]
    A --> F[🔶 Oracle]
    
    B --> B1[Características]
    B --> B2[Ventajas]
    C --> C1[Popularidad]
    C --> C2[Web Apps]
    D --> D1[Embedded]
    D --> D2[Desarrollo]
    
    style A fill:#2c3e50,color:#fff
    style B fill:#336791,color:#fff
    style C fill:#4479A1,color:#fff
    style D fill:#003B57,color:#fff
    style E fill:#CC2927,color:#fff
    style F fill:#F80000,color:#fff
```

</div>

### 🛠️ Stack Tecnológico

<div align="center">

| Categoría | Tecnología | Propósito | Estado |
|-----------|------------|-----------|--------|
| ![Database](https://img.shields.io/badge/Database-PostgreSQL-blue?logo=postgresql) | PostgreSQL 13+ | BD Principal | ✅ |
| ![Database](https://img.shields.io/badge/Database-MySQL-orange?logo=mysql) | MySQL 8.0+ | BD Web | ✅ |
| ![Database](https://img.shields.io/badge/Database-SQLite-lightblue?logo=sqlite) | SQLite 3+ | BD Desarrollo | ✅ |
| ![Tool](https://img.shields.io/badge/Tool-DBeaver-darkblue?logo=dbeaver) | DBeaver | Cliente Universal | ✅ |
| ![Tool](https://img.shields.io/badge/Tool-phpMyAdmin-orange?logo=phpmyadmin) | phpMyAdmin | MySQL Admin | ✅ |

</div>

## 📚 Estructura del Curso

<div align="center">

```mermaid
journey
    title Ruta de Aprendizaje - Bases de Datos
    section Fundamentos
      Modelo Relacional     : 5: Estudiante
      Álgebra Relacional    : 4: Estudiante
      Normalización        : 4: Estudiante
    section SQL Básico
      SELECT Queries       : 3: Estudiante
      JOIN Operations      : 3: Estudiante
      Funciones Agregadas  : 2: Estudiante
    section SQL Avanzado
      Subconsultas        : 2: Estudiante
      Procedimientos      : 1: Estudiante
      Triggers           : 1: Estudiante
    section Administración
      Optimización       : 1: Estudiante
      Backup/Recovery    : 1: Estudiante
      Seguridad         : 1: Estudiante
```

</div>

### 📁 Organización del Repositorio

<div align="center">

```mermaid
graph TD
    A[📁 Bases_Datos_Estructuradas] --> B[📚 01-Fundamentos]
    A --> C[📝 02-SQL-Basico]
    A --> D[🚀 03-SQL-Avanzado]
    A --> E[🏗️ 04-Diseño-BD]
    A --> F[⚡ 05-Optimizacion]
    A --> G[🛠️ 06-Administracion]
    A --> H[🎯 07-Proyectos]
    A --> I[📊 08-Casos-Estudio]
    
    B --> B1[Modelo Relacional]
    B --> B2[Normalización]
    B --> B3[Álgebra Relacional]
    
    C --> C1[SELECT y WHERE]
    C --> C2[JOIN Operations]
    C --> C3[Funciones Agregadas]
    
    D --> D1[Subconsultas]
    D --> D2[Procedimientos]
    D --> D3[Triggers]
    
    H --> H1[🏪 Sistema POS]
    H --> H2[📚 Biblioteca]
    H --> H3[🏥 Hospital]
    
    style A fill:#2c3e50,stroke:#34495e,stroke-width:3px,color:#fff
    style H1 fill:#e74c3c,color:#fff
    style H2 fill:#3498db,color:#fff
    style H3 fill:#27ae60,color:#fff
```

</div>

## 🗄️ Modelo de Datos - Ejemplo E-commerce

<div align="center">

```mermaid
erDiagram
    CLIENTE {
        int cliente_id PK
        string nombre
        string email UK
        string telefono
        date fecha_registro
        boolean activo
    }
    
    PRODUCTO {
        int producto_id PK
        string nombre
        text descripcion
        decimal precio
        int stock
        int categoria_id FK
        date fecha_creacion
    }
    
    CATEGORIA {
        int categoria_id PK
        string nombre
        text descripcion
        boolean activa
    }
    
    PEDIDO {
        int pedido_id PK
        int cliente_id FK
        datetime fecha_pedido
        decimal total
        string estado
        text direccion_envio
    }
    
    DETALLE_PEDIDO {
        int detalle_id PK
        int pedido_id FK
        int producto_id FK
        int cantidad
        decimal precio_unitario
        decimal subtotal
    }
    
    CLIENTE ||--o{ PEDIDO : realiza
    PEDIDO ||--o{ DETALLE_PEDIDO : contiene
    PRODUCTO ||--o{ DETALLE_PEDIDO : incluye
    CATEGORIA ||--o{ PRODUCTO : clasifica
```

</div>

## 🚀 Quick Start

<div align="center">

```mermaid
graph TD
    A[🏁 Inicio] --> B[⬇️ Instalar SGBD]
    B --> C[📥 Clonar Repositorio]
    C --> D[🗄️ Crear Base de Datos]
    D --> E[📊 Importar Datos]
    E --> F[🔍 Ejecutar Consultas]
    F --> G[🎉 ¡Listo para practicar!]
    
    style A fill:#e74c3c,stroke:#c0392b,stroke-width:2px,color:#fff
    style G fill:#27ae60,stroke:#229954,stroke-width:2px,color:#fff
```

</div>

### 💻 Instalación y Configuración

```bash
# 1️⃣ Clonar el repositorio
git clone https://github.com/Arkanabytes/Bases_Datos_Estructuradas.git

# 2️⃣ Navegar al directorio
cd Bases_Datos_Estructuradas

# 3️⃣ Instalar PostgreSQL (Ubuntu/Debian)
sudo apt update
sudo apt install postgresql postgresql-contrib

# 4️⃣ Configurar usuario PostgreSQL
sudo -u postgres createuser --interactive

# 5️⃣ Crear base de datos de práctica
createdb practica_bd

# 6️⃣ Conectar y ejecutar scripts
psql -d practica_bd -f scripts/schema.sql
psql -d practica_bd -f scripts/data.sql
```

### 🔧 Para MySQL
```bash
# Instalar MySQL
sudo apt install mysql-server

# Configurar seguridad
sudo mysql_secure_installation

# Crear base de datos
mysql -u root -p -e "CREATE DATABASE practica_bd;"

# Importar esquema
mysql -u root -p practica_bd < scripts/mysql_schema.sql
```

## 📖 Ejemplos Prácticos de SQL

### 🟢 Consultas Básicas (SELECT)
```sql
-- 📊 Consulta simple con filtros
SELECT 
    p.nombre,
    p.precio,
    c.nombre AS categoria
FROM productos p
INNER JOIN categorias c ON p.categoria_id = c.categoria_id
WHERE p.precio BETWEEN 100 AND 500
ORDER BY p.precio DESC;

-- 📈 Funciones agregadas
SELECT 
    c.nombre AS categoria,
    COUNT(*) AS total_productos,
    AVG(p.precio) AS precio_promedio,
    MIN(p.precio) AS precio_minimo,
    MAX(p.precio) AS precio_maximo
FROM productos p
INNER JOIN categorias c ON p.categoria_id = c.categoria_id
GROUP BY c.categoria_id, c.nombre
HAVING COUNT(*) > 5;
```

### 🟡 Consultas Intermedias (JOINs Complejos)
```sql
-- 🔍 JOIN múltiple con subconsulta
SELECT 
    cl.nombre AS cliente,
    COUNT(p.pedido_id) AS total_pedidos,
    SUM(p.total) AS gasto_total,
    ROUND(AVG(p.total), 2) AS gasto_promedio
FROM clientes cl
LEFT JOIN pedidos p ON cl.cliente_id = p.cliente_id
WHERE cl.fecha_registro >= '2023-01-01'
GROUP BY cl.cliente_id, cl.nombre
HAVING SUM(p.total) > 1000
ORDER BY gasto_total DESC
LIMIT 10;
```

### 🔴 Consultas Avanzadas (Window Functions)
```sql
-- 🎯 Funciones de ventana y ranking
SELECT 
    p.nombre,
    c.nombre AS categoria,
    p.precio,
    ROW_NUMBER() OVER (PARTITION BY c.categoria_id ORDER BY p.precio DESC) as ranking_precio,
    DENSE_RANK() OVER (ORDER BY p.precio DESC) as ranking_general,
    LAG(p.precio) OVER (PARTITION BY c.categoria_id ORDER BY p.precio) as precio_anterior,
    precio - LAG(p.precio) OVER (PARTITION BY c.categoria_id ORDER BY p.precio) as diferencia_precio
FROM productos p
INNER JOIN categorias c ON p.categoria_id = c.categoria_id;
```

## 🏗️ Diseño de Base de Datos - Proceso

<div align="center">

```mermaid
graph TD
    A[📋 Requerimientos] --> B[🎨 Modelo Conceptual]
    B --> C[🏗️ Modelo Lógico]
    C --> D[⚙️ Modelo Físico]
    D --> E[🔧 Implementación]
    E --> F[🧪 Testing]
    F --> G[🚀 Producción]
    
    B --> B1[Diagrama ER]
    B --> B2[Entidades y Atributos]
    B --> B3[Relaciones]
    
    C --> C1[Normalización]
    C --> C2[Reglas de Negocio]
    C --> C3[Restricciones]
    
    D --> D1[Tipos de Datos]
    D --> D2[Índices]
    D --> D3[Particiones]
    
    style A fill:#3498db,color:#fff
    style G fill:#27ae60,color:#fff
    style B1 fill:#e74c3c,color:#fff
    style C1 fill:#f39c12,color:#fff
    style D1 fill:#9b59b6,color:#fff
```

</div>

## 📊 Normalización - Formas Normales

<div align="center">

```mermaid
graph LR
    A[📊 Datos Sin Normalizar] --> B[1️⃣ Primera Forma Normal<br/>1NF]
    B --> C[2️⃣ Segunda Forma Normal<br/>2NF]
    C --> D[3️⃣ Tercera Forma Normal<br/>3NF]
    D --> E[🏆 Forma Normal Boyce-Codd<br/>BCNF]
    
    B --> B1[✅ Valores Atómicos<br/>❌ Grupos Repetitivos]
    C --> C1[✅ 1NF<br/>✅ Dependencia Funcional Completa]
    D --> D1[✅ 2NF<br/>❌ Dependencias Transitivas]
    E --> E1[✅ 3NF<br/>✅ Determinantes son Claves]
    
    style A fill:#e74c3c,color:#fff
    style B fill:#f39c12,color:#fff
    style C fill:#f1c40f,color:#333
    style D fill:#27ae60,color:#fff
    style E fill:#2ecc71,color:#fff
```

</div>

## ⚡ Optimización de Consultas

### 📈 Análisis de Performance

<div align="center">

| Técnica | Descripción | Impacto | Dificultad |
|---------|-------------|---------|------------|
| ![Index](https://img.shields.io/badge/Índices-Primarios-blue) | B-Tree, Hash | 🚀🚀🚀 | ⭐⭐ |
| ![Query](https://img.shields.io/badge/Consultas-Optimizadas-green) | Reescritura SQL | 🚀🚀 | ⭐⭐⭐ |
| ![Partition](https://img.shields.io/badge/Particiones-Horizontales-orange) | Dividir tablas | 🚀🚀🚀 | ⭐⭐⭐⭐ |
| ![Cache](https://img.shields.io/badge/Cache-Consultas-red) | Resultados en memoria | 🚀🚀 | ⭐⭐ |

</div>

### 🔍 Plan de Ejecución
```sql
-- 📊 Analizar plan de ejecución
EXPLAIN ANALYZE
SELECT 
    c.nombre,
    COUNT(p.pedido_id) as total_pedidos,
    SUM(dp.cantidad * dp.precio_unitario) as total_ventas
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
JOIN detalle_pedido dp ON p.pedido_id = dp.pedido_id
WHERE p.fecha_pedido BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.cliente_id, c.nombre
ORDER BY total_ventas DESC;

-- 🚀 Crear índice para optimización
CREATE INDEX idx_pedidos_fecha_cliente 
ON pedidos(fecha_pedido, cliente_id);
```

## 🎯 Proyectos Incluidos

<div align="center">

```mermaid
graph TD
    A[🎯 Proyectos Prácticos] --> B[🏪 Sistema POS]
    A --> C[📚 Biblioteca Digital]
    A --> D[🏥 Hospital Management]
    A --> E[🏫 Sistema Educativo]
    A --> F[💰 Banca Online]
    
    B --> B1[Ventas y Facturación]
    B --> B2[Inventario]
    B --> B3[Reportes]
    
    C --> C1[Catálogo de Libros]
    C --> C2[Préstamos]
    C --> C3[Multas y Reservas]
    
    D --> D1[Pacientes y Historiales]
    D --> D2[Citas Médicas]
    D --> D3[Personal Médico]
    
    style B fill:#e74c3c,color:#fff
    style C fill:#3498db,color:#fff
    style D fill:#27ae60,color:#fff
    style E fill:#f39c12,color:#fff
    style F fill:#9b59b6,color:#fff
```

</div>

### 🏪 Sistema POS - Arquitectura de BD

```mermaid
erDiagram
    VENDEDOR {
        int vendedor_id PK
        string nombre
        string codigo_empleado UK
        decimal comision_pct
        boolean activo
    }
    
    CLIENTE {
        int cliente_id PK
        string nombre
        string documento UK
        string email
        string telefono
        text direccion
    }
    
    VENTA {
        int venta_id PK
        int vendedor_id FK
        int cliente_id FK
        datetime fecha_venta
        decimal subtotal
        decimal impuestos
        decimal total
        string forma_pago
        string estado
    }
    
    DETALLE_VENTA {
        int detalle_id PK
        int venta_id FK
        int producto_id FK
        int cantidad
        decimal precio_unitario
        decimal descuento
        decimal total_linea
    }
    
    PRODUCTO {
        int producto_id PK
        string codigo_barras UK
        string nombre
        decimal precio_venta
        decimal precio_costo
        int stock_actual
        int stock_minimo
        boolean activo
    }
    
    VENDEDOR ||--o{ VENTA : realiza
    CLIENTE ||--o{ VENTA : compra
    VENTA ||--o{ DETALLE_VENTA : contiene
    PRODUCTO ||--o{ DETALLE_VENTA : incluye
```

## 🧪 Testing y Validación

<div align="center">

![Tests](https://img.shields.io/badge/DB_Tests-Passing-brightgreen?style=for-the-badge&logo=postgresql)
![Data_Quality](https://img.shields.io/badge/Data_Quality-98%25-green?style=for-the-badge&logo=databricks)
![Performance](https://img.shields.io/badge/Query_Performance-Optimized-blue?style=for-the-badge&logo=speedtest)

</div>

### 🔧 Scripts de Testing
```sql
-- 🧪 Test de integridad referencial
DO $$
BEGIN
    -- Test: Verificar que no existan pedidos sin cliente
    IF EXISTS (
        SELECT 1 FROM pedidos p 
        LEFT JOIN clientes c ON p.cliente_id = c.cliente_id 
        WHERE c.cliente_id IS NULL
    ) THEN
        RAISE EXCEPTION 'Test FAILED: Existen pedidos sin cliente válido';
    END IF;
    
    -- Test: Verificar consistencia de totales
    IF EXISTS (
        SELECT 1 FROM pedidos p
        WHERE p.total != (
            SELECT SUM(dp.cantidad * dp.precio_unitario) 
            FROM detalle_pedido dp 
            WHERE dp.pedido_id = p.pedido_id
        )
    ) THEN
        RAISE EXCEPTION 'Test FAILED: Inconsistencia en totales de pedidos';
    END IF;
    
    RAISE NOTICE 'Todos los tests de integridad PASARON ✅';
END $$;
```

## 📚 Casos de Estudio

<div align="center">

| Caso | Industria | Complejidad | Tecnología |
|------|-----------|-------------|------------|
| 🛒 E-commerce | Retail | ⭐⭐⭐ | PostgreSQL |
| 🏥 Hospital | Salud | ⭐⭐⭐⭐ | SQL Server |
| 🏫 Universidad | Educación | ⭐⭐⭐ | MySQL |
| 🏦 Banco | Finanzas | ⭐⭐⭐⭐⭐ | Oracle |
| 📺 Streaming | Media | ⭐⭐⭐⭐ | PostgreSQL |

</div>

## 🗓️ Roadmap de Desarrollo

```mermaid
gantt
    title Roadmap - Bases de Datos Estructuradas
    dateFormat  YYYY-MM-DD
    section Fundamentos
    Modelo Relacional    :done,    fund1, 2024-01-01,2024-01-15
    Normalización       :done,    fund2, 2024-01-16,2024-01-31
    SQL Básico          :done,    fund3, 2024-02-01,2024-02-15
    
    section Intermedio
    JOINs Avanzados     :active,  inter1, 2024-02-16,2024-02-28
    Funciones y Procedimientos : inter2, 2024-03-01,2024-03-15
    Triggers y Eventos  :         inter3, 2024-03-16,2024-03-31
    
    section Avanzado
    Optimización        :         adv1, 2024-04-01,2024-04-15
    Administración BD   :         adv2, 2024-04-16,2024-04-30
    Proyectos Finales   :         adv3, 2024-05-01,2024-05-31
```

## 🛠️ Herramientas y Utilidades

### 📊 Clientes de Base de Datos

<div align="center">

```mermaid
graph LR
    A[🛠️ Herramientas] --> B[🖥️ GUI Clients]
    A --> C[💻 CLI Tools]
    A --> D[🌐 Web Tools]
    
    B --> B1[DBeaver Universal]
    B --> B2[pgAdmin PostgreSQL]
    B --> B3[MySQL Workbench]
    
    C --> C1[psql PostgreSQL]
    C --> C2[mysql MySQL CLI]
    C --> C3[sqlite3 SQLite]
    
    D --> D1[phpMyAdmin]
    D --> D2[Adminer]
    D --> D3[phpPgAdmin]
    
    style B1 fill:#336791,color:#fff
    style B2 fill:#336791,color:#fff
    style B3 fill:#4479A1,color:#fff
```

</div>

### ⚙️ Scripts de Automatización

```bash
#!/bin/bash
# 🔧 Script de backup automático

DB_NAME="practica_bd"
BACKUP_DIR="/backup/database"
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_$DATE.sql"

# Crear directorio si no existe
mkdir -p $BACKUP_DIR

# Realizar backup
pg_dump -h localhost -U postgres $DB_NAME > $BACKUP_FILE

# Comprimir backup
gzip $BACKUP_FILE

echo "✅ Backup completado: ${BACKUP_FILE}.gz"

# Limpiar backups antiguos (mantener últimos 7 días)
find $BACKUP_DIR -name "*.sql.gz" -mtime +7 -delete
```

## 🤝 Contribuir al Proyecto

<div align="center">

```mermaid
graph LR
    A[🍴 Fork] --> B[🌿 Branch]
    B --> C[💾 Code]
    C --> D[🧪 Test]
    D --> E[📝 Commit]
    E --> F[🚀 Push]
    F --> G[📬 Pull Request]
    G --> H[🔍 Review]
    H --> I[✅ Merge]
    
    style A fill:#e74c3c,color:#fff
    style I fill:#27ae60,color:#fff
```

</div>

### 📋 Guías de Contribución

1. **🍴 Fork** el repositorio
2. **🌿 Crea** tu rama (`git checkout -b feature/nueva-funcionalidad`)
3. **💾 Desarrolla** siguiendo las convenciones SQL
4. **🧪 Prueba** tus consultas en diferentes SGBD
5. **📝 Documenta** tus cambios y ejemplos
6. **🚀 Sube** tus cambios (`git push origin feature/nueva-funcionalidad`)
7. **📬 Abre** un Pull Request con descripción detallada

### ✅ Checklist para Contribuciones

- [ ] ✅ Código SQL compatible con PostgreSQL/MySQL
- [ ] 📖 Documentación clara y ejemplos
- [ ] 🧪 Tests de validación incluidos
- [ ] 🎯 Casos de uso prácticos
- [ ] 📊 Diagramas ER cuando sea necesario
- [ ] ⚡ Consideraciones de performance

## 📊 Estadísticas del Proyecto

<div align="center">

![GitHub Stats](https://github-readme-stats.vercel.app/api?username=Arkanabytes&show_icons=true&theme=tokyonight&include_all_commits=true&count_private=true)

![Database Activity](https://github-readme-streak-stats.herokuapp.com/?user=Arkanabytes&theme=tokyonight&hide_border=true)

</div>

## 📄 Licencia

<div align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

</div>

Este proyecto está bajo la **Licencia MIT** - consulta el archivo [LICENSE](LICENSE) para más detalles.

## 👨‍💻 Autor

<div align="center">

<img src="https://github.com/Arkanabytes.png" width="100px" style="border-radius: 50%">

**Arkanabytes**

[![GitHub](https://img.shields.io/badge/GitHub-Arkanabytes-black?style=for-the-badge&logo=github)](https://github.com/Arkanabytes)
[![Email](https://img.shields.io/badge/Email-Contact-red?style=for-the-badge&logo=gmail)](mailto:tu-email@ejemplo.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Perfil-blue?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/tu-perfil)

</div>

## 🌟 Agradecimientos Especiales

<div align="center">

```mermaid
mindmap
  root((🙏 Gracias))
    🗄️ Comunidad DB
      PostgreSQL Team
      MySQL Developers
      SQLite Authors
    📚 Recursos
      W3Schools SQL
      SQLBolt
      DB-Engines
    🛠️ Her
