require "test_helper"

class Sweeper::ParserTest < MiniTest::Unit::TestCase
  def test_should_tun_tests
    assert { true == true }
  end

  def test_should_read_manifest
    c = Sweeper::Parser.parse("test/fixtures/app.css")

    assert { c.class == Array }
    assert { c.length == 2 }
  end
end