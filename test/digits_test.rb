require 'test/unit'
require_relative '../digits'
=begin

Test.describe("Persistence") do
  Test.it("Basic tests") do
    Test.assert_equals(persistence(39),3)
    Test.assert_equals(persistence(4),0)
    Test.assert_equals(persistence(25),2)
    Test.assert_equals(persistence(999),4)
  end
end
=end

class TestDigits < Test::Unit::TestCase

  def test_should_equals
    assert_equal(persistence(39),3)
    assert_equal(persistence(4),0)
    assert_equal(persistence(25),2)
    assert_equal(persistence(999),4)
  end

  def test_should_be_no_equals
    assert_equal(persistence(39),4)
    assert_equal(persistence(4),1)
    assert_equal(persistence(25),3)
    assert_equal(persistence(999),5)
  end

end