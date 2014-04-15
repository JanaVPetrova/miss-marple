require "test_helper"

class Sweeper::ComparerTest < MiniTest::Unit::TestCase
  def setup
    @parsed_filenames = ["ui/orange.js.coffee", "app.js.coffee"]
    @searched_filenames = @parsed_filenames + ["extra-file"]

    @comparer = Sweeper::Comparer.new(@parsed_filenames, @searched_filenames)
  end

  def test_should_compare_filenames
    assert { @comparer.files.class == Array }
    assert { @comparer.files == (@searched_filenames - @parsed_filenames) }
  end
end