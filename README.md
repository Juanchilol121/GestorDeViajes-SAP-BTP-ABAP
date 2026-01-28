# Sistema de Gestión de Viajes(SAP BTP)

Aplicación Full-Stack Cloud Native desarrollada en **SAP BTP ABAP Environment** utilizando el modelo de programación **RAP** (RESTful Application Programming Model).

## Objetivo
El Objetivo del Proyecto era desarrollar una solución real para la gestión de actividades reales. Opté por desarrollar una app robusta para la gestión de viajes corporativos, demostrando el ciclo completo de desarrollo en la nube de SAP, desde la persistencia de datos hasta la interfaz de usuario Fiori.

## Capturas de Pantalla / Demo

<img width="1858" height="915" alt="image" src="https://github.com/user-attachments/assets/08e2d7d6-5d9d-449a-b3b3-02ed7e8e22bf" />

Pantalla de Creación de Viaje:
<img width="1894" height="903" alt="image" src="https://github.com/user-attachments/assets/c1c9bd54-ffc1-4b28-992e-37ee21d8c955" />

Pantalla de error al poner Datos erroneos (fecha de inicio posterior a decha de finalización)
<img width="1901" height="907" alt="image" src="https://github.com/user-attachments/assets/5f65fd4b-63b3-40c0-ba5e-51c381c38401" />




## Stack Tecnológico Usado
* **Lenguaje:** ABAP Cloud (versión estricta).
* **Modelo de Datos:** CDS Views (Core Data Services) para modelado semántico.
* **Lógica de Negocio:** Behavior Definitions & Implementations (Managed Scenario).
* **Validaciones:** Lógica EML (Entity Manipulation Language) para consistencia de fechas.
* **API:** OData V4 Service.
* **Frontend:** SAP Fiori Elements (Generación dinámica mediante UI Annotations).

## Funcionalidades Clave
1.  **CRUD Completo:** Creación, lectura, actualización y borrado de viajes. (CRUD -> Create, Read, Update, Delete)
2.  **Validaciones de Negocio:** Control lógico para evitar fechas inconsistentes (`End Date < Start Date`) con gestión de mensajes de error nativos (ver tercera captura).
3.  **UI Dinámica:** Interfaz adaptable mediante anotaciones `@UI` sin uso de JavaScript.
