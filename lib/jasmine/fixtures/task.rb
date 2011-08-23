module Jasmine
  module Fixtures

    class Task
      include Rake::DSL if defined?(Rake::DSL)
      def initialize
        funtional_tests_task

        desc 'Generate Controller Specs for Jasmine javascript testing (spec/fixtures/)'
        task('spec:generate_js_fixtures'){ run_rspec_tests_task }
      end

      private
      def funtional_tests_task
        Rake::TestTask.new(:generate_js_fixtures) do |t|
           t.libs << "test"
           root = (defined?(Rails) && ['test', 'development'].include?(Rails.env) ) ? Rails.root : File.join(File.dirname(__FILE__), "..", "..")
           js_fixture_dir = File.join(root, "test", "fixtures")
           t.pattern = "#{js_fixture_dir.to_s}/*_fixture_generator.rb"
           t.verbose = true
        end
        Rake::Task['test:generate_js_fixtures'].comment = "Generate functional fixtures for Jasmine javascript testing (spec/fixtures/)"
      end

      def run_rspec_tests_task

      end
    end

  end
end