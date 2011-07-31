module Rails

  def root
    File.expand_path("../tmp", File.dirname(__FILE__))
  end
end
