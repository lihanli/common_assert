task(:test) {
  [
    'ruby test/*',
    'rspec spec/specs/common_assert_expect_spec.rb',
    'rspec spec/specs/common_assert_should_spec.rb',
  ].each do |cmd|
    system("bundle exec #{cmd}")
  end
}
