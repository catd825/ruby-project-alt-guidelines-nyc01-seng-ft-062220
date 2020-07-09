require 'pry'

ClientLead.destroy_all
ClientAccount.destroy_all
Employee.destroy_all
Project.destroy_all
ProjectEmployee.destroy_all

client_lead1 = ClientLead.create(name: "Vinnie", title: "Account Director")
client_lead2 = ClientLead.create(name: "Judy", title: "SVP Account Director")
client_lead3 = ClientLead.create(name: "Carmen", title: "Group Account Director")
client_lead4 = ClientLead.create(name: "Steve", title: "Senior Account Manager")

client_account1 = ClientAccount.create(client_name: "Chase", brand_name: "Credit Cards", client_lead_id: client_lead1.id)
client_account2 = ClientAccount.create(client_name: "Chase", brand_name: "Small Business", client_lead_id: client_lead2.id)
client_account3 = ClientAccount.create(client_name: "Georgia Pacific", brand_name: "Quilted Northern", client_lead_id: client_lead4.id)
client_account4 = ClientAccount.create(client_name: "Georgia Pacific", brand_name: "Dixie", client_lead_id: client_lead3.id)

employee1 = Employee.create(name: "Cathy", employee_title: "Strategist", client_account: client_account1)
employee2 = Employee.create(name: "Melissa", employee_title: "Copywriter", client_account: client_account2)
employee3 = Employee.create(name: "David", employee_title: "Digital Strategist", client_account: client_account3)
employee4 = Employee.create(name: "Adam", employee_title: "Art Director", client_account: client_account2)
employee5 = Employee.create(name: "Ross", employee_title: "Communications Manager", client_account: client_account4)

project1 = Project.create(project_name: "Brand Strategy", client_account: client_account3) 
project2 = Project.create(project_name: "Website Redesign", client_account: client_account2)
project3 = Project.create(project_name: "Banner Update", client_account: client_account1)
project4 = Project.create(project_name: "Website Maintenance", client_account: client_account2)
project5 = Project.create(project_name: "Photoshoot", client_account: client_account2)
project6 = Project.create(project_name: "Print Ad", client_account: client_account3)

project_employee1 = ProjectEmployee.create(project: project1, employee: employee1)
project_employee2 = ProjectEmployee.create(project: project2, employee: employee5)
project_employee3 = ProjectEmployee.create(project: project3, employee: employee3)
project_employee4 = ProjectEmployee.create(project: project4, employee: employee4)
project_employee5 = ProjectEmployee.create(project: project5, employee: employee2)
project_employee6 = ProjectEmployee.create(project: project6, employee: employee3)
project_employee7 = ProjectEmployee.create(project: project6, employee: employee1)
project_employee8 = ProjectEmployee.create(project: project1, employee: employee2)



# binding.pry
