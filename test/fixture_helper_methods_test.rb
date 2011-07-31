require 'test_helper'
require 'generators/templates/jasmine_fixture_generator_methods'

class FixtureHelperMethodsTest < ActiveSupport::TestCase
  include FixtureHelperMethods

  test "#save_fixture" do
    save_fixture("<html><body><p>prueba</p></body></html>", "test_file")
  end
end