# Shipping Logistics Database

A relational database design for managing customers, shipments, and airway bills in a shipping and logistics environment.

## Database Structure

The database contains three relations:

- **Customer** — stores customer information.
- **Shipment** — stores shipment details and links each shipment to a customer.
- **AirwayBill** — stores airway bill information and links each airway bill to a shipment.

## Relationships

- One Customer can have many Shipments.
- One Shipment is associated with one Customer.
- One Shipment is associated with one AirwayBill.

## Project Files

- `erd/shipping-logistics-erd.png` — Entity Relationship Diagram
- `schema/shipping-logistics.dbml` — DBML database schema
- `sql/shipping-logistics.sql` — SQL DDL statements

## Technologies

- SQL
- DBML
- dbdiagram.io
