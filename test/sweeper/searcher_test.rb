require "test_helper"

class Sweeper::SearcherTest < MiniTest::Unit::TestCase
  def test_should_search_files
    searcher = Sweeper::Searcher.search(["test/fixtures"])

    assert { searcher.class == Array }
    assert { !searcher.empty? }
  end
end