class GemfileParser
  attr_reader :sources, :gems

  def initialize
    @sources = []
    @gems = []
    @current_groups = []
  end

  def source(address)
    @sources << address
  end

  def gem(name, version = nil)
    @gems << { name: name, version: version, groups: @current_groups }
  end

  def group(*names, &block)
    @current_groups = names
    yield
  ensure
    @current_groups = []
  end
end
