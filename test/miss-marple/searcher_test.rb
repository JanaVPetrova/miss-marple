require "test_helper"

class MissMarple::SearcherTest < MiniTest::Unit::TestCase
  def test_should_search_files
    searcher = MissMarple::Searcher.search(["test/fixtures"])

    assert { searcher.class == Array }
    assert { !searcher.empty? }
  end
end