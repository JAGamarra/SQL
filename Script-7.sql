


-- Punto Uno
SELECT Fecha AS "Fecha Compra", ID_Compra AS "Cod. Compra", Proveedor AS "Nombre Proveedor", Pagado
FROM Compra
ORDER BY ID_Compra DESC LIMIT 10;

-- Punto Dos
SELECT Fecha_Inicio AS "Fec Inicio" ,Constructora AS "Nombre Constructora" , Ciudad AS "Nombre Ciudad", 
Nombre ||' '|| Primer_Apellido AS "Nombre Lider", Codigo_Tipo AS "Cod. Tipo" , Estrato
FROM Proyecto INNER JOIN Lider ON Lider.ID_Lider = Proyecto.ID_Lider 
INNER JOIN Tipo ON Tipo.ID_Tipo = PROYECTO.ID_Tipo 
WHERE (Fecha_Inicio BETWEEN "2019-09-01" AND "2019-09-09") AND Ciudad = 'Pereira';

--Punto Tres
SELECT COUNT(DISTINCT Proyecto.ID_Proyecto) AS "Numero Proyectos"
FROM Compra INNER JOIN Proyecto ON Proyecto.ID_Proyecto = Compra.ID_Proyecto
WHERE (Proyecto.Fecha_Inicio > "2019-12-12") AND (Proyecto.ID_Lider <> 6) AND ID_MaterialConstruccion <> 7 AND ID_MaterialConstruccion <> 1;

--Punto Tres V2.0
SELECT COUNT(DISTINCT Proyecto.ID_Proyecto) AS "Numero Proyectos"
FROM Proyecto INNER JOIN Compra ON Compra.ID_Proyecto = Proyecto.ID_Proyecto 
WHERE Fecha_Inicio >= "2019-12-12" AND ID_Lider <> 6 AND Compra.ID_MaterialConstruccion <> 7 AND Compra.ID_MaterialConstruccion <> 1 ;

-- Punto Tres v3.3
SELECT COUNT( p.ID_Proyecto) AS "Numero Proyectos"
FROM Proyecto p 
WHERE ((p.Fecha_Inicio >= "2019-12-12")
AND NOT EXISTS (SELECT l.ID_Lider FROM Lider l WHERE(l.ID_Lider = p.ID_Lider) AND (l.ID_Lider = 6))
AND NOT EXISTS (SELECT c.ID_Compra FROM Compra c WHERE (c.ID_Proyecto = p.ID_Proyecto) AND (c.ID_MaterialConstruccion = 1)
AND EXISTS (SELECT 1 FROM Compra c WHERE (c.ID_Proyecto = p.ID_Proyecto)AND (c.ID_MaterialConstruccion = 7))));

-- Punto Tres v3.1
SELECT COUNT(p.ID_Proyecto) AS "Numero Proyectos"
FROM Proyecto p 
WHERE ((p.Fecha_Inicio >= "2019-12-12") AND



SELECT COUNT() AS "Numero Proyectos"
FROM Compra c 
WHERE 


-- Punto Cuatro v1.0
SELECT SUBSTRING(l.Nombre,1,1) || SUBSTRING(l.Primer_Apellido,1,1) || SUBSTRING(l.Segundo_Apellido,1,1) AS "Abrev" 
FROM Lider l; 

-- Punto Cinco
SELECT p.Constructora 
FROM Proyecto p INNER JOIN Lider l ON l.ID_Lider = p.ID_Lider 
WHERE 


