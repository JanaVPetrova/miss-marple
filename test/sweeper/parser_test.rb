require "test_helper"

class Sweeper::ParserTest < MiniTest::Unit::TestCase
  def test_should_tun_tests
    assert { true == true }
  end

  def test_should_read_manifest
    c = Sweeper::Parser.parse("test/fixtures/tree/manifest.css")

    assert { c.class == Array }
    assert { !c.empty? }
  end
end