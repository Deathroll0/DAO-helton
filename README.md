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

##MySQL
'''
create database Sistema_Venta;
use Sistema_Venta;

create table Cliente #1
(
	Rut varchar(15),
    Nombre varchar(30),
    Edad int,
    
    primary key(Rut)
);

INSERT INTO Cliente VALUES("16074217-8","BUSTOS SAEZ HELTON SMITH",27);
INSERT INTO Cliente VALUES("7336948-7","JORGE SAAVEDRA DIAZ",47);
INSERT INTO Cliente VALUES("14523997-4","BAHAMONDE LONCON ISABEL",27);
INSERT INTO Cliente VALUES("18790233-9","MORALES TILLE  PRISCILA",24);
INSERT INTO Cliente VALUES("18125414-9","SANTA MARIA DANIELA",22);
INSERT INTO Cliente VALUES("17017947-1","CARVALLO CARRASCO PAMELA",26);


create table Producto #2
(
	Cod_Producto varchar(6),
    Nombre varchar(30),
    Stock int,
    
    primary key(Cod_Producto)
);

INSERT INTO Producto VALUES("SKU001","Televisor",10);
INSERT INTO Producto VALUES("SKU002","Play Station 4",10);
INSERT INTO Producto VALUES("SKU003","Pendrive",10);
INSERT INTO Producto VALUES("SKU004","Notebook",10);
INSERT INTO Producto VALUES("SKU005","Celular",10);
INSERT INTO Producto VALUES("SKU006","Lavadora",10);
INSERT INTO Producto VALUES("SKU007","Microondas",10);
INSERT INTO Producto VALUES("SKU008","Plancha",10);
INSERT INTO Producto VALUES("SKU009","Radio",10);
INSERT INTO Producto VALUES("SKU010","PS Vita",10);

create table Compra #3
(
	Id int,
    Fecha varchar(20),
    Cantidad int,
    Precio int,
    Rut varchar(15),
    Cod_Producto varchar(6),
    
    primary key(Id),
    
    constraint FK_Compra_REF_Cliente
		foreign key (Rut) references Cliente(Rut),
    constraint FK_Compra_REF_Producto
		foreign key (Cod_Producto) references Producto(Cod_Producto)
);

use mysql;
create user 'admin_Sis_Venta'@'localhost' identified by '';
grant all privileges on Sistema_Venta.* to 'admin_Sis_Venta'@'localhost';
flush privileges;
'''
