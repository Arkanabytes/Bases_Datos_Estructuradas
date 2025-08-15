# 🗄️ Bases de Datos Estructuradas

<div align="center">

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Fira+Code&pause=1000&color=2E8B57&center=true&vCenter=true&width=500&lines=Dise%C3%B1o+de+Bases+de+Datos;Modelado+Conceptual;Implementaci%C3%B3n+SQL;Optimizaci%C3%B3n+de+Consultas)](https://git.io/typing-svg)

![GitHub stars](https://img.shields.io/github/stars/Arkanabytes/Bases_Datos_Estructuradas?style=social)
![GitHub forks](https://img.shields.io/github/forks/Arkanabytes/Bases_Datos_Estructuradas?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/Arkanabytes/Bases_Datos_Estructuradas?style=social)

![SQL](https://img.shields.io/badge/sql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/postgresql-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)

</div>

## 📋 Descripción

Este repositorio contiene una colección completa de **diseños de bases de datos estructuradas**, implementaciones SQL y documentación técnica para diferentes sistemas de gestión de bases de datos. Incluye desde conceptos básicos hasta implementaciones avanzadas con optimizaciones de rendimiento.

### 🎯 Objetivo del Proyecto

Proporcionar ejemplos prácticos y bien documentados de:
- Diseño de bases de datos normalizadas
- Implementación de modelos relacionales
- Optimización de consultas SQL
- Procedimientos almacenados y triggers
- Análisis de rendimiento y tuning

## 📚 Contenido del Repositorio

### 📁 Estructura de Directorios

```
Bases_Datos_Estructuradas/
├── 📊 01_Modelado_Conceptual/
│   ├── Diagramas_ER/
│   ├── Modelo_Logico/
│   └── Normalizacion/
├── 🏗️ 02_Implementacion/
│   ├── MySQL/
│   ├── PostgreSQL/
│   ├── SQLite/
│   └── SQL_Server/
├── 🔍 03_Consultas/
│   ├── Basicas/
│   ├── Intermedias/
│   ├── Avanzadas/
│   └── Optimizadas/
├── 📈 04_Procedimientos/
│   ├── Stored_Procedures/
│   ├── Functions/
│   ├── Triggers/
│   └── Views/
├── 🛠️ 05_Administracion/
│   ├── Backup_Recovery/
│   ├── Indices/
│   ├── Performance_Tuning/
│   └── Security/
├── 📖 06_Ejemplos_Practicos/
│   ├── Sistema_Ventas/
│   ├── Biblioteca/
│   ├── Hospital/
│   ├── Escuela/
│   └── E-Commerce/
└── 📚 07_Documentacion/
    ├── Guias/
    ├── Best_Practices/
    └── Referencias/
```

## 🎓 Proyectos Incluidos

### 🏪 Sistema de Ventas
- **Descripción**: Base de datos completa para un sistema de ventas
- **Entidades**: Clientes, Productos, Pedidos, Proveedores
- **Características**: Gestión de inventario, facturación, reportes
- **SGBD**: MySQL, PostgreSQL

### 📚 Sistema de Biblioteca
- **Descripción**: Gestión completa de biblioteca digital
- **Entidades**: Libros, Autores, Usuarios, Préstamos
- **Características**: Control de préstamos, multas, reservas
- **SGBD**: SQLite, MySQL

### 🏥 Sistema Hospitalario
- **Descripción**: Base de datos para gestión hospitalaria
- **Entidades**: Pacientes, Médicos, Citas, Historiales
- **Características**: Gestión de citas, historiales médicos
- **SGBD**: PostgreSQL, SQL Server

### 🎓 Sistema Educativo
- **Descripción**: Plataforma para gestión académica
- **Entidades**: Estudiantes, Profesores, Cursos, Calificaciones
- **Características**: Gestión de notas, horarios, inscripciones
- **SGBD**: MySQL, PostgreSQL

### 🛒 E-Commerce
- **Descripción**: Tienda online completa
- **Entidades**: Usuarios, Productos, Carritos, Pedidos
- **Características**: Carrito de compras, pagos, reviews
- **SGBD**: PostgreSQL, MySQL

## 💻 Tecnologías Utilizadas

| Tecnología | Versión | Propósito |
|------------|---------|-----------|
| **MySQL** | 8.0+ | Base de datos principal |
| **PostgreSQL** | 13+ | Base de datos avanzada |
| **SQLite** | 3.x | Base de datos liviana |
| **SQL Server** | 2019+ | Entorno empresarial |
| **phpMyAdmin** | Latest | Administración MySQL |
| **pgAdmin** | 4+ | Administración PostgreSQL |
| **DBeaver** | Latest | Cliente universal |

## 🚀 Instalación y Configuración

### Prerequisitos
- Sistema operativo: Windows/Linux/MacOS
- Al menos uno de los SGBD mencionados
- Cliente SQL (DBeaver, phpMyAdmin, etc.)

### MySQL
```sql
-- 1. Crear base de datos
CREATE DATABASE nombre_proyecto CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 2. Usar la base de datos
USE nombre_proyecto;

-- 3. Ejecutar scripts de creación
SOURCE /ruta/al/archivo/create_tables.sql;

-- 4. Insertar datos de prueba
SOURCE /ruta/al/archivo/insert_data.sql;
```

### PostgreSQL
```sql
-- 1. Conectar a PostgreSQL
psql -U usuario -h localhost

-- 2. Crear base de datos
CREATE DATABASE nombre_proyecto WITH ENCODING 'UTF8';

-- 3. Conectar a la base de datos
\c nombre_proyecto;

-- 4. Ejecutar scripts
\i /ruta/al/archivo/create_tables.sql
\i /ruta/al/archivo/insert_data.sql
```

### SQLite
```bash
# 1. Crear base de datos
sqlite3 nombre_proyecto.db

# 2. Ejecutar scripts
.read create_tables.sql
.read insert_data.sql
```

## 📊 Ejemplos de Consultas

### Consultas Básicas
```sql
-- Selección simple
SELECT nombre, email FROM clientes WHERE activo = 1;

-- Ordenamiento
SELECT * FROM productos ORDER BY precio DESC;

-- Filtros con condiciones
SELECT * FROM pedidos WHERE fecha BETWEEN '2023-01-01' AND '2023-12-31';
```

### Consultas Intermedias
```sql
-- JOINS
SELECT c.nombre, p.numero, p.total
FROM clientes c
INNER JOIN pedidos p ON c.id = p.cliente_id;

-- Funciones de agregación
SELECT categoria, COUNT(*) as total_productos, AVG(precio) as precio_promedio
FROM productos 
GROUP BY categoria;

-- Subconsultas
SELECT nombre FROM productos 
WHERE precio > (SELECT AVG(precio) FROM productos);
```

### Consultas Avanzadas
```sql
-- Window Functions
SELECT nombre, salario,
       ROW_NUMBER() OVER (PARTITION BY departamento ORDER BY salario DESC) as ranking
FROM empleados;

-- CTEs (Common Table Expressions)
WITH ventas_mensuales AS (
    SELECT MONTH(fecha) as mes, SUM(total) as total_mes
    FROM pedidos
    GROUP BY MONTH(fecha)
)
SELECT mes, total_mes, 
       LAG(total_mes) OVER (ORDER BY mes) as mes_anterior
FROM ventas_mensuales;
```

## 🔧 Procedimientos Almacenados

### Ejemplo: Gestión de Inventario
```sql
DELIMITER //
CREATE PROCEDURE ActualizarInventario(
    IN p_producto_id INT,
    IN p_cantidad INT,
    IN p_tipo ENUM('entrada', 'salida')
)
BEGIN
    DECLARE v_stock_actual INT;
    
    -- Obtener stock actual
    SELECT stock INTO v_stock_actual 
    FROM productos 
    WHERE id = p_producto_id;
    
    -- Actualizar según tipo de movimiento
    IF p_tipo = 'entrada' THEN
        UPDATE productos 
        SET stock = stock + p_cantidad 
        WHERE id = p_producto_id;
    ELSE
        IF v_stock_actual >= p_cantidad THEN
            UPDATE productos 
            SET stock = stock - p_cantidad 
            WHERE id = p_producto_id;
        ELSE
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Stock insuficiente';
        END IF;
    END IF;
END //
DELIMITER ;
```

## 📈 Análisis de Rendimiento

### Índices Recomendados
```sql
-- Índices para mejorar consultas frecuentes
CREATE INDEX idx_pedidos_cliente ON pedidos(cliente_id);
CREATE INDEX idx_pedidos_fecha ON pedidos(fecha);
CREATE INDEX idx_productos_categoria ON productos(categoria);
CREATE INDEX idx_clientes_email ON clientes(email);

-- Índice compuesto para consultas específicas
CREATE INDEX idx_pedidos_cliente_fecha ON pedidos(cliente_id, fecha);
```

### Análisis de Consultas
```sql
-- MySQL: Análisis de consulta
EXPLAIN SELECT * FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
WHERE p.fecha > '2023-01-01';

-- PostgreSQL: Análisis detallado
EXPLAIN ANALYZE SELECT * FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
WHERE p.fecha > '2023-01-01';
```

## 📋 Buenas Prácticas Implementadas

### Diseño de Base de Datos
- ✅ Normalización hasta 3FN
- ✅ Integridad referencial con FK
- ✅ Constraints de validación
- ✅ Índices optimizados
- ✅ Nomenclatura consistente

### Consultas SQL
- ✅ Uso de parámetros preparados
- ✅ Evitar SELECT *
- ✅ Límites en consultas grandes
- ✅ Uso apropiado de índices
- ✅ Comentarios en código complejo

### Seguridad
- ✅ Roles y permisos granulares
- ✅ Cifrado de datos sensibles
- ✅ Auditoría de cambios
- ✅ Backup automatizado
- ✅ Validación de entrada

## 🧪 Testing y Validación

### Scripts de Prueba
```sql
-- Validar integridad de datos
SELECT 'Clientes sin pedidos' as test,
       COUNT(*) as count
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
WHERE p.id IS NULL;

-- Verificar consistencia de precios
SELECT 'Productos sin precio' as test,
       COUNT(*) as count
FROM productos
WHERE precio IS NULL OR precio <= 0;
```

## 📚 Documentación Adicional

### 📖 Guías Incluidas
- **[Guía de Normalización](docs/normalizacion.md)**
- **[Optimización de Consultas](docs/optimizacion.md)**
- **[Procedimientos Almacenados](docs/procedimientos.md)**
- **[Backup y Recuperación](docs/backup.md)**
- **[Seguridad en Bases de Datos](docs/seguridad.md)**

### 🔗 Referencias Externas
- [Documentación MySQL](https://dev.mysql.com/doc/)
- [Documentación PostgreSQL](https://www.postgresql.org/docs/)
- [SQL Style Guide](https://www.sqlstyle.guide/)
- [Database Design Principles](https://en.wikipedia.org/wiki/Database_design)

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Para contribuir:

1. 🍴 Fork el proyecto
2. 🌿 Crea tu rama (`git checkout -b feature/nueva-funcionalidad`)
3. 💾 Commit tus cambios (`git commit -m 'Add: nueva funcionalidad'`)
4. 📤 Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. 🔃 Abre un Pull Request

### 🎯 Áreas de Contribución
- 📊 Nuevos modelos de datos
- 🔧 Optimizaciones de rendimiento
- 📚 Documentación mejorada
- 🧪 Casos de prueba adicionales
- 🛠️ Herramientas de administración

## 📊 Estadísticas del Proyecto

![GitHub repo size](https://img.shields.io/github/repo-size/Arkanabytes/Bases_Datos_Estructuradas)
![GitHub code size](https://img.shields.io/github/languages/code-size/Arkanabytes/Bases_Datos_Estructuradas)
![GitHub commits](https://img.shields.io/github/commit-activity/m/Arkanabytes/Bases_Datos_Estructuradas)
![GitHub last commit](https://img.shields.io/github/last-commit/Arkanabytes/Bases_Datos_Estructuradas)

## 📞 Contacto

👨‍💻 **Desarrollador**: Arkanabytes

[![LinkedIn](https://img.shields.io/badge/LinkedIn-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/tu-perfil)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:tu-email@gmail.com)
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Arkanabytes)

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ve el archivo [LICENSE](LICENSE) para más detalles.

## 🌟 Roadmap

### 📅 Próximas Versiones

#### v2.0 - Advanced Features
- [ ] 🔄 Replicación maestro-esclavo
- [ ] 📊 Dashboard de monitoreo
- [ ] 🚀 Migración automática de esquemas
- [ ] 🔐 Autenticación avanzada
- [ ] 📱 API REST para consultas

#### v2.1 - Cloud Integration
- [ ] ☁️ Despliegue en AWS RDS
- [ ] 📊 Integración con Tableau
- [ ] 🐳 Contenedores Docker
- [ ] 🤖 Scripts de automatización
- [ ] 📈 Métricas de rendimiento

## 🏆 Reconocimientos

- 📚 **Comunidad SQL** - Por compartir conocimientos
- 🎓 **Instituciones Educativas** - Por los casos de estudio
- 👥 **Desarrolladores** - Por feedback y mejoras
- 📖 **Documentación oficial** - Por las mejores prácticas

---

<div align="center">

**"Los datos son el nuevo petróleo, las bases de datos son las refinerías"** 🛢️➡️💎

*Desarrollado con 💚 y mucho SQL por [Arkanabytes](https://github.com/Arkanabytes)*

</div>
