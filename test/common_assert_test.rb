require 'common_assert'
require 'pry'
require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

class CommonAssertTest < Minitest::Test
  include CommonAssert

  def test_equal
    common_assert_equal(true, true)

    assert_raises(Minitest::Assertion) {
      common_assert_equal(true, false)
    }
  end
end
