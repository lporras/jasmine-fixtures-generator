require 'rails'
require "rails/test_help"

# For generators
require 'rails/generators/test_case'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }