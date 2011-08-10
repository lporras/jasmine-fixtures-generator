# Jasmine Fixtures Generator [![Build Status](http://travis-ci.org/lporras/jasmine-fixtures-generator.png)](http://travis-ci.org/lporras/jasmine-fixtures-generator)
Fixtures Generator for Jasmine under Rails 3.x using rspec_controller or funtionals tests (largelly based in [jasmine-fixtures](https://github.com/mavenlink/jasmine-fixtures) for Rails 2.x)


## Installation

Install the gem:

    gem install jasmine-fixtures-generator

Add it to your Gemfile:

    gem "jasmine-fixtures-generator", :group => :development, :require => false

Add the require in spec_helper.rb

    require 'jasmine_fixtures'

or

Add the require in test_helper.rb if you don't use rspec

    require 'jasmine_fixtures'

## Usage

Run the generator:

    rails generate jasmine_fixtures

## Contributing to Jasmine Fixtures Generator

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.


## Copyright

Copyright (c) 2011 Luis Porras, Guillermo Iguaran. See MIT-LICENSE for
further details.
