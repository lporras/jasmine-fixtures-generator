namespace :test do
   Rake::TestTask.new(:generate_js_fixtures) do |t|
      t.libs << "test"
      root = (defined?(Rails) && ['test', 'development'].include?(Rails.env) ) ? Rails.root : File.join(File.dirname(__FILE__), "..", "..")
      js_fixture_dir = File.join(root, "test", "fixtures")
      t.pattern = "#{js_fixture_dir.to_s}/*_fixture_generator.rb"
      t.verbose = true
   end
   Rake::Task['test:generate_js_fixtures'].comment = "Generate fixtures for javascript testing"
end