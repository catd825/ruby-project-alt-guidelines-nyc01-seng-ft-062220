require 'pry'

ClientLead.destroy_all
ClientAccount.destroy_all
Employee.destroy_all
Project.destroy_all

client_lead1 = ClientLead.create(name: "Vinnie", title: "Account Director")
client_lead2 = ClientLead.create(name: "Judy", title: "SVP Account Director")
client_lead3 = ClientLead.create(name: "Carmen", title: "Group Account Director")
client_lead4 = ClientLead.create(name: "Steve", title: "Senior Account Manager")

client_account1 = ClientAccount.create(client_name: "Chase", brand_name: "Credit Cards", client_lead_id: client_lead1.id)
client_account2 = ClientAccount.create(client_name: "Chase", brand_name: "Small Business", client_lead_id: client_lead2.id)
client_account3 = ClientAccount.create(client_name: "Georgia Pacific", brand_name: "Quilted Northern", client_lead_id: client_lead4.id)

employee1 = Employee.create(name: "Cathy", employee_title: "Strategist")
employee2 = Employee.create(name: "Melissa", employee_title: "Copywriter")
employee3 = Employee.create(name: "David", employee_title: "Digital Strategist")
employee4 = Employee.create(name: "Adam", employee_title: "Art Director")

project1 = Project.create(project_name: "Brand Strategy", employee: employee1, client_account: client_account2)
project2 = Project.create(project_name: "Website Redesign", employee: employee2, client_account: client_account3)
project3 = Project.create(project_name: "Banner Update", employee: employee3, client_account: client_account1)
project4 = Project.create(project_name: "Website Maintenance", employee: employee4, client_account: client_account1)
project5 = Project.create(project_name: "Photoshoot", employee: employee2, client_account: client_account2)
project6 = Project.create(project_name: "Print Ad", employee: employee3, client_account: client_account3)


binding.pry

#To find all projects an employee works on - employee1.projects
#To find all employees working on a project - project1






# (1..4).each do |i|
#     employee1 = Employee.create(name: "name" + i.to_s, employee_title: "title" + i.to_s)
#     project1 = Project.create(project_name: "project name" + i.to_s, employee: employee1, client_account1 + i.to_s: client_account2)
# end