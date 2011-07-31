module Rails
  def self.root
    File.expand_path("../../tmp", File.dirname(__FILE__))
  end
end
