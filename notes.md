Models:
ClientLead - :name, :title
ClientAccount - :client_name, :brand_name, :client_lead_id (foreign key)
Project - :project_name, :client_account_id, :employee_id
Employee - 

A client lead has many client accounts.
A client account has many projects.
A client account has many employees through its projects
An employee has many projects
An employee works on (has many) client accounts through its projects
Information is kept central through projects, which is the SSOT.
User Story
Having spent time on the operations side of the advertising world, this would be a useful tool for Ops to manage staffing across clients and projects.
-As a client lead, I want to see who is working on my projects for my client accounts.
-As an employee, I want to see what projects I am assigned to.
-As a client lead, I want to be able to add and remove employees to projects.
-As a client lead, i want to see the cost of each project (this would include adding hours and rates - would this get complicated?)