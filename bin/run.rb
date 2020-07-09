require 'tty-prompt'

require_relative '../config/environment'
require_relative '../lib/app/models/command_line_interface'

cli = CommandLineInterface.new
cli.run

