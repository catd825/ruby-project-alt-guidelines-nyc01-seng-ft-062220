

class CommandLineInterface
    attr_reader :current_client_lead

    def greet
        puts 'Welcome to your agency staffing app!'
    end

    def run

        greet
        while true
        puts "Enter 'options' for a list of options or 'exit' to exit the app."
        input = gets.strip

        break if input == "quit" || input == "exit"

        case input
        when "options"
          options
        when "list_projects"
            Project.all.each { |project| puts project.project_name }
        when "list client leads"
            list_all_client_leads
        when "list_client_accounts"
            client_accounts = ClientAccount.all.map { |client_acct|  client_acct.client_name }
            puts client_accounts.uniq
        when "list projects for client lead"
          list_projects_for_client_lead
        when "delete employee"
            puts "please enter the employee leaving"
            name = gets.strip
            delete_employee(name)
        when "add employee"
            puts "please enter the new hire"
            name = gets.strip
            title = gets.strip
            create_employee(name, title)
        when "promote employee"
            puts "which employee do you want to promote?"
            name = gets.strip
            puts "what is their new title?"
            title = gets.strip
            promote_employee(name, title)
        else
          puts "\n  invalid command, type 'help' to see a list of available commands"
        end
    end
end

    def create_employee(name, title)
        Employee.find_or_create_by(name: name, employee_title: title)
    end


    def delete_employee(name)
        Employee.find_by(name: name).delete
    end

    def promote_employee(name, title)
         Employee.find_by(name: name).update(employee_title: title)
    end

    def list_all_client_leads
        client_leads = ClientLead.all.map { |client_lead| client_lead.name}
        puts client_leads.uniq
    end

    def options
        puts "project_list: lists all projects"
        puts "list_client_leads: lists client leads"
        puts "list_client_accounts: lists client accounts"
        puts "delete employee"
    end

end







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

