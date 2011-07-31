require 'rails'
require "rails/test_help"

# For generators
require 'rails/generators/test_case'

class Rails
  def root
    File.expand_path("../tmp", File.dirname(__FILE__))
  end
end
