require "test_helper"

class Sweeper::SearcherTest < MiniTest::Unit::TestCase
  def test_should_search_files
    searcher = Sweeper::Searcher.new(["test/fixtures"])

    assert { searcher.filenames.class == Array }
    # FIXME
    assert { searcher.filenames.length == 2 }
  end
end