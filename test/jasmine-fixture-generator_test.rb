require "test_helper"
require "generators/jasmine-fixtures"

class JasmineFixturesGeneratorTest < Rails::Generators::TestCase
  tests JasmineFixturesGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator
    assert_file "spec/support/fixture_helper_methods.rb"
    assert_file "spec/javascripts/helpers/jasmine-jquery.js"
    assert_file "spec/controllers/jasmine_fixture_creators_spec.rb"
    assert_file "spec/javascripts/example_users_spec.js"
  end
end
