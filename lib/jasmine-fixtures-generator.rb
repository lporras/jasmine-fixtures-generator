module Jasmine
  module Fixtures
    module Generator
    end
  end
end

require 'jasmine/fixtures/helper_methods'
require 'jasmine/fixtures/railtie' if defined?(Rails) && Rails::VERSION::MAJOR >= 3
