class CommonAssert
  def initialize
    @assert_syntax = if defined?(RSpec)
      if RSpec.configuration.expect_with[0].configuration.syntax.include?(:expect)
        :rspec_expect
      else
        :rspec_should
      end
    else
      :test_unit
    end
  end

  def equal(value, expected)
    case @assert_syntax
    when :rspec_expect
      expect(value).to eq(expected)
    when :rspec_should
      value.should == expected
    else
      assert_equal(expected, value)
    end
  end
end
