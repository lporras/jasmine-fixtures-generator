require 'jasmine/fixtures/task'

module Jasmine
  module Fixtures
    class Railtie < Rails::Railtie
      rake_tasks do
        Jasmine::Fixtures::Task.new
      end
    end
  end
end