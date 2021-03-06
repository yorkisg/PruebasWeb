
-- LISTAR ULTIMA ACTUALIZACION DE TABLAS Y BASES DE DATOS --

SELECT UPDATE_TIME, TABLE_SCHEMA, TABLE_NAME
FROM information_schema.tables
ORDER BY UPDATE_TIME DESC, TABLE_SCHEMA, TABLE_NAME;

-- CANTIDAD DE TABLAS POR BASE DE DATOS --

SELECT TABLE_SCHEMA, COUNT(TABLE_NAME)
FROM information_schema.tables
GROUP BY TABLE_SCHEMA
ORDER BY TABLE_SCHEMA;

-- ULTIMA ACTUALIZACION DE UNA TABLA EN ESPECIFICO --

SELECT UPDATE_TIME
FROM   information_schema.tables
WHERE  TABLE_SCHEMA = 'sisp'
AND TABLE_NAME = 'tunal_users';

-- ULTIMA ACTUALIZACION DE UNA TABLA --

SELECT TABLE_NAME, UPDATE_TIME 
FROM information_schema.tables 
WHERE TABLE_TYPE = 'BASE TABLE' 
ORDER BY UPDATE_TIME desc;

-- LISTAR ESTATUS DE UNA TABLA EN ESPECIFICO --

SHOW TABLE STATUS FROM sisp LIKE 'tunal_users';

