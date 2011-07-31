# Add fixture-generation methods to ControllerExampleGroup. We load
# this file within our spec_helper.rb

module FixtureHelperMethods
  # Saves the markup to a fixture file using the given name
  def save_fixture(markup, name)
    puts Rails
    puts Rails.root
    fixture_path = File.join(Rails.root, '/spec/javascripts/fixtures')
    Dir.mkdir(fixture_path) unless File.exists?(fixture_path)

    fixture_file = File.join(fixture_path, "#{name}.html")
    File.open(fixture_file, 'w') do |file|
      file.puts(markup)
    end
  end

  # From the controller spec response body, extracts html identified
  # by the css selector.
  def html_for(selector)
    doc = Nokogiri::HTML(response.body)

    remove_third_party_scripts(doc)
    content = doc.css(selector).first.to_s

    convert_body_tag_to_div(content)
  end

  # Recommended that you add all body-level third party scripts inside a div called #third-party-scripts
  # so that they can be removed during testing.
  def remove_third_party_scripts(doc)
    scripts = doc.at('#third-party-scripts')
    scripts.remove if scripts
  end

  # Many of our css and jQuery selectors rely on a class attribute we
  # normally embed in the <body>. For example:
  #
  # <body class="workspaces show">
  #
  # Here we convert the body tag to a div so that we can load it into
  # the document running js specs without embedding a <body> within a <body>.
  def convert_body_tag_to_div(markup)
    markup.gsub("<body", '<div').gsub("</body>", "</div>")
  end
end

RSpec::Rails::ControllerExampleGroup.extend(FixtureHelperMethods) if defined?(RSpec)
