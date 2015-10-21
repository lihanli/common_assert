module CommonAssert
  def self.included(klass)
    assert_code = if defined?(RSpec)
      if RSpec.configuration.expect_with[0].configuration.syntax.include?(:expect)
        'expect(value).to eq(expected)'
      else
        'value.should == expected'
      end
    else
      'assert_equal(expected, value)'
    end

    class_eval %Q(
      def common_assert_equal(value, expected)
        #{assert_code}
      end
    )
  end
end
