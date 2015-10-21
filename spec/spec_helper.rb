require 'common_assert'
require 'pry'

def configure_rspec_expectation_syntax(syntax)
  RSpec.configure { |config|
    config.expect_with(:rspec) { |c|
      c.syntax = syntax
    }
  }
end
