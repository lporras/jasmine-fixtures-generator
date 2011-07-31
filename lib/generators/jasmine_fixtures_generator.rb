require "rails/generators/base"

class JasmineFixturesGenerator < Rails::Generators::Base

  desc "This generator install jasmine-jquery and add fixture_helper_methods.rb"
  source_root File.expand_path('../templates', __FILE__)

  def copy_jasmine_jquery
    say_status("copying", "jasmine-jquery", :green)
    copy_file "../../../vendor/jasmine-jquery.js", "spec/javascripts/helpers/jasmine-jquery.js"
  end

  def copy_fixture_helper_methods
    say_status("copying", "fixture_helper_methods.rb", :green)
    copy_file "spec/support/fixture_helper_methods.rb", "spec/support/fixture_helper_methods.rb"
  end

  def copy_jasmine_fixture_creators_spec
    say_status("copying", "jasmine_fixture_creators_spec.rb", :green)
    copy_file "spec/controllers/jasmine_fixture_creators_spec.rb", "spec/controllers/jasmine_fixture_creators_spec.rb"
  end

  def copy_jasmine_spec_example
    say_status("copying", "jasmine spec example", :green)
    copy_file "spec/javascripts/example_users_spec.js", "spec/javascripts/example_users_spec.js"
  end
end
