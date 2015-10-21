require 'spec_helper'

RSpec.configure { |config|
  config.expect_with(:rspec) { |c|
    c.syntax = :should
  }
}

RSpec.describe(CommonAssert) {
  include CommonAssert

  it('#common_assert_equal should work') {
    common_assert_equal(true, true)

    lambda {
      common_assert_equal(true, false)
    }.should raise_error(RSpec::Expectations::ExpectationNotMetError)
  }
}
