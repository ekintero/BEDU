#Eduardo Quintero Sampayo
#Sesion 02
#Reto 01
show databases;
use tienda;
show tables;
describe puesto;

#Reto 1
#¿Qué artículos incluyen la palabra Pasta en su nombre?
SELECT *
FROM articulo
WHERE nombre LIKE "%Pasta%";

#¿Qué artículos incluyen la palabra Cannelloni en su nombre?
SELECT *
FROM articulo
WHERE nombre LIKE "%Cannelloni%";

#¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT *
FROM articulo
WHERE nombre LIKE '%-%';

#¿Qué puestos incluyen la palabra Designer?
SELECT *
FROM puesto
WHERE nombre LIKE "%Designer%";

#¿Qué puestos incluyen la palabra Developer?
SELECT *
FROM puesto
WHERE nombre LIKE "%Developer%";

#Reto 2
#¿Cuál es el promedio de salario de los puestos?
SELECT avg(salario) AS "Promedio salario"
FROM puesto;

#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT count(nombre)
FROM articulo
WHERE nombre LIKE "%Pasta%";

#¿Cuál es el salario mínimo y máximo?
SELECT min(salario), max(salario) 
FROM puesto;

#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT sum(salario)
FROM puesto
WHERE id_puesto >= 995
LIMIT 5;


#Reto 3
#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(nombre) AS "Numero registros"
FROM puesto
GROUP BY nombre;

#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) AS "Paga total"
FROM puesto
GROUP BY nombre;

#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(id_venta) AS "Numero de ventas"
FROM venta
GROUP BY id_empleado;

#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(id_venta) AS "Total de ventas por articulo"
FROM venta
GROUP BY id_articulo;


