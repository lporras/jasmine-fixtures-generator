module Jasmine
  module Fixtures
    class Railtie < Rails::Railtie
      rake_tasks do
        load "tasks/generate_js_fixture.rake"
      end
    end
  end
end
