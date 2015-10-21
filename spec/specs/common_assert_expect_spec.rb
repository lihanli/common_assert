require 'spec_helper'

configure_rspec_expectation_syntax(:expect)

RSpec.describe(CommonAssert) {
  include CommonAssert

  it('#common_assert_equal should work') {
    common_assert_equal(true, true)

    expect {
      common_assert_equal(true, false)
    }.to raise_error(RSpec::Expectations::ExpectationNotMetError)
  }
}
