class JasmineFixturesGenerator < Rails::Generators::Base

  desc "This generator install jasmine-jquery and add jasmine_fixture_generator_methods.rb"
  source_root File.expand_path('../templates', __FILE__)

  def copy_jasmine_jquery
    say_status("copying", "jasmine-jquery", :green)
    copy_file "../../../../vendor/jasmine-jquery.js", "spec/javascripts/helpers/jasmine-jquery.js"
  end

  def copy_jasmine_fixture_generator_methods
    say_status("copying", "jasmine_fixture_generator_methods.rb", :green)
    copy_file "jasmine_fixture_generator_methods.rb", "spec/support/jasmine_fixture_generator_methods.rb"
  end
end
