lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pacto/version'

Gem::Specification.new do |gem|
  gem.name          = 'pacto-server'
  gem.version       = Pacto::VERSION
  gem.authors       = ['ThoughtWorks']
  gem.email         = ['pacto-gem@googlegroups.com']
  gem.description   = "Pacto Server let's you run Pacto as a standalone server to arbitrate contract disputes between a service provider and one or more consumers in any programming language. It's Pacto beyond Ruby"
  gem.summary       = 'Polyglot Integration Contract Testing server'
  gem.homepage      = 'http://thoughtworks.github.io/pacto/'
  gem.license       = 'MIT'

  gem.files         = `git ls-files -- bin/pacto-server lib/pacto/server.rb lib/pacto/server`.split($/) # rubocop:disable SpecialGlobalVars
  gem.executables   = gem.files.grep(/^bin\//).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(/^(test|spec|features)\//)
  gem.require_paths = ['lib']

  gem.add_dependency 'pacto', Pacto::VERSION
  gem.add_dependency 'reel', '~> 0.5'
end
