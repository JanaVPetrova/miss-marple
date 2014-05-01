require "test_helper"

class MissMarple::ComparerTest < MiniTest::Unit::TestCase
  def setup
    @parsed_filenames = ["ui/orange", "app"]
    @searched_filenames = @parsed_filenames + ["extra-file"]

    @compared = MissMarple::Comparer.compare(@parsed_filenames, @searched_filenames)
  end

  def test_should_compare_filenames
    assert { @compared.class == Array }
    assert { @compared == (@searched_filenames - @parsed_filenames) }
  end
end