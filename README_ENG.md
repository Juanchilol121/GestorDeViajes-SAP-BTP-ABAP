# Travel Management System (SAP BTP)

Full-Stack Cloud Native application developed in the **SAP BTP ABAP Environment** using the **RAP** (RESTful Application Programming Model) programming model.

# Like what you see? Let's connect!
[Visit my LinkedIn Profile](https://www.linkedin.com/in/juan-marcos-sangiovanni-4162b5263/)

## Objective
The goal of this project was to build a real-world solution for managing actual business activities. I chose to develop a robust app for corporate travel management, demonstrating the full SAP cloud development lifecycle, from data persistence to the Fiori user interface.

## Screenshots / Demo

<img width="1858" height="915" alt="Main List Report" src="https://github.com/user-attachments/assets/08e2d7d6-5d9d-449a-b3b3-02ed7e8e22bf" />

**Travel Creation Screen:**
<img width="1894" height="903" alt="Creation View" src="https://github.com/user-attachments/assets/c1c9bd54-ffc1-4b28-992e-37ee21d8c955" />

**Error screen when entering invalid data (End Date earlier than Start Date):**
<img width="1901" height="907" alt="Validation Error" src="https://github.com/user-attachments/assets/5f65fd4b-63b3-40c0-ba5e-51c381c38401" />

## DEMO VIDEO

https://github.com/user-attachments/assets/9add0b8f-9859-4d44-8b51-f2261f188a97

## Tech Stack
* **Language:** ABAP Cloud (Strict version).
* **Data Model:** CDS Views (Core Data Services) for semantic modeling.
* **Business Logic:** Behavior Definitions & Implementations (Managed Scenario).
* **Validations:** EML (Entity Manipulation Language) logic for date consistency.
* **API:** OData V4 Service.
* **Frontend:** SAP Fiori Elements (Dynamic generation via UI Annotations).

## Key Features
1. **Full CRUD:** Complete Create, Read, Update, and Delete capabilities for travel records.
2. **Business Validations:** Logic control to prevent inconsistent dates (`End Date < Start Date`) using native error message handling (see third screenshot).
3. **Dynamic UI:** Adaptable interface generated via annotations.
