Gem::Specification.new do |gem|
  gem.name = 'common_assert'
  gem.version = '0.0.1'
  gem.summary = 'assertion with test unit or rspec'
  gem.author = 'Lihan Li'
  gem.email = 'frankieteardrop@gmail.com'
  gem.homepage = 'https://github.com/lihanli/common_assert'

  gem.add_development_dependency('rspec', '3.3.0')
  gem.add_development_dependency('minitest-reporters', '1.1.4')
  gem.add_development_dependency('pry')

  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
end
