class CommandLineInterface

    def greet
        puts 'Welcome to your agency staffing app!'
    end

    def run
        # binding.pry
        greet
        while true
        puts "Enter 'options' for a list of options or 'exit' to exit the app."
        input = gets.strip

        break if input == "quit" || input == "exit"

        case input
        when "options"
          options
        when "List projects"
            Project.all.each { |project| puts project.project_name }
        when "List client leads"
            list_all_client_leads
        when "List client accounts"
            client_accounts = ClientAccount.all.map { |client_acct|  client_acct.client_name }
            puts client_accounts.uniq
        when "List employees"
            list_all_employees
        when "Terminate employee"
            puts "Please enter the employee leaving"
            name = gets.strip
            delete_employee(name)
        when "List employee projects"
            puts "Please enter an employee to see their projects"
            name = gets.strip
            list_of_employee_projects(name)
        when "Hire employee"
            puts "Please enter the name of your new hire"
            name = gets.strip
            puts "Please enter the title of your new hire"
            title = gets.strip
            puts "Please enter the ID of the client to assign to"
            client_id = gets.strip
            create_employee(name, title, client_id)
        when "Promote employee"
            puts "Which employee do you want to promote?"
            name = gets.strip
            puts "What is their new title?"
            title = gets.strip
            promote_employee(name, title)

        # when "Add employee to project"
        #     puts "Who do you want to assign?"
        #     name = gets.strip
        #     puts "What project were they be assigned to?"
        #     orig_project = gets.strip
        #     puts "What project will they be assigned to?"
        #     new_project = gets.strip
        #     assign_employee(name, orig_project, new_project)

        when "List employee projects"
            puts "Whose projects would you like to see?"
            name = gets.strip
            list_of_employee_projects(name)
        else
          puts "\n  invalid command, type 'help' to see a list of available commands"
        end
    end
end

    def create_employee(name, title, client_id)
        Employee.find_or_create_by(name: name, employee_title: title, client_account_id: client_id)
    end

    def delete_employee(name)
        Employee.find_by(name: name).delete
    end

    def promote_employee(name, title)
        # binding.pry 
        Employee.find_by(name: name).update(employee_title: title)
    end

    def list_of_employee_projects(name)
        # binding.pry
        employee_projects = Employee.find_by(name: name).projects.map {|emp_inst| emp_inst.project_name}
        puts employee_projects.uniq
    end
    
    # def assign_employee(name, orig_project, new_project)
    #     Employee.find_by(name: name).projects(project_name: orig_project).update(project_name: new_project)
    #     # Employee.all[0].projects.update(project_name: "Strategy")
    #     # Employee.all[0].projects[0].update(project_name: "Brand Planning")
    # end

    def list_all_client_leads
        client_leads = ClientLead.all.map { |client_lead| client_lead.name}
        puts client_leads.uniq
    end

    def list_all_employees
        employees = Employee.all.map { |employee| employee.name}
        puts employees.uniq
    end

    def options
        puts "List projects: lists all projects"
        puts "List client leads: lists all client leads"
        puts "List client accounts: lists client accounts"
        puts "List employees: lists all active employees"
        puts "List employee projects: lists projects employees are working on"
        puts "Terminate employee: removes employee from list"
        puts "Hire employee: adds new employee to list"
        puts "Promote employee: updates title of existing employee"
    end

end


# binding.pry






    # def list_projects_for_client_lead
        # puts "What client lead is this for?"
        # current_client_lead = gets.chomp.downcase
        # @current_client_lead = 
        # ClientLead.find_or_create_by(name: client_lead)
        # system 'clear'
        # puts "Great! please hold."
        # p Project.all.select {|project| project.project_name if project.client_account.client_lead.name == current_client_lead}
        # Chase
        # ClientLead.all[3].projects
    # end

