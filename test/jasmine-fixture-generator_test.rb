require "test_helper"
require "generators/jasmine-fixtures"

class JasmineFixturesGeneratorTest < Rails::Generators::TestCase
  tests JasmineFixturesGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator
    assert_file "spec/support/jasmine_fixture_generator_methods.rb"
    assert_file "spec/helpers/jasmine-jquery.js"
  end
end
