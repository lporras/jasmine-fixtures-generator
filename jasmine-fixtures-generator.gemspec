# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jasmine-fixtures-generator"

Gem::Specification.new do |s|
  s.name        = "jasmine-fixtures-generator"
  s.version     = Jasmine::Fixtures::Generator::VERSION
  s.authors     = ["Luis Porras", "Guillermo Iguaran"]
  s.email       = ["lporras16@gmail.com", "guilleiguaran@gmail.com"]
  s.homepage    = "https://github.com/lporras/jasmine-fixtures-generator"
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "jasmine-fixtures-generator"

  s.add_runtime_dependency "jasmine", ">= 1.0.0"
  s.add_runtime_dependency "railties", ">= 3.0.0"
  s.add_runtime_dependency "nokogiri", ">= 1.4.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
