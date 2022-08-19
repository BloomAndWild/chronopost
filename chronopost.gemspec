# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'chronopost/version'

Gem::Specification.new do |spec|
  spec.name = 'chronopost'
  spec.version = Chronopost::VERSION

  spec.authors = ['Žilvinas Verseckas']
  spec.email = ['zilvinas.verseckas@vinted.com']

  spec.summary = 'Chronopost client'
  spec.description = 'An interface for the Chronopost Web Service'
  spec.homepage = 'https://github.com/vinted/chronopost'
  spec.required_ruby_version = '>= 3.1.2'

  spec.license = 'MIT'

  spec.files =
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activesupport'
  spec.add_runtime_dependency 'interactor-initializer', '~> 0.1'
  spec.add_runtime_dependency 'savon', '>= 2.12.0'
  spec.add_runtime_dependency 'net-smtp' # Required by savon with ruby 3.1 and above

  spec.add_development_dependency 'savon', '>= 2.12.0'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'factory_bot'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'yard'
end
