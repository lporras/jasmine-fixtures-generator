require 'test_helper'
require 'jasmine_fixtures'

class FixtureHelperMethodsTest < ActiveSupport::TestCase

  test "#save_fixture creates an html file with the given name" do
    save_fixture("<p>prueba</p>", "test_file.html")
    fixture_path = File.join(Rails.root, '/spec/javascripts/fixtures')
    fixture_file = File.join(fixture_path, "test_file.html")
    assert_equal true, File.exists?(fixture_file)
  end
end