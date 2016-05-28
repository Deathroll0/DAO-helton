PROYECTO - DAO
===

#Taller de Programación 2

---
**Para este proyecto se debe usar :**

*DAO + Singleton + MVC + MySQL + JSTL*

**Fecha de entrega** : Jueves 02 de Junio, 2016

---
##Instrucciones
**Crear las siguientes tablas :**

 _____________________
|      CLIENTE        |
 ---------------------
| **Rut** *Varchar(15)* **PK**  |
| **Nombre** *Varchar(30)*  |
| **Edad**  *int*           |
 _____________________

_____________________
|      COMPRA        |
 ---------------------
| **Id** *int(Autoincrementable)* **PK**  |
| **Fecha** *Varchar(20)*  |
| **Cantidad**  *int*           |
| **Precio**  *int*           |
| **Rut**  *Varchar(15)* **FK**           |
| **Cod_Producto**  *Varchar(15)* **FK**           |
 _____________________
 
 _____________________
|      PRODUCTO        |
 ---------------------
| **Cod_Producto**  *Varchar(15)* **FK**           |
| **Nombre** *Varchar(30)*  |
| **Stock**  *int*           |
 _____________________
