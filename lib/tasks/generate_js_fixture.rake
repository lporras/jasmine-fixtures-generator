require 'rake/testtask'

namespace :test do

   Rake::TestTask.new(:generate_js_fixtures) do |t|
      root = (defined?(Rails) && ['test', 'development'].include?(Rails.env) ) ? Rails.root : File.join(File.dirname(__FILE__), "..", "..")
      js_fixture_dir = File.join(root, "test", "fixtures")
      t.pattern = "#{js_fixture_dir.to_s}/*_fixture_generator.rb"
      t.verbose = true
   end
   Rake::Task['test:generate_js_fixtures'].comment = "Generate fixtures with funtionals for javascript testing"
end

require 'rspec/core/rake_task'

namespace :spec do
   desc "Generate fixtures with RSpec for javascript testing"
   RSpec::Core::RakeTask.new(:generate_js_fixtures) do |t|
      root = (defined?(Rails) && ['test', 'development'].include?(Rails.env) ) ? Rails.root : File.join(File.dirname(__FILE__), "..", "..")
      js_fixture_dir = File.join(root, "spec", "fixtures")
      t.pattern = "#{js_fixture_dir.to_s}/*_fixture_generator.rb"
      t.verbose = true
   end
end