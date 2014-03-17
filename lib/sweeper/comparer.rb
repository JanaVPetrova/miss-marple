class Sweeper::Comparer
  attr_reader :files

  def initialize(parsed, searchred)
    @files = searchred - parsed
  end
end