# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logux_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'logux_rails'
  spec.version       = LoguxRails::VERSION
  spec.authors       = ['WildDima']
  spec.email         = ['dtopornin@gmail.com']

  spec.summary       = 'Logux client for rails'
  spec.description   = 'Logux client for rails'
  spec.homepage      = 'https://github.com/logux'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
