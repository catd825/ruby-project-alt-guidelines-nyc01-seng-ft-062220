Agency staffing app

User story
As a user, I want to see all available projects, leads, client accounts, and employees.  I also want to see what projects an employee is working on.
As a user, I want to remove employees when they are terminated from the agency.
As a user, I want to add employees when they are hired to the agency.
As a user, I want to update employees’ titles when they are promoted.

Relationships
A client lead has many client accounts
A client lead has many projects and employees through client accounts
A client lead has many project_employees (join table) through projects and employees

Client accounts belong to client lead
Client accounts have many employees and projects
Client accounts have many project_employees (join table) through projects and employees

Projects belong to client accounts
Projects have many employees through project employees (join table)

Employee belong to client accounts
Employees have many projects through project employees (join table)
